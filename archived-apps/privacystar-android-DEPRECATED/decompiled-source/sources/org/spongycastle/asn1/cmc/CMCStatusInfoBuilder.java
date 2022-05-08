package org.spongycastle.asn1.cmc;

import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERUTF8String;
import org.spongycastle.asn1.cmc.CMCStatusInfo;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cmc/CMCStatusInfoBuilder.class */
public class CMCStatusInfoBuilder {
    private final ASN1Sequence bodyList;
    private final CMCStatus cMCStatus;
    private CMCStatusInfo.OtherInfo otherInfo;
    private DERUTF8String statusString;

    public CMCStatusInfoBuilder(CMCStatus cMCStatus, BodyPartID bodyPartID) {
        this.cMCStatus = cMCStatus;
        this.bodyList = new DERSequence(bodyPartID);
    }

    public CMCStatusInfoBuilder(CMCStatus cMCStatus, BodyPartID[] bodyPartIDArr) {
        this.cMCStatus = cMCStatus;
        this.bodyList = new DERSequence(bodyPartIDArr);
    }

    public CMCStatusInfo build() {
        return new CMCStatusInfo(this.cMCStatus, this.bodyList, this.statusString, this.otherInfo);
    }

    public CMCStatusInfoBuilder setOtherInfo(CMCFailInfo cMCFailInfo) {
        this.otherInfo = new CMCStatusInfo.OtherInfo(cMCFailInfo);
        return this;
    }

    public CMCStatusInfoBuilder setOtherInfo(PendInfo pendInfo) {
        this.otherInfo = new CMCStatusInfo.OtherInfo(pendInfo);
        return this;
    }

    public CMCStatusInfoBuilder setStatusString(String str) {
        this.statusString = new DERUTF8String(str);
        return this;
    }
}
