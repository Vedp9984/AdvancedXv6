import matplotlib.pyplot as plt
import re

# Read log data from file
log_file = 'scheduler_log.txt'
data = []
avg_rtime = None
avg_wtime = None

with open(log_file, 'r') as file:
    for line in file:
        # Match the log line indicating process transitions
        match = re.match(r'Time (\d+): Process (\d+) priority (\d+)', line)
        if match:
            time = int(match.group(1))       
            process_id = int(match.group(2)) # Extract process ID
            queue_id = int(match.group(3))   # Extract queue ID
            data.append((time, process_id, queue_id))  # Store the parsed data
        else:
            # Match the log line for average response and wait times
            avg_match = re.match(r'Average rtime (\d+), wtime (\d+)', line)
            if avg_match:
                avg_rtime = int(avg_match.group(1))  # Extract average response time
                avg_wtime = int(avg_match.group(2))  # Extract average wait time
                print(f'Extracted Average rtime: {avg_rtime}, Average wtime: {avg_wtime}')  # Debug print

# Parse the data for plotting
times = [d[0] for d in data]
process_ids = [d[1] for d in data]
queue_ids = [d[2] for d in data]


fig, ax = plt.subplots(figsize=(10, 6))  

for pid in set(process_ids):

    pid_times = [times[i] for i in range(len(times)) if process_ids[i] == pid]
    pid_queues = [queue_ids[i] for i in range(len(times)) if process_ids[i] == pid]
    

    ax.step(pid_times, pid_queues, where='post', label=f'Process {pid}')


ax.set_xlabel('Number of Ticks')
ax.set_ylabel('Queue Number')
ax.set_title('MLFQ Scheduler Queue Transitions')
ax.legend()


if avg_rtime is not None and avg_wtime is not None:
    annotation_text = f'Average rtime: {avg_rtime}, Average wtime: {avg_wtime}'
    ax.text(0.5, 0.95, annotation_text, transform=ax.transAxes, 
            fontsize=12, verticalalignment='top', horizontalalignment='center',
            bbox=dict(facecolor='black', alpha=0.8))

plt.tight_layout() 
plt.grid(True)  
plt.show()
