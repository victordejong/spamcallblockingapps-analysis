package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERTaggedObject;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cms/RecipientInfo.class */
public class RecipientInfo extends ASN1Object implements ASN1Choice {
    ASN1Encodable info;

    public RecipientInfo(ASN1Primitive aSN1Primitive) {
        this.info = aSN1Primitive;
    }

    public RecipientInfo(KEKRecipientInfo kEKRecipientInfo) {
        this.info = new DERTaggedObject(false, 2, kEKRecipientInfo);
    }

    public RecipientInfo(KeyAgreeRecipientInfo keyAgreeRecipientInfo) {
        this.info = new DERTaggedObject(false, 1, keyAgreeRecipientInfo);
    }

    public RecipientInfo(KeyTransRecipientInfo keyTransRecipientInfo) {
        this.info = keyTransRecipientInfo;
    }

    public RecipientInfo(OtherRecipientInfo otherRecipientInfo) {
        this.info = new DERTaggedObject(false, 4, otherRecipientInfo);
    }

    public RecipientInfo(PasswordRecipientInfo passwordRecipientInfo) {
        this.info = new DERTaggedObject(false, 3, passwordRecipientInfo);
    }

    public static RecipientInfo getInstance(Object obj) {
        if (obj == null || (obj instanceof RecipientInfo)) {
            return (RecipientInfo) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new RecipientInfo((ASN1Sequence) obj);
        }
        if (obj instanceof ASN1TaggedObject) {
            return new RecipientInfo((ASN1TaggedObject) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    private KEKRecipientInfo getKEKInfo(ASN1TaggedObject aSN1TaggedObject) {
        return aSN1TaggedObject.isExplicit() ? KEKRecipientInfo.getInstance(aSN1TaggedObject, true) : KEKRecipientInfo.getInstance(aSN1TaggedObject, false);
    }

    public ASN1Encodable getInfo() {
        if (!(this.info instanceof ASN1TaggedObject)) {
            return KeyTransRecipientInfo.getInstance(this.info);
        }
        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) this.info;
        switch (aSN1TaggedObject.getTagNo()) {
            case 1:
                return KeyAgreeRecipientInfo.getInstance(aSN1TaggedObject, false);
            case 2:
                return getKEKInfo(aSN1TaggedObject);
            case 3:
                return PasswordRecipientInfo.getInstance(aSN1TaggedObject, false);
            case 4:
                return OtherRecipientInfo.getInstance(aSN1TaggedObject, false);
            default:
                throw new IllegalStateException("unknown tag");
        }
    }

    public ASN1Integer getVersion() {
        if (!(this.info instanceof ASN1TaggedObject)) {
            return KeyTransRecipientInfo.getInstance(this.info).getVersion();
        }
        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) this.info;
        switch (aSN1TaggedObject.getTagNo()) {
            case 1:
                return KeyAgreeRecipientInfo.getInstance(aSN1TaggedObject, false).getVersion();
            case 2:
                return getKEKInfo(aSN1TaggedObject).getVersion();
            case 3:
                return PasswordRecipientInfo.getInstance(aSN1TaggedObject, false).getVersion();
            case 4:
                return new ASN1Integer(0L);
            default:
                throw new IllegalStateException("unknown tag");
        }
    }

    public boolean isTagged() {
        return this.info instanceof ASN1TaggedObject;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.info.toASN1Primitive();
    }
}
