# HPC Toolset Tutorial

Tutorial for installing and configuring [OnDemand](https://openondemand.org/), [Open XDMoD](https://open.xdmod.org), and [ColdFront](http://coldfront.io): an HPC center management toolset.  

### Presented by:

[![OSC Logo https://osc.edu](docs/osc_logo.png)](https://osc.edu)  
[![CCR logo](docs/ccr_logo.jpg)](https://buffalo.edu/ccr)  
[![VT logo](docs/vt_logo.jpg)](https://arc.vt.edu/)  


This tutorial aims to demonstrate how three open source applications work in concert to provide a toolset for high performance computing (HPC) centers. ColdFront is an allocations management portal that provides users an easy way to request access to allocations for a Center's resources.  HPC systems staff configure the data center’s resources with attributes that tie ColdFront’s plug-ins to systems such as job schedulers, authentication/account management systems, system monitoring, and Open XDMoD.  Once the user's allocation is activated in ColdFront, they are able to access the resource using OnDemand, a web-based portal for accessing HPC services that removes the complexities of HPC system environments from the end-user.  Through OnDemand, users can upload and download files, create, edit, submit and monitor jobs, create and share apps, run GUI applications and connect to a terminal, all via a web browser, with no client software to install and configure.  The Open XDMoD portal provides a rich set of features, which are tailored to the role of the user.  Sample metrics provided by Open XDMoD include: number of jobs, CPUs consumed, wait time, and wall time, with minimum, maximum and the average of these metrics. Performance and quality of service metrics of the HPC infrastructure are also provided, along with application specific performance metrics (flop/s, IO rates, network metrics, etc) for all user applications running on a given resource.  With the new release of Open OnDemand, some user job metrics from Open XDMoD will be available right on the OnDemand dashboard!


## Tutorial Steps

[Requirements](docs/requirements.md)  
[Getting Started](docs/getting_started.md)  
[Accessing the Applications](docs/applications.md)  
[ColdFront](/coldfront/README.md)  
[Open XDMoD](/xdmod/README.md)  
[OnDemand](/ondemand/README.md)  

[Acknowledgments](docs/acknowledgments.md)


## Workshops
This tutorial will be presented at the following conferences:  
[PEARC20](https://pearc.acm.org/pearc20/) - [Schedule](https://sched.co/cnSs) - [Slides](https://osu.box.com/s/08qsrzk9hliaq2cg5tf9ptz103pb83vt)  
[Gateways 2020](https://sciencegateways.org/web/gateways2020)

## License

This tutorial is released under the GPLv3 license. See the LICENSE file.
