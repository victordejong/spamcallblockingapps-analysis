package org.spongycastle.jcajce.provider.asymmetric.util;

import java.math.BigInteger;
import java.security.spec.ECField;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.EllipticCurve;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.p022x9.ECNamedCurveTable;
import org.spongycastle.asn1.p022x9.X962Parameters;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.crypto.p026ec.CustomNamedCurves;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.field.FiniteField;
import org.spongycastle.math.field.Polynomial;
import org.spongycastle.math.field.PolynomialExtensionField;
import org.spongycastle.math.p032ec.ECAlgorithms;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/util/EC5Util.class */
public class EC5Util {
    private static Map customCurves = new HashMap();

    static {
        Enumeration names = CustomNamedCurves.getNames();
        while (names.hasMoreElements()) {
            String str = (String) names.nextElement();
            X9ECParameters byName = ECNamedCurveTable.getByName(str);
            if (byName != null) {
                customCurves.put(byName.getCurve(), CustomNamedCurves.getByName(str).getCurve());
            }
        }
        X9ECParameters byName2 = CustomNamedCurves.getByName("Curve25519");
        customCurves.put(new ECCurve.C2401Fp(byName2.getCurve().getField().getCharacteristic(), byName2.getCurve().getA().toBigInteger(), byName2.getCurve().getB().toBigInteger()), byName2.getCurve());
    }

    public static EllipticCurve convertCurve(ECCurve eCCurve, byte[] bArr) {
        return new EllipticCurve(convertField(eCCurve.getField()), eCCurve.getA().toBigInteger(), eCCurve.getB().toBigInteger(), null);
    }

    public static ECCurve convertCurve(EllipticCurve ellipticCurve) {
        ECField field = ellipticCurve.getField();
        BigInteger a = ellipticCurve.getA();
        BigInteger b = ellipticCurve.getB();
        if (field instanceof ECFieldFp) {
            ECCurve.C2401Fp fp = new ECCurve.C2401Fp(((ECFieldFp) field).getP(), a, b);
            return customCurves.containsKey(fp) ? (ECCurve) customCurves.get(fp) : fp;
        }
        ECFieldF2m eCFieldF2m = (ECFieldF2m) field;
        int m = eCFieldF2m.getM();
        int[] convertMidTerms = ECUtil.convertMidTerms(eCFieldF2m.getMidTermsOfReductionPolynomial());
        return new ECCurve.F2m(m, convertMidTerms[0], convertMidTerms[1], convertMidTerms[2], a, b);
    }

    public static ECField convertField(FiniteField finiteField) {
        if (ECAlgorithms.isFpField(finiteField)) {
            return new ECFieldFp(finiteField.getCharacteristic());
        }
        Polynomial minimalPolynomial = ((PolynomialExtensionField) finiteField).getMinimalPolynomial();
        int[] exponentsPresent = minimalPolynomial.getExponentsPresent();
        return new ECFieldF2m(minimalPolynomial.getDegree(), Arrays.reverse(Arrays.copyOfRange(exponentsPresent, 1, exponentsPresent.length - 1)));
    }

    public static ECPoint convertPoint(ECParameterSpec eCParameterSpec, java.security.spec.ECPoint eCPoint, boolean z) {
        return convertPoint(convertCurve(eCParameterSpec.getCurve()), eCPoint, z);
    }

    public static ECPoint convertPoint(ECCurve eCCurve, java.security.spec.ECPoint eCPoint, boolean z) {
        return eCCurve.createPoint(eCPoint.getAffineX(), eCPoint.getAffineY());
    }

    public static ECParameterSpec convertSpec(EllipticCurve ellipticCurve, org.spongycastle.jce.spec.ECParameterSpec eCParameterSpec) {
        return eCParameterSpec instanceof ECNamedCurveParameterSpec ? new ECNamedCurveSpec(((ECNamedCurveParameterSpec) eCParameterSpec).getName(), ellipticCurve, new java.security.spec.ECPoint(eCParameterSpec.getG().getAffineXCoord().toBigInteger(), eCParameterSpec.getG().getAffineYCoord().toBigInteger()), eCParameterSpec.getN(), eCParameterSpec.getH()) : new ECParameterSpec(ellipticCurve, new java.security.spec.ECPoint(eCParameterSpec.getG().getAffineXCoord().toBigInteger(), eCParameterSpec.getG().getAffineYCoord().toBigInteger()), eCParameterSpec.getN(), eCParameterSpec.getH().intValue());
    }

