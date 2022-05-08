package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.Grain128Engine;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseStreamCipher;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Grain128.class */
public final class Grain128 {

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Grain128$Base.class */
    public static class Base extends BaseStreamCipher {
        public Base() {
            super(new Grain128Engine(), 12);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Grain128$KeyGen.class */
    public static class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("Grain128", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Grain128$Mappings.class */
    public static class Mappings extends AlgorithmProvider {
        private static final String PREFIX = Grain128.class.getName();

        @Override // org.spongycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("Cipher.Grain128", PREFIX + "$Base");
            configurableProvider.addAlgorithm("KeyGenerator.Grain128", PREFIX + "$KeyGen");
        }
    }

    private Grain128() {
    }
}
