package org.spongycastle.asn1.cmc;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.DERSequence;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cmc/TaggedAttribute.class */
public class TaggedAttribute extends ASN1Object {
    private final ASN1ObjectIdentifier attrType;
    private final ASN1Set attrValues;
    private final BodyPartID bodyPartID;

    private TaggedAttribute(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.bodyPartID = BodyPartID.getInstance(aSN1Sequence.getObjectAt(0));
        this.attrType = ASN1ObjectIdentifier.getInstance(aSN1Sequence.getObjectAt(1));
        this.attrValues = ASN1Set.getInstance(aSN1Sequence.getObjectAt(2));
    }

    public TaggedAttribute(BodyPartID bodyPartID, ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Set aSN1Set) {
        this.bodyPartID = bodyPartID;
        this.attrType = aSN1ObjectIdentifier;
        this.attrValues = aSN1Set;
    }

    public static TaggedAttribute getInstance(Object obj) {
        if (obj instanceof TaggedAttribute) {
            return (TaggedAttribute) obj;
        }
        if (obj != null) {
            return new TaggedAttribute(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public ASN1ObjectIdentifier getAttrType() {
        return this.attrType;
    }

    public ASN1Set getAttrValues() {
        return this.attrValues;
    }

    public BodyPartID getBodyPartID() {
        return this.bodyPartID;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DERSequence(new ASN1Encodable[]{this.bodyPartID, this.attrType, this.attrValues});
    }
}
