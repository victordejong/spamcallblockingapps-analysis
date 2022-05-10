package com.mopub.common;

import android.os.Build;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import com.mopub.common.privacy.AdvertisingId;
import com.mopub.network.AdResponse;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/AdReport.class */
public class AdReport implements Serializable {
    public static final String DATE_FORMAT_PATTERN = "M/d/yy hh:mm:ss a z";
    public static final long serialVersionUID = 1;
    public final AdResponse mAdResponse;
    public final String mAdUnitId;
    public final AdvertisingId mAdvertisingId;
    public final Locale mDeviceLocale;
    public final String mDeviceModel;
    public final String mSdkVersion;

    public AdReport(String str, ClientMetadata clientMetadata, AdResponse adResponse) {
        this.mAdUnitId = str;
        this.mSdkVersion = clientMetadata.getSdkVersion();
        this.mDeviceModel = clientMetadata.getDeviceModel();
        this.mDeviceLocale = clientMetadata.getDeviceLocale();
        this.mAdvertisingId = clientMetadata.getMoPubIdentifier().getAdvertisingInfo();
        this.mAdResponse = adResponse;
    }

    private void appendKeyValue(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(" : ");
        sb.append(str2);
        sb.append("\n");
    }

    private String getFormattedTimeStamp(long j) {
        if (j != -1) {
            return new SimpleDateFormat(DATE_FORMAT_PATTERN, Locale.US).format(new Date(j));
        }
        return null;
    }

    public String getDspCreativeId() {
        return this.mAdResponse.getDspCreativeId();
    }

    public String getResponseString() {
        return this.mAdResponse.getStringBody();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        appendKeyValue(sb, "sdk_version", this.mSdkVersion);
        appendKeyValue(sb, "creative_id", this.mAdResponse.getDspCreativeId());
        appendKeyValue(sb, "platform_version", Integer.toString(Build.VERSION.SDK_INT));
        appendKeyValue(sb, "device_model", this.mDeviceModel);
        appendKeyValue(sb, "ad_unit_id", this.mAdUnitId);
        Locale locale = this.mDeviceLocale;
        appendKeyValue(sb, "device_locale", locale == null ? null : locale.toString());
        appendKeyValue(sb, "device_id", this.mAdvertisingId.getIdentifier(MoPub.canCollectPersonalInformation()));
        appendKeyValue(sb, "network_type", this.mAdResponse.getNetworkType());
        appendKeyValue(sb, "platform", "android");
        appendKeyValue(sb, AvidJSONUtil.KEY_TIMESTAMP, getFormattedTimeStamp(this.mAdResponse.getTimestamp()));
        appendKeyValue(sb, "ad_type", this.mAdResponse.getAdType());
        Integer width = this.mAdResponse.getWidth();
        Integer height = this.mAdResponse.getHeight();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        Object obj = width;
        if (width == null) {
            obj = "0";
        }
        sb2.append(obj);
        sb2.append(", ");
        Object obj2 = height;
        if (height == null) {
            obj2 = "0";
        }
        sb2.append(obj2);
        sb2.append("}");
        appendKeyValue(sb, "ad_size", sb2.toString());
        return sb.toString();
    }
}
