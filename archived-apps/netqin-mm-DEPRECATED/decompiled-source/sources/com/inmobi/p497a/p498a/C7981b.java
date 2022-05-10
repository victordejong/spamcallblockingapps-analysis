package com.inmobi.p497a.p498a;

import android.os.Build;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.a.a.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/a/b.class */
public class C7981b {

    /* renamed from: d */
    public static final String f31172d = "b";

    /* renamed from: a */
    public String f31173a;

    /* renamed from: b */
    public int f31174b;

    /* renamed from: c */
    public int f31175c;

    public C7981b() {
    }

    public C7981b(CellInfo cellInfo, String str, String str2, int i) {
        if (cellInfo instanceof CellInfoGsm) {
            this.f31175c = i;
            CellInfoGsm cellInfoGsm = (CellInfoGsm) cellInfo;
            this.f31174b = cellInfoGsm.getCellSignalStrength().getDbm();
            CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
            this.f31173a = m6793a(str, str2, cellIdentity.getLac(), cellIdentity.getCid(), -1, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
        } else if (cellInfo instanceof CellInfoCdma) {
            this.f31175c = i;
            CellInfoCdma cellInfoCdma = (CellInfoCdma) cellInfo;
            this.f31174b = cellInfoCdma.getCellSignalStrength().getDbm();
            CellIdentityCdma cellIdentity2 = cellInfoCdma.getCellIdentity();
            this.f31173a = m6794a(str, cellIdentity2.getSystemId(), cellIdentity2.getNetworkId(), cellIdentity2.getBasestationId());
        } else if (Build.VERSION.SDK_INT >= 18) {
            if (cellInfo instanceof CellInfoWcdma) {
                this.f31175c = i;
                CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) cellInfo;
                this.f31174b = cellInfoWcdma.getCellSignalStrength().getDbm();
                CellIdentityWcdma cellIdentity3 = cellInfoWcdma.getCellIdentity();
                this.f31173a = m6793a(str, str2, cellIdentity3.getLac(), cellIdentity3.getCid(), cellIdentity3.getPsc(), MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
            }
        } else if (cellInfo instanceof CellInfoLte) {
            this.f31175c = i;
            CellInfoLte cellInfoLte = (CellInfoLte) cellInfo;
            this.f31174b = cellInfoLte.getCellSignalStrength().getDbm();
            CellIdentityLte cellIdentity4 = cellInfoLte.getCellIdentity();
            this.f31173a = m6793a(str, str2, cellIdentity4.getTac(), cellIdentity4.getCi(), -1, cellIdentity4.getPci());
        }
    }

    /* renamed from: a */
    public static String m6794a(String str, int i, int i2, int i3) {
        return str + "#" + i + "#" + i2 + "#" + i3;
    }

    /* renamed from: a */
    public static String m6793a(String str, String str2, int i, int i2, int i3, int i4) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("#");
        sb.append(str2);
        sb.append("#");
        sb.append(i);
        sb.append("#");
        sb.append(i2);
        sb.append("#");
        Object obj = "";
        sb.append(i3 == -1 ? "" : Integer.valueOf(i3));
        sb.append("#");
        if (i4 != Integer.MAX_VALUE) {
            obj = Integer.valueOf(i4);
        }
        sb.append(obj);
        return sb.toString();
    }

    /* renamed from: a */
    public final JSONObject m6795a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f31173a);
            if (this.f31174b != Integer.MAX_VALUE) {
                jSONObject.put("ss", this.f31174b);
            }
            jSONObject.put("nt", this.f31175c);
        } catch (JSONException e) {
        }
        return jSONObject;
    }
}
