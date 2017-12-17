# Getting started

This repository provides the following features to the LTE LENA module of the network simulator 3 (ns-3).

* Ability to define the PRACH Configuration Index parameter. In the current version of the LTE module the PRACH Configuration Index is fixed and by default the User Equipements (UEs) can send an access-message request in any sub-frame of any frame.

## Requirements:
You should have the ns-3.25 installed. 

## How to use it?
Replace the files src/lte/model/* from your original installation of the ns3 with the ones available in this repository. Add the following line: 

	Config::SetDefault("ns3::LteEnbMac::PrachConfigIndex", UintegerValue(<PRACHConfigIndex>));

Where PRACHConfigIndex is a integer value ranging from 0 to 15.
