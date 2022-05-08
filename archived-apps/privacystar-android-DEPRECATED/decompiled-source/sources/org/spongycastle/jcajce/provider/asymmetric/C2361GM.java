package org.spongycastle.jcajce.provider.asymmetric;

import java.util.HashMap;
import java.util.Map;
import org.spongycastle.asn1.p020gm.GMObjectIdentifiers;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;
/* renamed from: org.spongycastle.jcajce.provider.asymmetric.GM */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/GM.class */
public class C2361GM {
    private static final String PREFIX = "org.spongycastle.jcajce.provider.asymmetric.ec.";
    private static final Map<String, String> generalSm2Attributes = new HashMap();

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.GM$Mappings */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/GM$Mappings.class */
    public static class Mappings extends AsymmetricAlgorithmProvider {
        @Override // org.spongycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("Signature.SM3WITHSM2", "org.spongycastle.jcajce.provider.asymmetric.ec.GMSignatureSpi$sm3WithSM2");
            configurableProvider.addAlgorithm("Alg.Alias.Signature." + GMObjectIdentifiers.sm2sign_with_sm3, "SM3WITHSM2");
        }
    }

    static {
        generalSm2Attributes.put("SupportedKeyClasses", "java.security.interfaces.ECPublicKey|java.security.interfaces.ECPrivateKey");
        generalSm2Attributes.put("SupportedKeyFormats", "PKCS#8|X.509");
    }
}
