package org.spongycastle.dvcs;

import org.spongycastle.asn1.dvcs.TargetEtcChain;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/dvcs/TargetChain.class */
public class TargetChain {
    private final TargetEtcChain certs;

    public TargetChain(TargetEtcChain targetEtcChain) {
        this.certs = targetEtcChain;
    }

    public TargetEtcChain toASN1Structure() {
        return this.certs;
    }
}
