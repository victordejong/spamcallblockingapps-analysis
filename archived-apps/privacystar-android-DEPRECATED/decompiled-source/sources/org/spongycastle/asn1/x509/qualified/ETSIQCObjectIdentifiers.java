package org.spongycastle.asn1.x509.qualified;

import com.privacystar.core.util.CampaignUtil;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x509/qualified/ETSIQCObjectIdentifiers.class */
public interface ETSIQCObjectIdentifiers {
    public static final ASN1ObjectIdentifier id_etsi_qcs_QcCompliance = new ASN1ObjectIdentifier("0.4.0.1862.1.1");
    public static final ASN1ObjectIdentifier id_etsi_qcs_LimiteValue = new ASN1ObjectIdentifier("0.4.0.1862.1.2");
    public static final ASN1ObjectIdentifier id_etsi_qcs_RetentionPeriod = new ASN1ObjectIdentifier("0.4.0.1862.1.3");
    public static final ASN1ObjectIdentifier id_etsi_qcs_QcSSCD = new ASN1ObjectIdentifier("0.4.0.1862.1.4");
    public static final ASN1ObjectIdentifier id_etsi_qcs_QcPds = new ASN1ObjectIdentifier("0.4.0.1862.1.5");
    public static final ASN1ObjectIdentifier id_etsi_qcs_QcType = new ASN1ObjectIdentifier("0.4.0.1862.1.6");
    public static final ASN1ObjectIdentifier id_etsi_qct_esign = id_etsi_qcs_QcType.branch("1");
    public static final ASN1ObjectIdentifier id_etsi_qct_eseal = id_etsi_qcs_QcType.branch("2");
    public static final ASN1ObjectIdentifier id_etsi_qct_web = id_etsi_qcs_QcType.branch(CampaignUtil.CAMPAIGN_ACTION_DASHBOARD);
}
