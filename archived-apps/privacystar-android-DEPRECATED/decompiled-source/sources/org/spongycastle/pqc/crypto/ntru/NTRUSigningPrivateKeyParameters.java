package org.spongycastle.pqc.crypto.ntru;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.math.ntru.polynomial.DenseTernaryPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.Polynomial;
import org.spongycastle.pqc.math.ntru.polynomial.ProductFormPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.SparseTernaryPolynomial;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters.class */
public class NTRUSigningPrivateKeyParameters extends AsymmetricKeyParameter {
    private List<Basis> bases;
    private NTRUSigningPublicKeyParameters publicKey;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis.class */
    public static class Basis {

        /* renamed from: f */
        public Polynomial f1763f;
        public Polynomial fPrime;

        /* renamed from: h */
        public IntegerPolynomial f1764h;
        NTRUSigningKeyGenerationParameters params;

        Basis(InputStream inputStream, NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters, boolean z) throws IOException {
            int i = nTRUSigningKeyGenerationParameters.f1748N;
            int i2 = nTRUSigningKeyGenerationParameters.f1753q;
            int i3 = nTRUSigningKeyGenerationParameters.f1750d1;
            int i4 = nTRUSigningKeyGenerationParameters.f1751d2;
            int i5 = nTRUSigningKeyGenerationParameters.f1752d3;
            boolean z2 = nTRUSigningKeyGenerationParameters.sparse;
            this.params = nTRUSigningKeyGenerationParameters;
            if (nTRUSigningKeyGenerationParameters.polyType == 1) {
                this.f1763f = ProductFormPolynomial.fromBinary(inputStream, i, i3, i4, i5 + 1, i5);
            } else {
                IntegerPolynomial fromBinary3Tight = IntegerPolynomial.fromBinary3Tight(inputStream, i);
                this.f1763f = z2 ? new SparseTernaryPolynomial(fromBinary3Tight) : new DenseTernaryPolynomial(fromBinary3Tight);
            }
            if (nTRUSigningKeyGenerationParameters.basisType == 0) {
                IntegerPolynomial fromBinary = IntegerPolynomial.fromBinary(inputStream, i, i2);
                for (int i6 = 0; i6 < fromBinary.coeffs.length; i6++) {
                    int[] iArr = fromBinary.coeffs;
                    iArr[i6] = iArr[i6] - (i2 / 2);
                }
                this.fPrime = fromBinary;
            } else if (nTRUSigningKeyGenerationParameters.polyType == 1) {
                this.fPrime = ProductFormPolynomial.fromBinary(inputStream, i, i3, i4, i5 + 1, i5);
            } else {
                this.fPrime = IntegerPolynomial.fromBinary3Tight(inputStream, i);
            }
            if (z) {
                this.f1764h = IntegerPolynomial.fromBinary(inputStream, i, i2);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Basis(Polynomial polynomial, Polynomial polynomial2, IntegerPolynomial integerPolynomial, NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters) {
            this.f1763f = polynomial;
            this.fPrime = polynomial2;
            this.f1764h = integerPolynomial;
            this.params = nTRUSigningKeyGenerationParameters;
        }

        private byte[] getEncoded(Polynomial polynomial) {
            return polynomial instanceof ProductFormPolynomial ? ((ProductFormPolynomial) polynomial).toBinary() : polynomial.toIntegerPolynomial().toBinary3Tight();
        }

        void encode(OutputStream outputStream, boolean z) throws IOException {
            int i = this.params.f1753q;
            outputStream.write(getEncoded(this.f1763f));
            if (this.params.basisType == 0) {
                IntegerPolynomial integerPolynomial = this.fPrime.toIntegerPolynomial();
                for (int i2 = 0; i2 < integerPolynomial.coeffs.length; i2++) {
                    int[] iArr = integerPolynomial.coeffs;
                    iArr[i2] = iArr[i2] + (i / 2);
                }
                outputStream.write(integerPolynomial.toBinary(i));
            } else {
                outputStream.write(getEncoded(this.fPrime));
            }
            if (z) {
                outputStream.write(this.f1764h.toBinary(i));
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof Basis)) {
                return false;
            }
            Basis basis = (Basis) obj;
            if (this.f1763f == null) {
                if (basis.f1763f != null) {
                    return false;
                }
            } else if (!this.f1763f.equals(basis.f1763f)) {
                return false;
            }
            if (this.fPrime == null) {
                if (basis.fPrime != null) {
                    return false;
                }
            } else if (!this.fPrime.equals(basis.fPrime)) {
                return false;
            }
            if (this.f1764h == null) {
                if (basis.f1764h != null) {
                    return false;
                }
            } else if (!this.f1764h.equals(basis.f1764h)) {
                return false;
            }
            return this.params == null ? basis.params == null : this.params.equals(basis.params);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = this.f1763f == null ? 0 : this.f1763f.hashCode();
            int hashCode2 = this.fPrime == null ? 0 : this.fPrime.hashCode();
            int hashCode3 = this.f1764h == null ? 0 : this.f1764h.hashCode();
            if (this.params != null) {
                i = this.params.hashCode();
            }
            return ((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
        }
    }

    public NTRUSigningPrivateKeyParameters(InputStream inputStream, NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters) throws IOException {
        super(true);
        this.bases = new ArrayList();
        int i = 0;
        while (i <= nTRUSigningKeyGenerationParameters.f1747B) {
            add(new Basis(inputStream, nTRUSigningKeyGenerationParameters, i != 0));
            i++;
        }
        this.publicKey = new NTRUSigningPublicKeyParameters(inputStream, nTRUSigningKeyGenerationParameters.getSigningParameters());
    }

    public NTRUSigningPrivateKeyParameters(List<Basis> list, NTRUSigningPublicKeyParameters nTRUSigningPublicKeyParameters) {
        super(true);
        this.bases = new ArrayList(list);
        this.publicKey = nTRUSigningPublicKeyParameters;
    }

    public NTRUSigningPrivateKeyParameters(byte[] bArr, NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters) throws IOException {
        this(new ByteArrayInputStream(bArr), nTRUSigningKeyGenerationParameters);
    }

    private void add(Basis basis) {
        this.bases.add(basis);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NTRUSigningPrivateKeyParameters nTRUSigningPrivateKeyParameters = (NTRUSigningPrivateKeyParameters) obj;
        if ((this.bases == null) != (nTRUSigningPrivateKeyParameters.bases == null)) {
            return false;
        }
        if (this.bases == null) {
            return true;
        }
        if (this.bases.size() != nTRUSigningPrivateKeyParameters.bases.size()) {
            return false;
        }
        for (int i = 0; i < this.bases.size(); i++) {
            Basis basis = this.bases.get(i);
            Basis basis2 = nTRUSigningPrivateKeyParameters.bases.get(i);
            if (!(basis.f1763f.equals(basis2.f1763f) && basis.fPrime.equals(basis2.fPrime))) {
                return false;
            }
            if (!((i == 0 || basis.f1764h.equals(basis2.f1764h)) && basis.params.equals(basis2.params))) {
                return false;
            }
        }
        return true;
    }

    public Basis getBasis(int i) {
        return this.bases.get(i);
    }

    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (i < this.bases.size()) {
            this.bases.get(i).encode(byteArrayOutputStream, i != 0);
            i++;
        }
        byteArrayOutputStream.write(this.publicKey.getEncoded());
        return byteArrayOutputStream.toByteArray();
    }

    public NTRUSigningPublicKeyParameters getPublicKey() {
        return this.publicKey;
    }

    public int hashCode() {
        if (this.bases == null) {
            return 31;
        }
        int hashCode = 31 + this.bases.hashCode();
        for (Basis basis : this.bases) {
            hashCode += basis.hashCode();
        }
        return hashCode;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(getEncoded());
    }
}
