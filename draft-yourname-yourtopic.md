---
title: "Use Cases and Properties for Integrating Remote Attestation with Secure Channel Protocols"
abbrev: "RA + Secure Channels Use Cases"
docname: "draft-yourname-yourtopic-latest"
cat: info
ipr: trust200902
area: "Security"
kw:
  - TLS
  - remote attestation
  - RATS
  - EAT
author:
  -
    ins: "Your Name"
    org: "Your Org"
    email: "you@example.com"
normative:
  RFC8446: TLS13
  RFC9334: RATSarch
informative:
  RFC9261: ExportedAuthenticators
  RFC9711: ETA
---

--- abstract

This document describes use cases and desired properties for integrating remote attestation with secure channel
protocols, with an initial focus on TLS 1.3.

--- middle

# Introduction

Remote attestation (RA) enables a Verifier to obtain evidence about an Attester's state. When RA is combined with a
secure channel, additional properties may be achieved, such as cryptographic binding between evidence and a specific
channel instance.

# Terminology

The key words "MUST", "SHOULD", and "MAY" are to be interpreted as described in BCP 14.

# Use Cases

## UC-1: Server Attestation to Client

Text.

# Desired Properties

## P-1: Cryptographic Binding Between Channel and Attestation

Text.

# Security Considerations

Text.

# IANA Considerations

This document has no IANA actions.

--- back

# Acknowledgements

Text.
