package org.spongycastle.jcajce.provider.asymmetric.p030ec;

import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import org.spongycastle.asn1.ASN1Null;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.p022x9.ECNamedCurveTable;
import org.spongycastle.asn1.p022x9.X962Parameters;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.p032ec.ECCurve;
/* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.AlgorithmParametersSpi */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi.class */
public class AlgorithmParametersSpi extends java.security.AlgorithmParametersSpi {
    private String curveName;
    private ECParameterSpec ecParameterSpec;

    @Override // java.security.AlgorithmParametersSpi
    protected byte[] engineGetEncoded() throws IOException {
        return engineGetEncoded("ASN.1");
    }

    @Override // java.security.AlgorithmParametersSpi
    protected byte[] engineGetEncoded(String str) throws IOException {
        X962Parameters x962Parameters;
        if (isASN1FormatString(str)) {
            if (this.ecParameterSpec == null) {
                x962Parameters = new X962Parameters((ASN1Null) DERNull.INSTANCE);
            } else if (this.curveName != null) {
                x962Parameters = new X962Parameters(ECUtil.getNamedCurveOid(this.curveName));
            } else {
                org.spongycastle.jce.spec.ECParameterSpec convertSpec = EC5Util.convertSpec(this.ecParameterSpec, false);
                x962Parameters = new X962Parameters(new X9ECParameters(convertSpec.getCurve(), convertSpec.getG(), convertSpec.getN(), convertSpec.getH(), convertSpec.getSeed()));
            }
            return x962Parameters.getEncoded();
        }
        throw new IOException("Unknown parameters format in AlgorithmParameters object: " + str);
    }

    @Override // java.security.AlgorithmParametersSpi
    protected <T extends AlgorithmParameterSpec> T engineGetParameterSpec(Class<T> cls) throws InvalidParameterSpecException {
        if (ECParameterSpec.class.isAssignableFrom(cls) || cls == AlgorithmParameterSpec.class) {
            return this.ecParameterSpec;
        }
        if (ECGenParameterSpec.class.isAssignableFrom(cls)) {
            if (this.curveName != null) {
                ASN1ObjectIdentifier namedCurveOid = ECUtil.getNamedCurveOid(this.curveName);
                return namedCurveOid != null ? new ECGenParameterSpec(namedCurveOid.getId()) : new ECGenParameterSpec(this.curveName);
            }
            ASN1ObjectIdentifier namedCurveOid2 = ECUtil.getNamedCurveOid(EC5Util.convertSpec(this.ecParameterSpec, false));
            if (namedCurveOid2 != null) {
                return new ECGenParameterSpec(namedCurveOid2.getId());
            }
        }
        throw new InvalidParameterSpecException("EC AlgorithmParameters cannot convert to " + cls.getName());
    }

    @Override // java.security.AlgorithmParametersSpi
    protected void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        if (algorithmParameterSpec instanceof ECGenParameterSpec) {
            ECGenParameterSpec eCGenParameterSpec = (ECGenParameterSpec) algorithmParameterSpec;
            X9ECParameters domainParametersFromGenSpec = ECUtils.getDomainParametersFromGenSpec(eCGenParameterSpec);
            if (domainParametersFromGenSpec == null) {
                throw new InvalidParameterSpecException("EC curve name not recognized: " + eCGenParameterSpec.getName());
            }
            this.curveName = eCGenParameterSpec.getName();
            this.ecParameterSpec = EC5Util.convertToSpec(domainParametersFromGenSpec);
        } else if (algorithmParameterSpec instanceof ECParameterSpec) {
            if (algorithmParameterSpec instanceof ECNamedCurveSpec) {
                this.curveName = ((ECNamedCurveSpec) algorithmParameterSpec).getName();
            } else {
                this.curveName = null;
            }
            this.ecParameterSpec = (ECParameterSpec) algorithmParameterSpec;
        } else {
            throw new InvalidParameterSpecException("AlgorithmParameterSpec class not recognized: " + algorithmParameterSpec.getClass().getName());
        }
    }

    @Override // java.security.AlgorithmParametersSpi
    protected void engineInit(byte[] bArr) throws IOException {
        engineInit(bArr, "ASN.1");
    }

    @Override // java.security.AlgorithmParametersSpi
    protected void engineInit(byte[] bArr, String str) throws IOException {
        if (isASN1FormatString(str)) {
            X962Parameters instance = X962Parameters.getInstance(bArr);
            ECCurve curve = EC5Util.getCurve(BouncyCastleProvider.CONFIGURATION, instance);
            if (instance.isNamedCurve()) {
                ASN1ObjectIdentifier instance2 = ASN1ObjectIdentifier.getInstance(instance.getParameters());
                this.curveName = ECNamedCurveTable.getName(instance2);
                if (this.curveName == null) {
                    this.curveName = instance2.getId();
                }
            }
            this.ecParameterSpec = EC5Util.convertToSpec(instance, curve);
            return;
        }
        throw new IOException("Unknown encoded parameters format in AlgorithmParameters object: " + str);
    }

    @Override // java.security.AlgorithmParametersSpi
    protected String engineToString() {
        return "EC AlgorithmParameters ";
    }

    protected boolean isASN1FormatString(String str) {
        return str == null || str.equals("ASN.1");
    }
}