    public static org.spongycastle.jce.spec.ECParameterSpec convertSpec(ECParameterSpec eCParameterSpec, boolean z) {
        ECCurve convertCurve = convertCurve(eCParameterSpec.getCurve());
        return new org.spongycastle.jce.spec.ECParameterSpec(convertCurve, convertPoint(convertCurve, eCParameterSpec.getGenerator(), z), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor()), eCParameterSpec.getCurve().getSeed());
    }

    public static ECParameterSpec convertToSpec(X962Parameters x962Parameters, ECCurve eCCurve) {
        ECParameterSpec eCParameterSpec;
        if (x962Parameters.isNamedCurve()) {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) x962Parameters.getParameters();
            X9ECParameters namedCurveByOid = ECUtil.getNamedCurveByOid(aSN1ObjectIdentifier);
            X9ECParameters x9ECParameters = namedCurveByOid;
            if (namedCurveByOid == null) {
                Map additionalECParameters = BouncyCastleProvider.CONFIGURATION.getAdditionalECParameters();
                x9ECParameters = namedCurveByOid;
                if (!additionalECParameters.isEmpty()) {
                    x9ECParameters = (X9ECParameters) additionalECParameters.get(aSN1ObjectIdentifier);
                }
            }
            eCParameterSpec = new ECNamedCurveSpec(ECUtil.getCurveName(aSN1ObjectIdentifier), convertCurve(eCCurve, x9ECParameters.getSeed()), new java.security.spec.ECPoint(x9ECParameters.getG().getAffineXCoord().toBigInteger(), x9ECParameters.getG().getAffineYCoord().toBigInteger()), x9ECParameters.getN(), x9ECParameters.getH());
        } else if (x962Parameters.isImplicitlyCA()) {
            eCParameterSpec = null;
        } else {
            X9ECParameters instance = X9ECParameters.getInstance(x962Parameters.getParameters());
            EllipticCurve convertCurve = convertCurve(eCCurve, instance.getSeed());
            eCParameterSpec = instance.getH() != null ? new ECParameterSpec(convertCurve, new java.security.spec.ECPoint(instance.getG().getAffineXCoord().toBigInteger(), instance.getG().getAffineYCoord().toBigInteger()), instance.getN(), instance.getH().intValue()) : new ECParameterSpec(convertCurve, new java.security.spec.ECPoint(instance.getG().getAffineXCoord().toBigInteger(), instance.getG().getAffineYCoord().toBigInteger()), instance.getN(), 1);
        }
        return eCParameterSpec;
    }

    public static ECParameterSpec convertToSpec(X9ECParameters x9ECParameters) {
        return new ECParameterSpec(convertCurve(x9ECParameters.getCurve(), null), new java.security.spec.ECPoint(x9ECParameters.getG().getAffineXCoord().toBigInteger(), x9ECParameters.getG().getAffineYCoord().toBigInteger()), x9ECParameters.getN(), x9ECParameters.getH().intValue());
    }

    public static ECCurve getCurve(ProviderConfiguration providerConfiguration, X962Parameters x962Parameters) {
        ECCurve eCCurve;
        Set acceptableNamedCurves = providerConfiguration.getAcceptableNamedCurves();
        if (x962Parameters.isNamedCurve()) {
            ASN1ObjectIdentifier instance = ASN1ObjectIdentifier.getInstance(x962Parameters.getParameters());
            if (acceptableNamedCurves.isEmpty() || acceptableNamedCurves.contains(instance)) {
                X9ECParameters namedCurveByOid = ECUtil.getNamedCurveByOid(instance);
                X9ECParameters x9ECParameters = namedCurveByOid;
                if (namedCurveByOid == null) {
                    x9ECParameters = (X9ECParameters) providerConfiguration.getAdditionalECParameters().get(instance);
                }
                eCCurve = x9ECParameters.getCurve();
            } else {
                throw new IllegalStateException("named curve not acceptable");
            }
        } else if (x962Parameters.isImplicitlyCA()) {
            eCCurve = providerConfiguration.getEcImplicitlyCa().getCurve();
        } else if (acceptableNamedCurves.isEmpty()) {
            eCCurve = X9ECParameters.getInstance(x962Parameters.getParameters()).getCurve();
        } else {
            throw new IllegalStateException("encoded parameters not acceptable");
        }
        return eCCurve;
    }

    public static ECDomainParameters getDomainParameters(ProviderConfiguration providerConfiguration, ECParameterSpec eCParameterSpec) {
        ECDomainParameters eCDomainParameters;
        if (eCParameterSpec == null) {
            org.spongycastle.jce.spec.ECParameterSpec ecImplicitlyCa = providerConfiguration.getEcImplicitlyCa();
            eCDomainParameters = new ECDomainParameters(ecImplicitlyCa.getCurve(), ecImplicitlyCa.getG(), ecImplicitlyCa.getN(), ecImplicitlyCa.getH(), ecImplicitlyCa.getSeed());
        } else {
            eCDomainParameters = ECUtil.getDomainParameters(providerConfiguration, convertSpec(eCParameterSpec, false));
        }
        return eCDomainParameters;
    }
}
