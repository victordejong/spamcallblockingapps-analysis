package org.spongycastle.asn1;

import java.io.IOException;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/DERVideotexString.class */
public class DERVideotexString extends ASN1Primitive implements ASN1String {
    private final byte[] string;

    public DERVideotexString(byte[] bArr) {
        this.string = Arrays.clone(bArr);
    }

    public static DERVideotexString getInstance(Object obj) {
        if (obj == null || (obj instanceof DERVideotexString)) {
            return (DERVideotexString) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return (DERVideotexString) fromByteArray((byte[]) obj);
            } catch (Exception e) {
                throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
            }
        } else {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
    }

    public static DERVideotexString getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        ASN1Primitive object = aSN1TaggedObject.getObject();
        return (z || (object instanceof DERVideotexString)) ? getInstance(object) : new DERVideotexString(((ASN1OctetString) object).getOctets());
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof DERVideotexString)) {
            return false;
        }
        return Arrays.areEqual(this.string, ((DERVideotexString) aSN1Primitive).string);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.spongycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.writeEncoded(21, this.string);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.spongycastle.asn1.ASN1Primitive
    public int encodedLength() {
        return StreamUtil.calculateBodyLength(this.string.length) + 1 + this.string.length;
    }

    public byte[] getOctets() {
        return Arrays.clone(this.string);
    }

    @Override // org.spongycastle.asn1.ASN1String
    public String getString() {
        return Strings.fromByteArray(this.string);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public int hashCode() {
        return Arrays.hashCode(this.string);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.spongycastle.asn1.ASN1Primitive
    public boolean isConstructed() {
        return false;
    }
}
