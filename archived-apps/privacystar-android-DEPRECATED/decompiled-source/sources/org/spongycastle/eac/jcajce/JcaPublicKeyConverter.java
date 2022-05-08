package org.spongycastle.eac.jcajce;

import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECField;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.eac.EACObjectIdentifiers;
import org.spongycastle.asn1.eac.ECDSAPublicKey;
import org.spongycastle.asn1.eac.PublicKeyDataObject;
import org.spongycastle.asn1.eac.RSAPublicKey;
import org.spongycastle.eac.EACException;
import org.spongycastle.math.field.FiniteField;
import org.spongycastle.math.field.Polynomial;
import org.spongycastle.math.field.PolynomialExtensionField;
import org.spongycastle.math.p032ec.ECAlgorithms;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/eac/jcajce/JcaPublicKeyConverter.class */
public class JcaPublicKeyConverter {
    private EACHelper helper = new DefaultEACHelper();

    private static EllipticCurve convertCurve(ECCurve eCCurve) {
        return new EllipticCurve(convertField(eCCurve.getField()), eCCurve.getA().toBigInteger(), eCCurve.getB().toBigInteger(), null);
    }

    private static ECCurve convertCurve(EllipticCurve ellipticCurve, BigInteger bigInteger, int i) {
        ECField field = ellipticCurve.getField();
        BigInteger a = ellipticCurve.getA();
        BigInteger b = ellipticCurve.getB();
        if (field instanceof ECFieldFp) {
            return new ECCurve.C2401Fp(((ECFieldFp) field).getP(), a, b, bigInteger, BigInteger.valueOf(i));
        }
        throw new IllegalStateException("not implemented yet!!!");
    }

    private static ECField convertField(FiniteField finiteField) {
        if (ECAlgorithms.isFpField(finiteField)) {
            return new ECFieldFp(finiteField.getCharacteristic());
        }
        Polynomial minimalPolynomial = ((PolynomialExtensionField) finiteField).getMinimalPolynomial();
        int[] exponentsPresent = minimalPolynomial.getExponentsPresent();
        return new ECFieldF2m(minimalPolynomial.getDegree(), Arrays.reverse(Arrays.copyOfRange(exponentsPresent, 1, exponentsPresent.length - 1)));
    }

    private static ECPoint convertPoint(ECCurve eCCurve, java.security.spec.ECPoint eCPoint) {
        return eCCurve.createPoint(eCPoint.getAffineX(), eCPoint.getAffineY());
    }

    private PublicKey getECPublicKeyPublicKey(ECDSAPublicKey eCDSAPublicKey) throws EACException, InvalidKeySpecException {
        try {
            return this.helper.createKeyFactory("ECDSA").generatePublic(new ECPublicKeySpec(getPublicPoint(eCDSAPublicKey), getParams(eCDSAPublicKey)));
        } catch (NoSuchAlgorithmException e) {
            throw new EACException("cannot find algorithm ECDSA: " + e.getMessage(), e);
        } catch (NoSuchProviderException e2) {
            throw new EACException("cannot find provider: " + e2.getMessage(), e2);
        }
    }

    private ECParameterSpec getParams(ECDSAPublicKey eCDSAPublicKey) {
        if (!eCDSAPublicKey.hasParameters()) {
            throw new IllegalArgumentException("Public key does not contains EC Params");
        }
        ECCurve.C2401Fp fp = new ECCurve.C2401Fp(eCDSAPublicKey.getPrimeModulusP(), eCDSAPublicKey.getFirstCoefA(), eCDSAPublicKey.getSecondCoefB(), eCDSAPublicKey.getOrderOfBasePointR(), eCDSAPublicKey.getCofactorF());
        ECPoint decodePoint = fp.decodePoint(eCDSAPublicKey.getBasePointG());
        return new ECParameterSpec(convertCurve(fp), new java.security.spec.ECPoint(decodePoint.getAffineXCoord().toBigInteger(), decodePoint.getAffineYCoord().toBigInteger()), eCDSAPublicKey.getOrderOfBasePointR(), eCDSAPublicKey.getCofactorF().intValue());
    }

    private java.security.spec.ECPoint getPublicPoint(ECDSAPublicKey eCDSAPublicKey) {
        if (!eCDSAPublicKey.hasParameters()) {
            throw new IllegalArgumentException("Public key does not contains EC Params");
        }
        ECPoint.C2403Fp fp = (ECPoint.C2403Fp) new ECCurve.C2401Fp(eCDSAPublicKey.getPrimeModulusP(), eCDSAPublicKey.getFirstCoefA(), eCDSAPublicKey.getSecondCoefB(), eCDSAPublicKey.getOrderOfBasePointR(), eCDSAPublicKey.getCofactorF()).decodePoint(eCDSAPublicKey.getPublicPointY());
        return new java.security.spec.ECPoint(fp.getAffineXCoord().toBigInteger(), fp.getAffineYCoord().toBigInteger());
    }

    public PublicKey getKey(PublicKeyDataObject publicKeyDataObject) throws EACException, InvalidKeySpecException {
        if (publicKeyDataObject.getUsage().m201on(EACObjectIdentifiers.id_TA_ECDSA)) {
            return getECPublicKeyPublicKey((ECDSAPublicKey) publicKeyDataObject);
        }
        RSAPublicKey rSAPublicKey = (RSAPublicKey) publicKeyDataObject;
        try {
            return this.helper.createKeyFactory("RSA").generatePublic(new RSAPublicKeySpec(rSAPublicKey.getModulus(), rSAPublicKey.getPublicExponent()));
        } catch (NoSuchAlgorithmException e) {
            throw new EACException("cannot find algorithm ECDSA: " + e.getMessage(), e);
        } catch (NoSuchProviderException e2) {
            throw new EACException("cannot find provider: " + e2.getMessage(), e2);
        }
    }

    public PublicKeyDataObject getPublicKeyDataObject(ASN1ObjectIdentifier aSN1ObjectIdentifier, PublicKey publicKey) {
        if (publicKey instanceof java.security.interfaces.RSAPublicKey) {
            java.security.interfaces.RSAPublicKey rSAPublicKey = (java.security.interfaces.RSAPublicKey) publicKey;
            return new RSAPublicKey(aSN1ObjectIdentifier, rSAPublicKey.getModulus(), rSAPublicKey.getPublicExponent());
        }
        ECPublicKey eCPublicKey = (ECPublicKey) publicKey;
        ECParameterSpec params = eCPublicKey.getParams();
        return new ECDSAPublicKey(aSN1ObjectIdentifier, ((ECFieldFp) params.getCurve().getField()).getP(), params.getCurve().getA(), params.getCurve().getB(), convertPoint(convertCurve(params.getCurve(), params.getOrder(), params.getCofactor()), params.getGenerator()).getEncoded(), params.getOrder(), convertPoint(convertCurve(params.getCurve(), params.getOrder(), params.getCofactor()), eCPublicKey.getW()).getEncoded(), params.getCofactor());
    }

    public JcaPublicKeyConverter setProvider(String str) {
        this.helper = new NamedEACHelper(str);
        return this;
    }

    public JcaPublicKeyConverter setProvider(Provider provider) {
        this.helper = new ProviderEACHelper(provider);
        return this;
    }
}
