package org.spongycastle.jcajce.provider.symmetric;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.p021ua.UAObjectIdentifiers;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.DSTU7624Engine;
import org.spongycastle.crypto.engines.DSTU7624WrapEngine;
import org.spongycastle.crypto.macs.KGMac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.CFBBlockCipher;
import org.spongycastle.crypto.modes.KCCMBlockCipher;
import org.spongycastle.crypto.modes.KCTRBlockCipher;
import org.spongycastle.crypto.modes.KGCMBlockCipher;
import org.spongycastle.crypto.modes.OFBBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BlockCipherProvider;
import org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624.class */
public class DSTU7624 {

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$AlgParamGen.class */
    public static class AlgParamGen extends BaseAlgorithmParameterGenerator {
        private final int ivLength;

        public AlgParamGen(int i) {
            this.ivLength = i / 8;
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        protected AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[this.ivLength];
            if (this.random == null) {
                this.random = new SecureRandom();
            }
            this.random.nextBytes(bArr);
            try {
                AlgorithmParameters createParametersInstance = createParametersInstance("DSTU7624");
                createParametersInstance.init(new IvParameterSpec(bArr));
                return createParametersInstance;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        protected void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DSTU7624 parameter generation.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$AlgParamGen128.class */
    public static class AlgParamGen128 extends AlgParamGen {
        AlgParamGen128() {
            super(128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$AlgParamGen256.class */
    public static class AlgParamGen256 extends AlgParamGen {
        AlgParamGen256() {
            super(256);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$AlgParamGen512.class */
    public static class AlgParamGen512 extends AlgParamGen {
        AlgParamGen512() {
            super(512);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$AlgParams.class */
    public static class AlgParams extends IvAlgorithmParameters {
        @Override // org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters, java.security.AlgorithmParametersSpi
        protected String engineToString() {
            return "DSTU7624 IV";
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$CBC128.class */
    public static class CBC128 extends BaseBlockCipher {
        public CBC128() {
            super(new CBCBlockCipher(new DSTU7624Engine(128)), 128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$CBC256.class */
    public static class CBC256 extends BaseBlockCipher {
        public CBC256() {
            super(new CBCBlockCipher(new DSTU7624Engine(256)), 256);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$CBC512.class */
    public static class CBC512 extends BaseBlockCipher {
        public CBC512() {
            super(new CBCBlockCipher(new DSTU7624Engine(512)), 512);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$CCM128.class */
    public static class CCM128 extends BaseBlockCipher {
        public CCM128() {
            super(new KCCMBlockCipher(new DSTU7624Engine(128)));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$CCM256.class */
    public static class CCM256 extends BaseBlockCipher {
        public CCM256() {
            super(new KCCMBlockCipher(new DSTU7624Engine(256)));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$CCM512.class */
    public static class CCM512 extends BaseBlockCipher {
        public CCM512() {
            super(new KCCMBlockCipher(new DSTU7624Engine(512)));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$CFB128.class */
    public static class CFB128 extends BaseBlockCipher {
        public CFB128() {
            super(new BufferedBlockCipher(new CFBBlockCipher(new DSTU7624Engine(128), 128)), 128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$CFB256.class */
    public static class CFB256 extends BaseBlockCipher {
        public CFB256() {
            super(new BufferedBlockCipher(new CFBBlockCipher(new DSTU7624Engine(256), 256)), 256);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$CFB512.class */
    public static class CFB512 extends BaseBlockCipher {
        public CFB512() {
            super(new BufferedBlockCipher(new CFBBlockCipher(new DSTU7624Engine(512), 512)), 512);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$CTR128.class */
    public static class CTR128 extends BaseBlockCipher {
        public CTR128() {
            super(new BufferedBlockCipher(new KCTRBlockCipher(new DSTU7624Engine(128))), 128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$CTR256.class */
    public static class CTR256 extends BaseBlockCipher {
        public CTR256() {
            super(new BufferedBlockCipher(new KCTRBlockCipher(new DSTU7624Engine(256))), 256);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$CTR512.class */
    public static class CTR512 extends BaseBlockCipher {
        public CTR512() {
            super(new BufferedBlockCipher(new KCTRBlockCipher(new DSTU7624Engine(512))), 512);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$ECB.class */
    public static class ECB extends BaseBlockCipher {
        public ECB() {
            super(new BlockCipherProvider() { // from class: org.spongycastle.jcajce.provider.symmetric.DSTU7624.ECB.1
                @Override // org.spongycastle.jcajce.provider.symmetric.util.BlockCipherProvider
                public BlockCipher get() {
                    return new DSTU7624Engine(128);
                }
            });
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$ECB128.class */
    public static class ECB128 extends BaseBlockCipher {
        public ECB128() {
            super(new DSTU7624Engine(128));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$ECB256.class */
    public static class ECB256 extends BaseBlockCipher {
        public ECB256() {
            super(new DSTU7624Engine(256));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$ECB512.class */
    public static class ECB512 extends BaseBlockCipher {
        public ECB512() {
            super(new DSTU7624Engine(512));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$ECB_128.class */
    public static class ECB_128 extends BaseBlockCipher {
        public ECB_128() {
            super(new DSTU7624Engine(128));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$ECB_256.class */
    public static class ECB_256 extends BaseBlockCipher {
        public ECB_256() {
            super(new DSTU7624Engine(256));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$ECB_512.class */
    public static class ECB_512 extends BaseBlockCipher {
        public ECB_512() {
            super(new DSTU7624Engine(512));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$GCM128.class */
    public static class GCM128 extends BaseBlockCipher {
        public GCM128() {
            super(new KGCMBlockCipher(new DSTU7624Engine(128)));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$GCM256.class */
    public static class GCM256 extends BaseBlockCipher {
        public GCM256() {
            super(new KGCMBlockCipher(new DSTU7624Engine(256)));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$GCM512.class */
    public static class GCM512 extends BaseBlockCipher {
        public GCM512() {
            super(new KGCMBlockCipher(new DSTU7624Engine(512)));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$GMAC.class */
    public static class GMAC extends BaseMac {
        public GMAC() {
            super(new KGMac(new KGCMBlockCipher(new DSTU7624Engine(128)), 128));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$GMAC128.class */
    public static class GMAC128 extends BaseMac {
        public GMAC128() {
            super(new KGMac(new KGCMBlockCipher(new DSTU7624Engine(128)), 128));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$GMAC256.class */
    public static class GMAC256 extends BaseMac {
        public GMAC256() {
            super(new KGMac(new KGCMBlockCipher(new DSTU7624Engine(256)), 256));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$GMAC512.class */
    public static class GMAC512 extends BaseMac {
        public GMAC512() {
            super(new KGMac(new KGCMBlockCipher(new DSTU7624Engine(512)), 512));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$KeyGen.class */
    public static class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            this(256);
        }

        public KeyGen(int i) {
            super("DSTU7624", i, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$KeyGen128.class */
    public static class KeyGen128 extends KeyGen {
        public KeyGen128() {
            super(128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$KeyGen256.class */
    public static class KeyGen256 extends KeyGen {
        public KeyGen256() {
            super(256);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$KeyGen512.class */
    public static class KeyGen512 extends KeyGen {
        public KeyGen512() {
            super(512);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$Mappings.class */
    public static class Mappings extends SymmetricAlgorithmProvider {
        private static final String PREFIX = DSTU7624.class.getName();

        @Override // org.spongycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("AlgorithmParameters.DSTU7624", PREFIX + "$AlgParams128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier = UAObjectIdentifiers.dstu7624cbc_128;
            configurableProvider.addAlgorithm("AlgorithmParameters", aSN1ObjectIdentifier, PREFIX + "$AlgParams");
            ASN1ObjectIdentifier aSN1ObjectIdentifier2 = UAObjectIdentifiers.dstu7624cbc_256;
            configurableProvider.addAlgorithm("AlgorithmParameters", aSN1ObjectIdentifier2, PREFIX + "$AlgParams");
            ASN1ObjectIdentifier aSN1ObjectIdentifier3 = UAObjectIdentifiers.dstu7624cbc_512;
            configurableProvider.addAlgorithm("AlgorithmParameters", aSN1ObjectIdentifier3, PREFIX + "$AlgParams");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.DSTU7624", PREFIX + "$AlgParamGen128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier4 = UAObjectIdentifiers.dstu7624cbc_128;
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator", aSN1ObjectIdentifier4, PREFIX + "$AlgParamGen128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier5 = UAObjectIdentifiers.dstu7624cbc_256;
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator", aSN1ObjectIdentifier5, PREFIX + "$AlgParamGen256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier6 = UAObjectIdentifiers.dstu7624cbc_512;
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator", aSN1ObjectIdentifier6, PREFIX + "$AlgParamGen512");
            configurableProvider.addAlgorithm("Cipher.DSTU7624", PREFIX + "$ECB_128");
            configurableProvider.addAlgorithm("Cipher.DSTU7624-128", PREFIX + "$ECB_128");
            configurableProvider.addAlgorithm("Cipher.DSTU7624-256", PREFIX + "$ECB_256");
            configurableProvider.addAlgorithm("Cipher.DSTU7624-512", PREFIX + "$ECB_512");
            ASN1ObjectIdentifier aSN1ObjectIdentifier7 = UAObjectIdentifiers.dstu7624ecb_128;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier7, PREFIX + "$ECB128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier8 = UAObjectIdentifiers.dstu7624ecb_256;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier8, PREFIX + "$ECB256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier9 = UAObjectIdentifiers.dstu7624ecb_512;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier9, PREFIX + "$ECB512");
            ASN1ObjectIdentifier aSN1ObjectIdentifier10 = UAObjectIdentifiers.dstu7624cbc_128;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier10, PREFIX + "$CBC128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier11 = UAObjectIdentifiers.dstu7624cbc_256;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier11, PREFIX + "$CBC256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier12 = UAObjectIdentifiers.dstu7624cbc_512;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier12, PREFIX + "$CBC512");
            ASN1ObjectIdentifier aSN1ObjectIdentifier13 = UAObjectIdentifiers.dstu7624ofb_128;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier13, PREFIX + "$OFB128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier14 = UAObjectIdentifiers.dstu7624ofb_256;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier14, PREFIX + "$OFB256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier15 = UAObjectIdentifiers.dstu7624ofb_512;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier15, PREFIX + "$OFB512");
            ASN1ObjectIdentifier aSN1ObjectIdentifier16 = UAObjectIdentifiers.dstu7624cfb_128;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier16, PREFIX + "$CFB128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier17 = UAObjectIdentifiers.dstu7624cfb_256;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier17, PREFIX + "$CFB256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier18 = UAObjectIdentifiers.dstu7624cfb_512;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier18, PREFIX + "$CFB512");
            ASN1ObjectIdentifier aSN1ObjectIdentifier19 = UAObjectIdentifiers.dstu7624ctr_128;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier19, PREFIX + "$CTR128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier20 = UAObjectIdentifiers.dstu7624ctr_256;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier20, PREFIX + "$CTR256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier21 = UAObjectIdentifiers.dstu7624ctr_512;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier21, PREFIX + "$CTR512");
            ASN1ObjectIdentifier aSN1ObjectIdentifier22 = UAObjectIdentifiers.dstu7624ccm_128;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier22, PREFIX + "$CCM128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier23 = UAObjectIdentifiers.dstu7624ccm_256;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier23, PREFIX + "$CCM256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier24 = UAObjectIdentifiers.dstu7624ccm_512;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier24, PREFIX + "$CCM512");
            configurableProvider.addAlgorithm("Cipher.DSTU7624KW", PREFIX + "$Wrap");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.DSTU7624WRAP", "DSTU7624KW");
            configurableProvider.addAlgorithm("Cipher.DSTU7624-128KW", PREFIX + "$Wrap128");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher." + UAObjectIdentifiers.dstu7624kw_128.getId(), "DSTU7624-128KW");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.DSTU7624-128WRAP", "DSTU7624-128KW");
            configurableProvider.addAlgorithm("Cipher.DSTU7624-256KW", PREFIX + "$Wrap256");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher." + UAObjectIdentifiers.dstu7624kw_256.getId(), "DSTU7624-256KW");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.DSTU7624-256WRAP", "DSTU7624-256KW");
            configurableProvider.addAlgorithm("Cipher.DSTU7624-512KW", PREFIX + "$Wrap512");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher." + UAObjectIdentifiers.dstu7624kw_512.getId(), "DSTU7624-512KW");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.DSTU7624-512WRAP", "DSTU7624-512KW");
            configurableProvider.addAlgorithm("Mac.DSTU7624GMAC", PREFIX + "$GMAC");
            configurableProvider.addAlgorithm("Mac.DSTU7624-128GMAC", PREFIX + "$GMAC128");
            configurableProvider.addAlgorithm("Alg.Alias.Mac." + UAObjectIdentifiers.dstu7624gmac_128.getId(), "DSTU7624-128GMAC");
            configurableProvider.addAlgorithm("Mac.DSTU7624-256GMAC", PREFIX + "$GMAC256");
            configurableProvider.addAlgorithm("Alg.Alias.Mac." + UAObjectIdentifiers.dstu7624gmac_256.getId(), "DSTU7624-256GMAC");
            configurableProvider.addAlgorithm("Mac.DSTU7624-512GMAC", PREFIX + "$GMAC512");
            configurableProvider.addAlgorithm("Alg.Alias.Mac." + UAObjectIdentifiers.dstu7624gmac_512.getId(), "DSTU7624-512GMAC");
            configurableProvider.addAlgorithm("KeyGenerator.DSTU7624", PREFIX + "$KeyGen");
            ASN1ObjectIdentifier aSN1ObjectIdentifier25 = UAObjectIdentifiers.dstu7624kw_128;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier25, PREFIX + "$KeyGen128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier26 = UAObjectIdentifiers.dstu7624kw_256;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier26, PREFIX + "$KeyGen256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier27 = UAObjectIdentifiers.dstu7624kw_512;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier27, PREFIX + "$KeyGen512");
            ASN1ObjectIdentifier aSN1ObjectIdentifier28 = UAObjectIdentifiers.dstu7624ecb_128;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier28, PREFIX + "$KeyGen128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier29 = UAObjectIdentifiers.dstu7624ecb_256;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier29, PREFIX + "$KeyGen256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier30 = UAObjectIdentifiers.dstu7624ecb_512;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier30, PREFIX + "$KeyGen512");
            ASN1ObjectIdentifier aSN1ObjectIdentifier31 = UAObjectIdentifiers.dstu7624cbc_128;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier31, PREFIX + "$KeyGen128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier32 = UAObjectIdentifiers.dstu7624cbc_256;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier32, PREFIX + "$KeyGen256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier33 = UAObjectIdentifiers.dstu7624cbc_512;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier33, PREFIX + "$KeyGen512");
            ASN1ObjectIdentifier aSN1ObjectIdentifier34 = UAObjectIdentifiers.dstu7624ofb_128;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier34, PREFIX + "$KeyGen128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier35 = UAObjectIdentifiers.dstu7624ofb_256;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier35, PREFIX + "$KeyGen256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier36 = UAObjectIdentifiers.dstu7624ofb_512;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier36, PREFIX + "$KeyGen512");
            ASN1ObjectIdentifier aSN1ObjectIdentifier37 = UAObjectIdentifiers.dstu7624cfb_128;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier37, PREFIX + "$KeyGen128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier38 = UAObjectIdentifiers.dstu7624cfb_256;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier38, PREFIX + "$KeyGen256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier39 = UAObjectIdentifiers.dstu7624cfb_512;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier39, PREFIX + "$KeyGen512");
            ASN1ObjectIdentifier aSN1ObjectIdentifier40 = UAObjectIdentifiers.dstu7624ctr_128;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier40, PREFIX + "$KeyGen128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier41 = UAObjectIdentifiers.dstu7624ctr_256;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier41, PREFIX + "$KeyGen256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier42 = UAObjectIdentifiers.dstu7624ctr_512;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier42, PREFIX + "$KeyGen512");
            ASN1ObjectIdentifier aSN1ObjectIdentifier43 = UAObjectIdentifiers.dstu7624ccm_128;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier43, PREFIX + "$KeyGen128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier44 = UAObjectIdentifiers.dstu7624ccm_256;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier44, PREFIX + "$KeyGen256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier45 = UAObjectIdentifiers.dstu7624ccm_512;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier45, PREFIX + "$KeyGen512");
            ASN1ObjectIdentifier aSN1ObjectIdentifier46 = UAObjectIdentifiers.dstu7624gmac_128;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier46, PREFIX + "$KeyGen128");
            ASN1ObjectIdentifier aSN1ObjectIdentifier47 = UAObjectIdentifiers.dstu7624gmac_256;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier47, PREFIX + "$KeyGen256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier48 = UAObjectIdentifiers.dstu7624gmac_512;
            configurableProvider.addAlgorithm("KeyGenerator", aSN1ObjectIdentifier48, PREFIX + "$KeyGen512");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$OFB128.class */
    public static class OFB128 extends BaseBlockCipher {
        public OFB128() {
            super(new BufferedBlockCipher(new OFBBlockCipher(new DSTU7624Engine(128), 128)), 128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$OFB256.class */
    public static class OFB256 extends BaseBlockCipher {
        public OFB256() {
            super(new BufferedBlockCipher(new OFBBlockCipher(new DSTU7624Engine(256), 256)), 256);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$OFB512.class */
    public static class OFB512 extends BaseBlockCipher {
        public OFB512() {
            super(new BufferedBlockCipher(new OFBBlockCipher(new DSTU7624Engine(512), 512)), 512);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$Wrap.class */
    public static class Wrap extends BaseWrapCipher {
        public Wrap() {
            super(new DSTU7624WrapEngine(128));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$Wrap128.class */
    public static class Wrap128 extends BaseWrapCipher {
        public Wrap128() {
            super(new DSTU7624WrapEngine(128));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$Wrap256.class */
    public static class Wrap256 extends BaseWrapCipher {
        public Wrap256() {
            super(new DSTU7624WrapEngine(256));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/DSTU7624$Wrap512.class */
    public static class Wrap512 extends BaseWrapCipher {
        public Wrap512() {
            super(new DSTU7624WrapEngine(512));
        }
    }

    private DSTU7624() {
    }
}
