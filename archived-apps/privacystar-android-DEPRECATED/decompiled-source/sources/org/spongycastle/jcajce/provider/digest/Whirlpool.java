package org.spongycastle.jcajce.provider.digest;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.digests.WhirlpoolDigest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/Whirlpool.class */
public class Whirlpool {

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/Whirlpool$Digest.class */
    public static class Digest extends BCMessageDigest implements Cloneable {
        public Digest() {
            super(new WhirlpoolDigest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Digest digest = (Digest) super.clone();
            digest.digest = new WhirlpoolDigest((WhirlpoolDigest) this.digest);
            return digest;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/Whirlpool$HashMac.class */
    public static class HashMac extends BaseMac {
        public HashMac() {
            super(new HMac(new WhirlpoolDigest()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/Whirlpool$KeyGenerator.class */
    public static class KeyGenerator extends BaseKeyGenerator {
        public KeyGenerator() {
            super("HMACWHIRLPOOL", 512, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/Whirlpool$Mappings.class */
    public static class Mappings extends DigestAlgorithmProvider {
        private static final String PREFIX = Whirlpool.class.getName();

        @Override // org.spongycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("MessageDigest.WHIRLPOOL", PREFIX + "$Digest");
            addHMACAlgorithm(configurableProvider, "WHIRLPOOL", PREFIX + "$HashMac", PREFIX + "$KeyGenerator");
        }
    }

    private Whirlpool() {
    }
}
