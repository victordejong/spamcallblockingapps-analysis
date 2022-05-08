package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.Salsa20Engine;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseStreamCipher;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Salsa20.class */
public final class Salsa20 {

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Salsa20$Base.class */
    public static class Base extends BaseStreamCipher {
        public Base() {
            super(new Salsa20Engine(), 8);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Salsa20$KeyGen.class */
    public static class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("Salsa20", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Salsa20$Mappings.class */
    public static class Mappings extends AlgorithmProvider {
        private static final String PREFIX = Salsa20.class.getName();

        @Override // org.spongycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("Cipher.SALSA20", PREFIX + "$Base");
            configurableProvider.addAlgorithm("KeyGenerator.SALSA20", PREFIX + "$KeyGen");
        }
    }

    private Salsa20() {
    }
}
