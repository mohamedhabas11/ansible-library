# Ansible-library

Todo;

Manage state of nodes 

Treat changes to "ansible/plays/setup" a bit differently == vanilla state


how??

test nodes should auto-sync upon sucessfull build of Docker Image && match state of ansible playbook definition. 

- build docker image *
- track docker tags for troubleshooting && refrence. 
- define basic state of nodes.
- define roles that bring the playbook together.
- check against HW spec prior running playbook.


### Node spec:
**Reference Hardware**

The transaction weights in Polkadot are benchmarked on reference hardware. 

We ran the benchmark on VM instances of two major cloud providers: Google Cloud Platform **(GCP)** and Amazon Web Services **(AWS)**.

To be specific:

*     c2d-highcpu-8 VM instance on GCP.
*     c6id.2xlarge on AWS.

It is recommended that the hardware used to run the validators at least matches the specs of the reference hardware in order to ensure they are able to process all blocks in time. 
 
If you use subpar hardware you will possibly run into performance issues, get less **era points**, and potentially even get **slashed** :dagger_knife:.


**CPU**
x86-64 compatible;
Intel Ice Lake, or newer (Xeon or Core series); AMD Zen3, or newer (EPYC or Ryzen);
4 physical cores @ 3.4GHz;

Simultaneous multithreading disabled (Hyper-Threading on Intel, SMT on AMD);
Prefer **single-threaded performance over higher cores count**. A comparison of single-threaded performance can be found here.


**Storage**
An **NVMe SSD of 1 TB** (As it should be reasonably sized to deal with blockchain growth). An estimation of current chain snapshot sizes can be found here. In general, the latency is more important than the throughput.
*     Memory: 16GB DDR4 ECC.
*     System: Linux Kernel 5.16 or newer.
*     Network: The minimum symmetric networking speed is set to 500 Mbit/s (= 62.5 MB/s). 
This is required to support a large number of parachains and allow for proper congestion control in busy network situations.