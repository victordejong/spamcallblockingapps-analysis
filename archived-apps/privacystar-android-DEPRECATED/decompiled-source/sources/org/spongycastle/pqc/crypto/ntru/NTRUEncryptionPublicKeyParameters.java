package org.spongycastle.pqc.crypto.ntru;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters.class */
public class NTRUEncryptionPublicKeyParameters extends NTRUEncryptionKeyParameters {

    /* renamed from: h */
    public IntegerPolynomial f1746h;

    public NTRUEncryptionPublicKeyParameters(InputStream inputStream, NTRUEncryptionParameters nTRUEncryptionParameters) throws IOException {
        super(false, nTRUEncryptionParameters);
        this.f1746h = IntegerPolynomial.fromBinary(inputStream, nTRUEncryptionParameters.f1736N, nTRUEncryptionParameters.f1742q);
    }

    public NTRUEncryptionPublicKeyParameters(IntegerPolynomial integerPolynomial, NTRUEncryptionParameters nTRUEncryptionParameters) {
        super(false, nTRUEncryptionParameters);
        this.f1746h = integerPolynomial;
    }

    public NTRUEncryptionPublicKeyParameters(byte[] bArr, NTRUEncryptionParameters nTRUEncryptionParameters) {
        super(false, nTRUEncryptionParameters);
        this.f1746h = IntegerPolynomial.fromBinary(bArr, nTRUEncryptionParameters.f1736N, nTRUEncryptionParameters.f1742q);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NTRUEncryptionPublicKeyParameters)) {
            return false;
        }
        NTRUEncryptionPublicKeyParameters nTRUEncryptionPublicKeyParameters = (NTRUEncryptionPublicKeyParameters) obj;
        if (this.f1746h == null) {
            if (nTRUEncryptionPublicKeyParameters.f1746h != null) {
                return false;
            }
        } else if (!this.f1746h.equals(nTRUEncryptionPublicKeyParameters.f1746h)) {
            return false;
        }
        return this.params == null ? nTRUEncryptionPublicKeyParameters.params == null : this.params.equals(nTRUEncryptionPublicKeyParameters.params);
    }

    public byte[] getEncoded() {
        return this.f1746h.toBinary(this.params.f1742q);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f1746h == null ? 0 : this.f1746h.hashCode();
        if (this.params != null) {
            i = this.params.hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(getEncoded());
    }
}
