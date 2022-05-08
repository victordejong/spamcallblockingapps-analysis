package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.BERSequence;
import org.spongycastle.asn1.DERIA5String;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cms/TimeStampedData.class */
public class TimeStampedData extends ASN1Object {
    private ASN1OctetString content;
    private DERIA5String dataUri;
    private MetaData metaData;
    private Evidence temporalEvidence;
    private ASN1Integer version;

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0040, code lost:
        if ((r5.getObjectAt(r6) instanceof org.spongycastle.asn1.ASN1Sequence) != false) goto L_0x0043;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private TimeStampedData(org.spongycastle.asn1.ASN1Sequence r5) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r2 = 0
            org.spongycastle.asn1.ASN1Encodable r1 = r1.getObjectAt(r2)
            org.spongycastle.asn1.ASN1Integer r1 = org.spongycastle.asn1.ASN1Integer.getInstance(r1)
            r0.version = r1
            r0 = 1
            r6 = r0
            r0 = r5
            r1 = 1
            org.spongycastle.asn1.ASN1Encodable r0 = r0.getObjectAt(r1)
            boolean r0 = r0 instanceof org.spongycastle.asn1.DERIA5String
            if (r0 == 0) goto L_0x002b
            r0 = r4
            r1 = r5
            r2 = 1
            org.spongycastle.asn1.ASN1Encodable r1 = r1.getObjectAt(r2)
            org.spongycastle.asn1.DERIA5String r1 = org.spongycastle.asn1.DERIA5String.getInstance(r1)
            r0.dataUri = r1
            r0 = 2
            r6 = r0
        L_0x002b:
            r0 = r5
            r1 = r6
            org.spongycastle.asn1.ASN1Encodable r0 = r0.getObjectAt(r1)
            boolean r0 = r0 instanceof org.spongycastle.asn1.cms.MetaData
            if (r0 != 0) goto L_0x0043
            r0 = r6
            r7 = r0
            r0 = r5
            r1 = r6
            org.spongycastle.asn1.ASN1Encodable r0 = r0.getObjectAt(r1)
            boolean r0 = r0 instanceof org.spongycastle.asn1.ASN1Sequence
            if (r0 == 0) goto L_0x0053
        L_0x0043:
            r0 = r4
            r1 = r5
            r2 = r6
            org.spongycastle.asn1.ASN1Encodable r1 = r1.getObjectAt(r2)
            org.spongycastle.asn1.cms.MetaData r1 = org.spongycastle.asn1.cms.MetaData.getInstance(r1)
            r0.metaData = r1
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
        L_0x0053:
            r0 = r7
            r6 = r0
            r0 = r5
            r1 = r7
            org.spongycastle.asn1.ASN1Encodable r0 = r0.getObjectAt(r1)
            boolean r0 = r0 instanceof org.spongycastle.asn1.ASN1OctetString
            if (r0 == 0) goto L_0x0070
            r0 = r4
            r1 = r5
            r2 = r7
            org.spongycastle.asn1.ASN1Encodable r1 = r1.getObjectAt(r2)
            org.spongycastle.asn1.ASN1OctetString r1 = org.spongycastle.asn1.ASN1OctetString.getInstance(r1)
            r0.content = r1
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
        L_0x0070:
            r0 = r4
            r1 = r5
            r2 = r6
            org.spongycastle.asn1.ASN1Encodable r1 = r1.getObjectAt(r2)
            org.spongycastle.asn1.cms.Evidence r1 = org.spongycastle.asn1.cms.Evidence.getInstance(r1)
            r0.temporalEvidence = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.asn1.cms.TimeStampedData.<init>(org.spongycastle.asn1.ASN1Sequence):void");
    }

    public TimeStampedData(DERIA5String dERIA5String, MetaData metaData, ASN1OctetString aSN1OctetString, Evidence evidence) {
        this.version = new ASN1Integer(1L);
        this.dataUri = dERIA5String;
        this.metaData = metaData;
        this.content = aSN1OctetString;
        this.temporalEvidence = evidence;
    }

    public static TimeStampedData getInstance(Object obj) {
        return (obj == null || (obj instanceof TimeStampedData)) ? (TimeStampedData) obj : new TimeStampedData(ASN1Sequence.getInstance(obj));
    }

    public ASN1OctetString getContent() {
        return this.content;
    }

    public DERIA5String getDataUri() {
        return this.dataUri;
    }

    public MetaData getMetaData() {
        return this.metaData;
    }

    public Evidence getTemporalEvidence() {
        return this.temporalEvidence;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.version);
        if (this.dataUri != null) {
            aSN1EncodableVector.add(this.dataUri);
        }
        if (this.metaData != null) {
            aSN1EncodableVector.add(this.metaData);
        }
        if (this.content != null) {
            aSN1EncodableVector.add(this.content);
        }
        aSN1EncodableVector.add(this.temporalEvidence);
        return new BERSequence(aSN1EncodableVector);
    }
}
