package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERUTF8String;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cms/MetaData.class */
public class MetaData extends ASN1Object {
    private DERUTF8String fileName;
    private ASN1Boolean hashProtected;
    private DERIA5String mediaType;
    private Attributes otherMetaData;

    public MetaData(ASN1Boolean aSN1Boolean, DERUTF8String dERUTF8String, DERIA5String dERIA5String, Attributes attributes) {
        this.hashProtected = aSN1Boolean;
        this.fileName = dERUTF8String;
        this.mediaType = dERIA5String;
        this.otherMetaData = attributes;
    }

    private MetaData(ASN1Sequence aSN1Sequence) {
        int i;
        this.hashProtected = ASN1Boolean.getInstance(aSN1Sequence.getObjectAt(0));
        if (1 >= aSN1Sequence.size() || !(aSN1Sequence.getObjectAt(1) instanceof DERUTF8String)) {
            i = 1;
        } else {
            i = 2;
            this.fileName = DERUTF8String.getInstance(aSN1Sequence.getObjectAt(1));
        }
        int i2 = i;
        if (i < aSN1Sequence.size()) {
            i2 = i;
            if (aSN1Sequence.getObjectAt(i) instanceof DERIA5String) {
                this.mediaType = DERIA5String.getInstance(aSN1Sequence.getObjectAt(i));
                i2 = i + 1;
            }
        }
        if (i2 < aSN1Sequence.size()) {
            this.otherMetaData = Attributes.getInstance(aSN1Sequence.getObjectAt(i2));
        }
    }

    public static MetaData getInstance(Object obj) {
        if (obj instanceof MetaData) {
            return (MetaData) obj;
        }
        if (obj != null) {
            return new MetaData(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public DERUTF8String getFileName() {
        return this.fileName;
    }

    public DERIA5String getMediaType() {
        return this.mediaType;
    }

    public Attributes getOtherMetaData() {
        return this.otherMetaData;
    }

    public boolean isHashProtected() {
        return this.hashProtected.isTrue();
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.hashProtected);
        if (this.fileName != null) {
            aSN1EncodableVector.add(this.fileName);
        }
        if (this.mediaType != null) {
            aSN1EncodableVector.add(this.mediaType);
        }
        if (this.otherMetaData != null) {
            aSN1EncodableVector.add(this.otherMetaData);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
