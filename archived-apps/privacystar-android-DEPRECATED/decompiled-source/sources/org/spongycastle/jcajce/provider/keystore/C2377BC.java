package org.spongycastle.jcajce.provider.keystore;

import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;
/* renamed from: org.spongycastle.jcajce.provider.keystore.BC */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/keystore/BC.class */
public class C2377BC {
    private static final String PREFIX = "org.spongycastle.jcajce.provider.keystore.bc.";

    /* renamed from: org.spongycastle.jcajce.provider.keystore.BC$Mappings */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/keystore/BC$Mappings.class */
    public static class Mappings extends AsymmetricAlgorithmProvider {
        @Override // org.spongycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("KeyStore.BKS", "org.spongycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$Std");
            configurableProvider.addAlgorithm("KeyStore.BKS-V1", "org.spongycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$Version1");
            configurableProvider.addAlgorithm("KeyStore.BouncyCastle", "org.spongycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$BouncyCastleStore");
            configurableProvider.addAlgorithm("Alg.Alias.KeyStore.UBER", "BouncyCastle");
            configurableProvider.addAlgorithm("Alg.Alias.KeyStore.BOUNCYCASTLE", "BouncyCastle");
            configurableProvider.addAlgorithm("Alg.Alias.KeyStore.spongycastle", "BouncyCastle");
        }
    }
}
