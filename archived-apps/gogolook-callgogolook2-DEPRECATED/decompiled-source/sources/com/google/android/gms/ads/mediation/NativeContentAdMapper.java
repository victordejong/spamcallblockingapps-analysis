package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/NativeContentAdMapper.class */
public class NativeContentAdMapper extends NativeAdMapper {
    public String zzbla;
    public List<NativeAd.Image> zzblb;
    public String zzblc;
    public String zzble;
    public String zzblq;
    public NativeAd.Image zzdjl;

    public final String getAdvertiser() {
        return this.zzblq;
    }

    public final String getBody() {
        return this.zzblc;
    }

    public final String getCallToAction() {
        return this.zzble;
    }

    public final String getHeadline() {
        return this.zzbla;
    }

    public final List<NativeAd.Image> getImages() {
        return this.zzblb;
    }

    public final NativeAd.Image getLogo() {
        return this.zzdjl;
    }

    public final void setAdvertiser(String str) {
        this.zzblq = str;
    }

    public final void setBody(String str) {
        this.zzblc = str;
    }

    public final void setCallToAction(String str) {
        this.zzble = str;
    }

    public final void setHeadline(String str) {
        this.zzbla = str;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.zzblb = list;
    }

    public final void setLogo(NativeAd.Image image) {
        this.zzdjl = image;
    }
}
