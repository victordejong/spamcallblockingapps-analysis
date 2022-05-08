package org.spongycastle.asn1.nsri;

import android.arch.persistence.room.RoomMasterTable;
import com.privacystar.core.util.CampaignUtil;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/nsri/NSRIObjectIdentifiers.class */
public interface NSRIObjectIdentifiers {
    public static final ASN1ObjectIdentifier nsri = new ASN1ObjectIdentifier("1.2.410.200046");
    public static final ASN1ObjectIdentifier id_algorithm = nsri.branch("1");
    public static final ASN1ObjectIdentifier id_sea = id_algorithm.branch("1");
    public static final ASN1ObjectIdentifier id_pad = id_algorithm.branch("2");
    public static final ASN1ObjectIdentifier id_pad_null = id_algorithm.branch("0");
    public static final ASN1ObjectIdentifier id_pad_1 = id_algorithm.branch("1");
    public static final ASN1ObjectIdentifier id_aria128_ecb = id_sea.branch("1");
    public static final ASN1ObjectIdentifier id_aria128_cbc = id_sea.branch("2");
    public static final ASN1ObjectIdentifier id_aria128_cfb = id_sea.branch(CampaignUtil.CAMPAIGN_ACTION_DASHBOARD);
    public static final ASN1ObjectIdentifier id_aria128_ofb = id_sea.branch(CampaignUtil.CAMPAIGN_ACTION_WALKTHROUGH);
    public static final ASN1ObjectIdentifier id_aria128_ctr = id_sea.branch(CampaignUtil.CAMPAIGN_ACTION_PROTECTION);
    public static final ASN1ObjectIdentifier id_aria192_ecb = id_sea.branch(CampaignUtil.CAMPAIGN_ACTION_STATE);
    public static final ASN1ObjectIdentifier id_aria192_cbc = id_sea.branch(CampaignUtil.CAMPAIGN_ACTION_BLOCK);
    public static final ASN1ObjectIdentifier id_aria192_cfb = id_sea.branch(CampaignUtil.CAMPAIGN_ACTION_APPROVED);
    public static final ASN1ObjectIdentifier id_aria192_ofb = id_sea.branch(CampaignUtil.CAMPAIGN_ACTION_INBOX);
    public static final ASN1ObjectIdentifier id_aria192_ctr = id_sea.branch(CampaignUtil.CAMPAIGN_ACTION_INBOX_RATE);
    public static final ASN1ObjectIdentifier id_aria256_ecb = id_sea.branch("11");
    public static final ASN1ObjectIdentifier id_aria256_cbc = id_sea.branch("12");
    public static final ASN1ObjectIdentifier id_aria256_cfb = id_sea.branch("13");
    public static final ASN1ObjectIdentifier id_aria256_ofb = id_sea.branch("14");
    public static final ASN1ObjectIdentifier id_aria256_ctr = id_sea.branch("15");
    public static final ASN1ObjectIdentifier id_aria128_cmac = id_sea.branch("21");
    public static final ASN1ObjectIdentifier id_aria192_cmac = id_sea.branch("22");
    public static final ASN1ObjectIdentifier id_aria256_cmac = id_sea.branch("23");
    public static final ASN1ObjectIdentifier id_aria128_ocb2 = id_sea.branch("31");
    public static final ASN1ObjectIdentifier id_aria192_ocb2 = id_sea.branch("32");
    public static final ASN1ObjectIdentifier id_aria256_ocb2 = id_sea.branch("33");
    public static final ASN1ObjectIdentifier id_aria128_gcm = id_sea.branch("34");
    public static final ASN1ObjectIdentifier id_aria192_gcm = id_sea.branch("35");
    public static final ASN1ObjectIdentifier id_aria256_gcm = id_sea.branch("36");
    public static final ASN1ObjectIdentifier id_aria128_ccm = id_sea.branch("37");
    public static final ASN1ObjectIdentifier id_aria192_ccm = id_sea.branch("38");
    public static final ASN1ObjectIdentifier id_aria256_ccm = id_sea.branch("39");
    public static final ASN1ObjectIdentifier id_aria128_kw = id_sea.branch("40");
    public static final ASN1ObjectIdentifier id_aria192_kw = id_sea.branch("41");
    public static final ASN1ObjectIdentifier id_aria256_kw = id_sea.branch(RoomMasterTable.DEFAULT_ID);
    public static final ASN1ObjectIdentifier id_aria128_kwp = id_sea.branch("43");
    public static final ASN1ObjectIdentifier id_aria192_kwp = id_sea.branch("44");
    public static final ASN1ObjectIdentifier id_aria256_kwp = id_sea.branch("45");
}
