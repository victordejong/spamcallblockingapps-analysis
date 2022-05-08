package org.spongycastle.openpgp.operator;

import org.spongycastle.openpgp.PGPException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PGPDigestCalculatorProvider.class */
public interface PGPDigestCalculatorProvider {
    PGPDigestCalculator get(int i) throws PGPException;
}
