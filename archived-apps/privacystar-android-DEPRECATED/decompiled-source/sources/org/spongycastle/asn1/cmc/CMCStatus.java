package org.spongycastle.asn1.cmc;

import java.util.HashMap;
import java.util.Map;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cmc/CMCStatus.class */
public class CMCStatus extends ASN1Object {
    private final ASN1Integer value;
    public static final CMCStatus success = new CMCStatus(new ASN1Integer(0));
    public static final CMCStatus failed = new CMCStatus(new ASN1Integer(2));
    public static final CMCStatus pending = new CMCStatus(new ASN1Integer(3));
    public static final CMCStatus noSupport = new CMCStatus(new ASN1Integer(4));
    public static final CMCStatus confirmRequired = new CMCStatus(new ASN1Integer(5));
    public static final CMCStatus popRequired = new CMCStatus(new ASN1Integer(6));
    public static final CMCStatus partial = new CMCStatus(new ASN1Integer(7));
    private static Map range = new HashMap();

    static {
        range.put(success.value, success);
        range.put(failed.value, failed);
        range.put(pending.value, pending);
        range.put(noSupport.value, noSupport);
        range.put(confirmRequired.value, confirmRequired);
        range.put(popRequired.value, popRequired);
        range.put(partial.value, partial);
    }

    private CMCStatus(ASN1Integer aSN1Integer) {
        this.value = aSN1Integer;
    }

    public static CMCStatus getInstance(Object obj) {
        if (obj instanceof CMCStatus) {
            return (CMCStatus) obj;
        }
        if (obj == null) {
            return null;
        }
        CMCStatus cMCStatus = (CMCStatus) range.get(ASN1Integer.getInstance(obj));
        if (cMCStatus != null) {
            return cMCStatus;
        }
        throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.value;
    }
}
