package org.spongycastle.asn1.x509;

import com.privacystar.core.util.CampaignUtil;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x509/KeyPurposeId.class */
public class KeyPurposeId extends ASN1Object {

    /* renamed from: id */
    private ASN1ObjectIdentifier f939id;
    private static final ASN1ObjectIdentifier id_kp = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.3");
    public static final KeyPurposeId anyExtendedKeyUsage = new KeyPurposeId(Extension.extendedKeyUsage.branch("0"));
    public static final KeyPurposeId id_kp_serverAuth = new KeyPurposeId(id_kp.branch("1"));
    public static final KeyPurposeId id_kp_clientAuth = new KeyPurposeId(id_kp.branch("2"));
    public static final KeyPurposeId id_kp_codeSigning = new KeyPurposeId(id_kp.branch(CampaignUtil.CAMPAIGN_ACTION_DASHBOARD));
    public static final KeyPurposeId id_kp_emailProtection = new KeyPurposeId(id_kp.branch(CampaignUtil.CAMPAIGN_ACTION_WALKTHROUGH));
    public static final KeyPurposeId id_kp_ipsecEndSystem = new KeyPurposeId(id_kp.branch(CampaignUtil.CAMPAIGN_ACTION_PROTECTION));
    public static final KeyPurposeId id_kp_ipsecTunnel = new KeyPurposeId(id_kp.branch(CampaignUtil.CAMPAIGN_ACTION_STATE));
    public static final KeyPurposeId id_kp_ipsecUser = new KeyPurposeId(id_kp.branch(CampaignUtil.CAMPAIGN_ACTION_BLOCK));
    public static final KeyPurposeId id_kp_timeStamping = new KeyPurposeId(id_kp.branch(CampaignUtil.CAMPAIGN_ACTION_APPROVED));
    public static final KeyPurposeId id_kp_OCSPSigning = new KeyPurposeId(id_kp.branch(CampaignUtil.CAMPAIGN_ACTION_INBOX));
    public static final KeyPurposeId id_kp_dvcs = new KeyPurposeId(id_kp.branch(CampaignUtil.CAMPAIGN_ACTION_INBOX_RATE));
    public static final KeyPurposeId id_kp_sbgpCertAAServerAuth = new KeyPurposeId(id_kp.branch("11"));
    public static final KeyPurposeId id_kp_scvp_responder = new KeyPurposeId(id_kp.branch("12"));
    public static final KeyPurposeId id_kp_eapOverPPP = new KeyPurposeId(id_kp.branch("13"));
    public static final KeyPurposeId id_kp_eapOverLAN = new KeyPurposeId(id_kp.branch("14"));
    public static final KeyPurposeId id_kp_scvpServer = new KeyPurposeId(id_kp.branch("15"));
    public static final KeyPurposeId id_kp_scvpClient = new KeyPurposeId(id_kp.branch("16"));
    public static final KeyPurposeId id_kp_ipsecIKE = new KeyPurposeId(id_kp.branch("17"));
    public static final KeyPurposeId id_kp_capwapAC = new KeyPurposeId(id_kp.branch("18"));
    public static final KeyPurposeId id_kp_capwapWTP = new KeyPurposeId(id_kp.branch("19"));
    public static final KeyPurposeId id_kp_smartcardlogon = new KeyPurposeId(new ASN1ObjectIdentifier("1.3.6.1.4.1.311.20.2.2"));
    public static final KeyPurposeId id_kp_macAddress = new KeyPurposeId(new ASN1ObjectIdentifier("1.3.6.1.1.1.1.22"));
    public static final KeyPurposeId id_kp_msSGC = new KeyPurposeId(new ASN1ObjectIdentifier("1.3.6.1.4.1.311.10.3.3"));
    public static final KeyPurposeId id_kp_nsSGC = new KeyPurposeId(new ASN1ObjectIdentifier("2.16.840.1.113730.4.1"));

    public KeyPurposeId(String str) {
        this(new ASN1ObjectIdentifier(str));
    }

    private KeyPurposeId(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.f939id = aSN1ObjectIdentifier;
    }

    public static KeyPurposeId getInstance(Object obj) {
        if (obj instanceof KeyPurposeId) {
            return (KeyPurposeId) obj;
        }
        if (obj != null) {
            return new KeyPurposeId(ASN1ObjectIdentifier.getInstance(obj));
        }
        return null;
    }

    public String getId() {
        return this.f939id.getId();
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.f939id;
    }

    public ASN1ObjectIdentifier toOID() {
        return this.f939id;
    }

    public String toString() {
        return this.f939id.toString();
    }
}
