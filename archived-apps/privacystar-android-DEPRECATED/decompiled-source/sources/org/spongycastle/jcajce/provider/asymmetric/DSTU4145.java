package org.spongycastle.jcajce.provider.asymmetric;

import org.spongycastle.asn1.p021ua.UAObjectIdentifiers;
import org.spongycastle.jcajce.provider.asymmetric.dstu.KeyFactorySpi;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/DSTU4145.class */
public class DSTU4145 {
    private static final String PREFIX = "org.spongycastle.jcajce.provider.asymmetric.dstu.";

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/DSTU4145$Mappings.class */
    public static class Mappings extends AsymmetricAlgorithmProvider {
        @Override // org.spongycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("KeyFactory.DSTU4145", "org.spongycastle.jcajce.provider.asymmetric.dstu.KeyFactorySpi");
            configurableProvider.addAlgorithm("Alg.Alias.KeyFactory.DSTU-4145-2002", "DSTU4145");
            configurableProvider.addAlgorithm("Alg.Alias.KeyFactory.DSTU4145-3410", "DSTU4145");
            registerOid(configurableProvider, UAObjectIdentifiers.dstu4145le, "DSTU4145", new KeyFactorySpi());
            registerOidAlgorithmParameters(configurableProvider, UAObjectIdentifiers.dstu4145le, "DSTU4145");
            registerOid(configurableProvider, UAObjectIdentifiers.dstu4145be, "DSTU4145", new KeyFactorySpi());
            registerOidAlgorithmParameters(configurableProvider, UAObjectIdentifiers.dstu4145be, "DSTU4145");
            configurableProvider.addAlgorithm("KeyPairGenerator.DSTU4145", "org.spongycastle.jcajce.provider.asymmetric.dstu.KeyPairGeneratorSpi");
            configurableProvider.addAlgorithm("Alg.Alias.KeyPairGenerator.DSTU-4145", "DSTU4145");
            configurableProvider.addAlgorithm("Alg.Alias.KeyPairGenerator.DSTU-4145-2002", "DSTU4145");
            configurableProvider.addAlgorithm("Signature.DSTU4145", "org.spongycastle.jcajce.provider.asymmetric.dstu.SignatureSpi");
            configurableProvider.addAlgorithm("Alg.Alias.Signature.DSTU-4145", "DSTU4145");
            configurableProvider.addAlgorithm("Alg.Alias.Signature.DSTU-4145-2002", "DSTU4145");
            addSignatureAlgorithm(configurableProvider, "GOST3411", "DSTU4145LE", "org.spongycastle.jcajce.provider.asymmetric.dstu.SignatureSpiLe", UAObjectIdentifiers.dstu4145le);
            addSignatureAlgorithm(configurableProvider, "GOST3411", "DSTU4145", "org.spongycastle.jcajce.provider.asymmetric.dstu.SignatureSpi", UAObjectIdentifiers.dstu4145be);
        }
    }
}
