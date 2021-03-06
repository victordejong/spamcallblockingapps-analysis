package org.spongycastle.jcajce.provider.asymmetric.p030ec;

import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.NullDigest;
import org.spongycastle.crypto.digests.RIPEMD160Digest;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.signers.ECDSASigner;
import org.spongycastle.crypto.signers.ECNRSigner;
import org.spongycastle.crypto.signers.HMacDSAKCalculator;
import org.spongycastle.crypto.util.DigestFactory;
import org.spongycastle.jcajce.provider.asymmetric.util.DSABase;
import org.spongycastle.jcajce.provider.asymmetric.util.DSAEncoder;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.util.Arrays;
/* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi.class */
public class SignatureSpi extends DSABase {

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$PlainDSAEncoder */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder.class */
    private static class PlainDSAEncoder implements DSAEncoder {
        private PlainDSAEncoder() {
        }

        private byte[] makeUnsigned(BigInteger bigInteger) {
            byte[] byteArray = bigInteger.toByteArray();
            if (byteArray[0] != 0) {
                return byteArray;
            }
            byte[] bArr = new byte[byteArray.length - 1];
            System.arraycopy(byteArray, 1, bArr, 0, bArr.length);
            return bArr;
        }

        @Override // org.spongycastle.jcajce.provider.asymmetric.util.DSAEncoder
        public BigInteger[] decode(byte[] bArr) throws IOException {
            byte[] bArr2 = new byte[bArr.length / 2];
            byte[] bArr3 = new byte[bArr.length / 2];
            System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
            System.arraycopy(bArr, bArr2.length, bArr3, 0, bArr3.length);
            return new BigInteger[]{new BigInteger(1, bArr2), new BigInteger(1, bArr3)};
        }

