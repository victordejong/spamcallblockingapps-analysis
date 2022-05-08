package org.spongycastle.jcajce.provider.symmetric;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.asn1.kisa.KISAObjectIdentifiers;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.SEEDEngine;
import org.spongycastle.crypto.engines.SEEDWrapEngine;
import org.spongycastle.crypto.generators.Poly1305KeyGenerator;
import org.spongycastle.crypto.macs.CMac;
import org.spongycastle.crypto.macs.GMac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.GCMBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BlockCipherProvider;
import org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/SEED.class */
public final class SEED {

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/SEED$AlgParamGen.class */
    public static class AlgParamGen extends BaseAlgorithmParameterGenerator {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        protected AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.random == null) {
                this.random = new SecureRandom();
            }
            this.random.nextBytes(bArr);
            try {
                AlgorithmParameters createParametersInstance = createParametersInstance("SEED");
                createParametersInstance.init(new IvParameterSpec(bArr));
                return createParametersInstance;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        protected void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for SEED parameter generation.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/SEED$AlgParams.class */
    public static class AlgParams extends IvAlgorithmParameters {
        @Override // org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters, java.security.AlgorithmParametersSpi
        protected String engineToString() {
            return "SEED IV";
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/SEED$CBC.class */
    public static class CBC extends BaseBlockCipher {
        public CBC() {
            super(new CBCBlockCipher(new SEEDEngine()), 128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/SEED$CMAC.class */
    public static class CMAC extends BaseMac {
        public CMAC() {
            super(new CMac(new SEEDEngine()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/SEED$ECB.class */
    public static class ECB extends BaseBlockCipher {
        public ECB() {
            super(new BlockCipherProvider() { // from class: org.spongycastle.jcajce.provider.symmetric.SEED.ECB.1
                @Override // org.spongycastle.jcajce.provider.symmetric.util.BlockCipherProvider
                public BlockCipher get() {
                    return new SEEDEngine();
                }
            });
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/SEED$GMAC.class */
    public static class GMAC extends BaseMac {
        public GMAC() {
            super(new GMac(new GCMBlockCipher(new SEEDEngine())));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/SEED$KeyGen.class */
    public static class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("SEED", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/SEED$Mappings.class */
    public static class Mappings extends SymmetricAlgorithmProvider {
        private static final String PREFIX = SEED.class.getName();

        @Override // org.spongycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("AlgorithmParameters.SEED", PREFIX + "$AlgParams");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + KISAObjectIdentifiers.id_seedCBC, "SEED");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.SEED", PREFIX + "$AlgParamGen");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + KISAObjectIdentifiers.id_seedCBC, "SEED");
            configurableProvider.addAlgorithm("Cipher.SEED", PREFIX + "$ECB");
            configurableProvider.addAlgorithm("Cipher", KISAObjectIdentifiers.id_seedCBC, PREFIX + "$CBC");
            configurableProvider.addAlgorithm("Cipher.SEEDWRAP", PREFIX + "$Wrap");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", KISAObjectIdentifiers.id_npki_app_cmsSeed_wrap, "SEEDWRAP");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.SEEDKW", "SEEDWRAP");
            configurableProvider.addAlgorithm("KeyGenerator.SEED", PREFIX + "$KeyGen");
            configurableProvider.addAlgorithm("KeyGenerator", KISAObjectIdentifiers.id_seedCBC, PREFIX + "$KeyGen");
            configurableProvider.addAlgorithm("KeyGenerator", KISAObjectIdentifiers.id_npki_app_cmsSeed_wrap, PREFIX + "$KeyGen");
            addCMacAlgorithm(configurableProvider, "SEED", PREFIX + "$CMAC", PREFIX + "$KeyGen");
            addGMacAlgorithm(configurableProvider, "SEED", PREFIX + "$GMAC", PREFIX + "$KeyGen");
            addPoly1305Algorithm(configurableProvider, "SEED", PREFIX + "$Poly1305", PREFIX + "$Poly1305KeyGen");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/SEED$Poly1305.class */
    public static class Poly1305 extends BaseMac {
        public Poly1305() {
            super(new org.spongycastle.crypto.macs.Poly1305(new SEEDEngine()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/SEED$Poly1305KeyGen.class */
    public static class Poly1305KeyGen extends BaseKeyGenerator {
        public Poly1305KeyGen() {
            super("Poly1305-SEED", 256, new Poly1305KeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/SEED$Wrap.class */
    public static class Wrap extends BaseWrapCipher {
        public Wrap() {
            super(new SEEDWrapEngine());
        }
    }

    private SEED() {
    }
}
