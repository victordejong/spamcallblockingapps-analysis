package org.spongycastle.crypto.agreement.kdf;

import java.io.IOException;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.DerivationFunction;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.util.Pack;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/agreement/kdf/DHKEKGenerator.class */
public class DHKEKGenerator implements DerivationFunction {
    private ASN1ObjectIdentifier algorithm;
    private final Digest digest;
    private int keySize;
    private byte[] partyAInfo;

    /* renamed from: z */
    private byte[] f1022z;

    public DHKEKGenerator(Digest digest) {
        this.digest = digest;
    }

    @Override // org.spongycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws DataLengthException, IllegalArgumentException {
        if (bArr.length - i2 < i) {
            throw new OutputLengthException("output buffer too small");
        }
        long j = i2;
        int digestSize = this.digest.getDigestSize();
        if (j > 8589934591L) {
            throw new IllegalArgumentException("Output length too large");
        }
        long j2 = digestSize;
        int i3 = (int) (((j + j2) - 1) / j2);
        byte[] bArr2 = new byte[this.digest.getDigestSize()];
        int i4 = 1;
        int i5 = i;
        int i6 = i2;
        for (int i7 = 0; i7 < i3; i7++) {
            this.digest.update(this.f1022z, 0, this.f1022z.length);
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            aSN1EncodableVector2.add(this.algorithm);
            aSN1EncodableVector2.add(new DEROctetString(Pack.intToBigEndian(i4)));
            aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
            if (this.partyAInfo != null) {
                aSN1EncodableVector.add(new DERTaggedObject(true, 0, new DEROctetString(this.partyAInfo)));
            }
            aSN1EncodableVector.add(new DERTaggedObject(true, 2, new DEROctetString(Pack.intToBigEndian(this.keySize))));
            try {
                byte[] encoded = new DERSequence(aSN1EncodableVector).getEncoded(ASN1Encoding.DER);
                this.digest.update(encoded, 0, encoded.length);
                this.digest.doFinal(bArr2, 0);
                if (i6 > digestSize) {
                    System.arraycopy(bArr2, 0, bArr, i5, digestSize);
                    i5 += digestSize;
                    i6 -= digestSize;
                } else {
                    System.arraycopy(bArr2, 0, bArr, i5, i6);
                }
                i4++;
            } catch (IOException e) {
                throw new IllegalArgumentException("unable to encode parameter info: " + e.getMessage());
            }
        }
        this.digest.reset();
        return (int) j;
    }

    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.spongycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        DHKDFParameters dHKDFParameters = (DHKDFParameters) derivationParameters;
        this.algorithm = dHKDFParameters.getAlgorithm();
        this.keySize = dHKDFParameters.getKeySize();
        this.f1022z = dHKDFParameters.getZ();
        this.partyAInfo = dHKDFParameters.getExtraInfo();
    }
}
