package org.spongycastle.jcajce.util;

import java.io.IOException;
import java.security.AlgorithmParameters;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Primitive;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/util/AlgorithmParametersUtils.class */
public class AlgorithmParametersUtils {
    private AlgorithmParametersUtils() {
    }

    public static ASN1Encodable extractParameters(AlgorithmParameters algorithmParameters) throws IOException {
        ASN1Primitive aSN1Primitive;
        try {
            aSN1Primitive = ASN1Primitive.fromByteArray(algorithmParameters.getEncoded("ASN.1"));
        } catch (Exception e) {
            aSN1Primitive = ASN1Primitive.fromByteArray(algorithmParameters.getEncoded());
        }
        return aSN1Primitive;
    }

    public static void loadParameters(AlgorithmParameters algorithmParameters, ASN1Encodable aSN1Encodable) throws IOException {
        try {
            algorithmParameters.init(aSN1Encodable.toASN1Primitive().getEncoded(), "ASN.1");
        } catch (Exception e) {
            algorithmParameters.init(aSN1Encodable.toASN1Primitive().getEncoded());
        }
    }
}
