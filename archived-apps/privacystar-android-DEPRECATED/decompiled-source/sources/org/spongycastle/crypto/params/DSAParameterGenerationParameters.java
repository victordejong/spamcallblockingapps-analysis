package org.spongycastle.crypto.params;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/DSAParameterGenerationParameters.class */
public class DSAParameterGenerationParameters {
    public static final int DIGITAL_SIGNATURE_USAGE = 1;
    public static final int KEY_ESTABLISHMENT_USAGE = 2;
    private final int certainty;

    /* renamed from: l */
    private final int f1401l;

    /* renamed from: n */
    private final int f1402n;
    private final SecureRandom random;
    private final int usageIndex;

    public DSAParameterGenerationParameters(int i, int i2, int i3, SecureRandom secureRandom) {
        this(i, i2, i3, secureRandom, -1);
    }

    public DSAParameterGenerationParameters(int i, int i2, int i3, SecureRandom secureRandom, int i4) {
        this.f1401l = i;
        this.f1402n = i2;
        this.certainty = i3;
        this.usageIndex = i4;
        this.random = secureRandom;
    }

    public int getCertainty() {
        return this.certainty;
    }

    public int getL() {
        return this.f1401l;
    }

    public int getN() {
        return this.f1402n;
    }

    public SecureRandom getRandom() {
        return this.random;
    }

    public int getUsageIndex() {
        return this.usageIndex;
    }
}