        @Override // org.spongycastle.jcajce.provider.asymmetric.util.DSAEncoder
        public byte[] encode(BigInteger bigInteger, BigInteger bigInteger2) throws IOException {
            byte[] makeUnsigned = makeUnsigned(bigInteger);
            byte[] makeUnsigned2 = makeUnsigned(bigInteger2);
            byte[] bArr = makeUnsigned.length > makeUnsigned2.length ? new byte[makeUnsigned.length * 2] : new byte[makeUnsigned2.length * 2];
            System.arraycopy(makeUnsigned, 0, bArr, (bArr.length / 2) - makeUnsigned.length, makeUnsigned.length);
            System.arraycopy(makeUnsigned2, 0, bArr, bArr.length - makeUnsigned2.length, makeUnsigned2.length);
            return bArr;
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$StdDSAEncoder */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$StdDSAEncoder.class */
    private static class StdDSAEncoder implements DSAEncoder {
        private StdDSAEncoder() {
        }

        @Override // org.spongycastle.jcajce.provider.asymmetric.util.DSAEncoder
        public BigInteger[] decode(byte[] bArr) throws IOException {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) ASN1Primitive.fromByteArray(bArr);
            if (aSN1Sequence.size() != 2) {
                throw new IOException("malformed signature");
            } else if (Arrays.areEqual(bArr, aSN1Sequence.getEncoded(ASN1Encoding.DER))) {
                return new BigInteger[]{ASN1Integer.getInstance(aSN1Sequence.getObjectAt(0)).getValue(), ASN1Integer.getInstance(aSN1Sequence.getObjectAt(1)).getValue()};
            } else {
                throw new IOException("malformed signature");
            }
        }

        @Override // org.spongycastle.jcajce.provider.asymmetric.util.DSAEncoder
        public byte[] encode(BigInteger bigInteger, BigInteger bigInteger2) throws IOException {
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            aSN1EncodableVector.add(new ASN1Integer(bigInteger));
            aSN1EncodableVector.add(new ASN1Integer(bigInteger2));
            return new DERSequence(aSN1EncodableVector).getEncoded(ASN1Encoding.DER);
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA.class */
    public static class ecCVCDSA extends SignatureSpi {
        public ecCVCDSA() {
            super(DigestFactory.createSHA1(), new ECDSASigner(), new PlainDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA224 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA224.class */
    public static class ecCVCDSA224 extends SignatureSpi {
        public ecCVCDSA224() {
            super(DigestFactory.createSHA224(), new ECDSASigner(), new PlainDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA256 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA256.class */
    public static class ecCVCDSA256 extends SignatureSpi {
        public ecCVCDSA256() {
            super(DigestFactory.createSHA256(), new ECDSASigner(), new PlainDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA384 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA384.class */
    public static class ecCVCDSA384 extends SignatureSpi {
        public ecCVCDSA384() {
            super(DigestFactory.createSHA384(), new ECDSASigner(), new PlainDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA512 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA512.class */
    public static class ecCVCDSA512 extends SignatureSpi {
        public ecCVCDSA512() {
            super(DigestFactory.createSHA512(), new ECDSASigner(), new PlainDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA.class */
    public static class ecDSA extends SignatureSpi {
        public ecDSA() {
            super(DigestFactory.createSHA1(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA224 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA224.class */
    public static class ecDSA224 extends SignatureSpi {
        public ecDSA224() {
            super(DigestFactory.createSHA224(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA256 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA256.class */
    public static class ecDSA256 extends SignatureSpi {
        public ecDSA256() {
            super(DigestFactory.createSHA256(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA384 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA384.class */
    public static class ecDSA384 extends SignatureSpi {
        public ecDSA384() {
            super(DigestFactory.createSHA384(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA512 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA512.class */
    public static class ecDSA512 extends SignatureSpi {
        public ecDSA512() {
            super(DigestFactory.createSHA512(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSARipeMD160 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSARipeMD160.class */
    public static class ecDSARipeMD160 extends SignatureSpi {
        public ecDSARipeMD160() {
            super(new RIPEMD160Digest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_224 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSASha3_224.class */
    public static class ecDSASha3_224 extends SignatureSpi {
        public ecDSASha3_224() {
            super(DigestFactory.createSHA3_224(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_256 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSASha3_256.class */
    public static class ecDSASha3_256 extends SignatureSpi {
        public ecDSASha3_256() {
            super(DigestFactory.createSHA3_256(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_384 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSASha3_384.class */
    public static class ecDSASha3_384 extends SignatureSpi {
        public ecDSASha3_384() {
            super(DigestFactory.createSHA3_384(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_512 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSASha3_512.class */
    public static class ecDSASha3_512 extends SignatureSpi {
        public ecDSASha3_512() {
            super(DigestFactory.createSHA3_512(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSAnone */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSAnone.class */
    public static class ecDSAnone extends SignatureSpi {
        public ecDSAnone() {
            super(new NullDigest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA.class */
    public static class ecDetDSA extends SignatureSpi {
        public ecDetDSA() {
            super(DigestFactory.createSHA1(), new ECDSASigner(new HMacDSAKCalculator(DigestFactory.createSHA1())), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA224 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA224.class */
    public static class ecDetDSA224 extends SignatureSpi {
        public ecDetDSA224() {
            super(DigestFactory.createSHA224(), new ECDSASigner(new HMacDSAKCalculator(DigestFactory.createSHA224())), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA256 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA256.class */
    public static class ecDetDSA256 extends SignatureSpi {
        public ecDetDSA256() {
            super(DigestFactory.createSHA256(), new ECDSASigner(new HMacDSAKCalculator(DigestFactory.createSHA256())), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA384 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA384.class */
    public static class ecDetDSA384 extends SignatureSpi {
        public ecDetDSA384() {
            super(DigestFactory.createSHA384(), new ECDSASigner(new HMacDSAKCalculator(DigestFactory.createSHA384())), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA512 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSA512.class */
    public static class ecDetDSA512 extends SignatureSpi {
        public ecDetDSA512() {
            super(DigestFactory.createSHA512(), new ECDSASigner(new HMacDSAKCalculator(DigestFactory.createSHA512())), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_224 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSASha3_224.class */
    public static class ecDetDSASha3_224 extends SignatureSpi {
        public ecDetDSASha3_224() {
            super(DigestFactory.createSHA3_224(), new ECDSASigner(new HMacDSAKCalculator(DigestFactory.createSHA3_224())), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_256 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSASha3_256.class */
    public static class ecDetDSASha3_256 extends SignatureSpi {
        public ecDetDSASha3_256() {
            super(DigestFactory.createSHA3_256(), new ECDSASigner(new HMacDSAKCalculator(DigestFactory.createSHA3_256())), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_384 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSASha3_384.class */
    public static class ecDetDSASha3_384 extends SignatureSpi {
        public ecDetDSASha3_384() {
            super(DigestFactory.createSHA3_384(), new ECDSASigner(new HMacDSAKCalculator(DigestFactory.createSHA3_384())), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_512 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDetDSASha3_512.class */
    public static class ecDetDSASha3_512 extends SignatureSpi {
        public ecDetDSASha3_512() {
            super(DigestFactory.createSHA3_512(), new ECDSASigner(new HMacDSAKCalculator(DigestFactory.createSHA3_512())), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR.class */
    public static class ecNR extends SignatureSpi {
        public ecNR() {
            super(DigestFactory.createSHA1(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR224 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR224.class */
    public static class ecNR224 extends SignatureSpi {
        public ecNR224() {
            super(DigestFactory.createSHA224(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR256 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR256.class */
    public static class ecNR256 extends SignatureSpi {
        public ecNR256() {
            super(DigestFactory.createSHA256(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR384 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR384.class */
    public static class ecNR384 extends SignatureSpi {
        public ecNR384() {
            super(DigestFactory.createSHA384(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR512 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR512.class */
    public static class ecNR512 extends SignatureSpi {
        public ecNR512() {
            super(DigestFactory.createSHA512(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecPlainDSARP160 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecPlainDSARP160.class */
    public static class ecPlainDSARP160 extends SignatureSpi {
        public ecPlainDSARP160() {
            super(new RIPEMD160Digest(), new ECDSASigner(), new PlainDSAEncoder());
        }
    }

    SignatureSpi(Digest digest, DSA dsa, DSAEncoder dSAEncoder) {
        super(digest, dsa, dSAEncoder);
    }

    @Override // java.security.SignatureSpi
    protected void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        AsymmetricKeyParameter generatePrivateKeyParameter = ECUtil.generatePrivateKeyParameter(privateKey);
        this.digest.reset();
        if (this.appRandom != null) {
            this.signer.init(true, new ParametersWithRandom(generatePrivateKeyParameter, this.appRandom));
        } else {
            this.signer.init(true, generatePrivateKeyParameter);
        }
    }

    @Override // java.security.SignatureSpi
    protected void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        AsymmetricKeyParameter generatePublicKeyParameter = ECUtils.generatePublicKeyParameter(publicKey);
        this.digest.reset();
        this.signer.init(false, generatePublicKeyParameter);
    }
}
