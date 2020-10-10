---
title: Thesis defence: "Towards Spatial Reuse in Future WLANs: a Sequential Learning Approach"
collection: talk
type: "Talk"
permalink: /talks/2020-10-07-thesis-defence
venue: "Thesis defence - Universitat Pompeu Fabra"
date: 2020-10-07
location: "Online (Spain)"
---

**Abstract:** 
The Spatial Reuse (SR) operation is gaining momentum in the latest IEEE 802.11 family of standards due to the overwhelming requirements posed by next-generation wireless networks. In particular, the rising traffic requirements and the number of concurrent devices compromise the efficiency of increasingly crowded Wireless Local Area Networks (WLANs) and throw into question their decentralized nature. The SR operation, initially introduced by the IEEE 802.11ax-2021 amendment and further studied in IEEE 802.11be-2024, aims to increase the number of concurrent transmissions in an Overlapping Basic Service Set (OBSS) using sensitivity adjustment and transmit power control, thus improving spectral efficiency. Our analysis of the SR operation shows outstanding potential in improving the number of concurrent transmissions in crowded deployments, which contributed to enabling low-latency next-generation applications. However, the potential gains of SR are currently limited by the rigidity of the mechanism introduced for the 11ax, and the lack of coordination among BSSs implementing it. The SR operation is evolving towards coordinated schemes where different BSSs cooperate. Nevertheless, coordination entails communication and synchronization overhead, which impact on the performance of WLANs remains unknown. Moreover, the coordinated approach is incompatible with devices using previous IEEE 802.11 versions, potentially leading to degrading the performance of legacy networks. For those reasons, in this thesis, we start assessing the viability of decentralized SR, and thoroughly examine the main impediments and shortcomings that may result from it. We aim to shed light on the future shape of WLANs concerning SR optimization and whether their decentralized nature should be kept, or it is preferable to evolve towards coordinated and centralized deployments. To address the SR problem in a decentralized manner, we focus on Artificial Intelligence (AI) and propose using a class of sequential learning-based methods, referred to as Multi-Armed Bandits (MABs). The MAB framework suits the SR problem because it addresses the uncertainty caused by the concurrent operation of multiple devices (i.e., multi-player setting) and the lack of information in decentralized deployments. MABs can potentially overcome the complexity of the spatial interactions that result from devices modifying their sensitivity and transmit power. In this regard, our results indicate significant performance gains (up to 100% throughput improvement) in highly dense WLAN deployments. Nevertheless, the multi-agent setting raises several concerns that may compromise network devices' performance (definition of joint goals, time-horizon convergence, scalability aspects, or non-stationarity). Besides, our analysis of multi-agent SR encompasses an in-depth study of infrastructure aspects for next-generation AI-enabled networking.

**Thesis supervisors:**
Dr. Boris Bellalta (UPF), Dr. Cristina Cano (UOC), and Dr. Anders Jonsson (UPF)

**Thesis jury:**
President: Dr. Vicente Casares (Univ. Politécnica de Valencia) 
Secretary: Dr. Paolo Dini (CTTC) 
Member: Dr. David Malone (National University of Ireland at Maynooth) 

The presentation can be found at [https://github.com/fwilhelmi/thesis/blob/master/Presentation%20-%20LaTeX%20files/presentation.pdf](https://github.com/fwilhelmi/thesis/blob/master/Presentation%20-%20LaTeX%20files/presentation.pdf).