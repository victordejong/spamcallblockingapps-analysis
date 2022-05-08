package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/LazyEncodedSequence.class */
public class LazyEncodedSequence extends ASN1Sequence {
    private byte[] encoded;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LazyEncodedSequence(byte[] bArr) throws IOException {
        this.encoded = bArr;
    }

    private void parse() {
        LazyConstructionEnumeration lazyConstructionEnumeration = new LazyConstructionEnumeration(this.encoded);
        while (lazyConstructionEnumeration.hasMoreElements()) {
            this.seq.addElement(lazyConstructionEnumeration.nextElement());
        }
        this.encoded = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.spongycastle.asn1.ASN1Sequence, org.spongycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream) throws IOException {
        if (this.encoded != null) {
            aSN1OutputStream.writeEncoded(48, this.encoded);
        } else {
            super.toDLObject().encode(aSN1OutputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.spongycastle.asn1.ASN1Primitive
    public int encodedLength() throws IOException {
        return this.encoded != null ? StreamUtil.calculateBodyLength(this.encoded.length) + 1 + this.encoded.length : super.toDLObject().encodedLength();
    }

    @Override // org.spongycastle.asn1.ASN1Sequence
    public ASN1Encodable getObjectAt(int i) {
        ASN1Encodable objectAt;
        synchronized (this) {
            if (this.encoded != null) {
                parse();
            }
            objectAt = super.getObjectAt(i);
        }
        return objectAt;
    }

    @Override // org.spongycastle.asn1.ASN1Sequence
    public Enumeration getObjects() {
        synchronized (this) {
            if (this.encoded == null) {
                return super.getObjects();
            }
            return new LazyConstructionEnumeration(this.encoded);
        }
    }

    @Override // org.spongycastle.asn1.ASN1Sequence
    public int size() {
        int size;
        synchronized (this) {
            if (this.encoded != null) {
                parse();
            }
            size = super.size();
        }
        return size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.spongycastle.asn1.ASN1Sequence, org.spongycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        if (this.encoded != null) {
            parse();
        }
        return super.toDERObject();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.spongycastle.asn1.ASN1Sequence, org.spongycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        if (this.encoded != null) {
            parse();
        }
        return super.toDLObject();
    }
}
