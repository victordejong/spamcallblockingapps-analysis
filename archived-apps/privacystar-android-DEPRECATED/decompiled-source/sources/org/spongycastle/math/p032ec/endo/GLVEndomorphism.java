package org.spongycastle.math.p032ec.endo;

import java.math.BigInteger;
/* renamed from: org.spongycastle.math.ec.endo.GLVEndomorphism */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/endo/GLVEndomorphism.class */
public interface GLVEndomorphism extends ECEndomorphism {
    BigInteger[] decomposeScalar(BigInteger bigInteger);
}
