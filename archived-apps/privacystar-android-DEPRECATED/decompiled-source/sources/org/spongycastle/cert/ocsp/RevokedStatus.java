package org.spongycastle.cert.ocsp;

import java.util.Date;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ocsp.RevokedInfo;
import org.spongycastle.asn1.x509.CRLReason;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/ocsp/RevokedStatus.class */
public class RevokedStatus implements CertificateStatus {
    RevokedInfo info;

    public RevokedStatus(Date date, int i) {
        this.info = new RevokedInfo(new ASN1GeneralizedTime(date), CRLReason.lookup(i));
    }

    public RevokedStatus(RevokedInfo revokedInfo) {
        this.info = revokedInfo;
    }

    public int getRevocationReason() {
        if (this.info.getRevocationReason() != null) {
            return this.info.getRevocationReason().getValue().intValue();
        }
        throw new IllegalStateException("attempt to get a reason where none is available");
    }

    public Date getRevocationTime() {
        return OCSPUtils.extractDate(this.info.getRevocationTime());
    }

    public boolean hasRevocationReason() {
        return this.info.getRevocationReason() != null;
    }
}
