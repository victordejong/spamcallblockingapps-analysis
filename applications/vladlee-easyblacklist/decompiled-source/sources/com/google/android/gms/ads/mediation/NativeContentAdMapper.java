package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/NativeContentAdMapper.class */
public class NativeContentAdMapper extends NativeAdMapper {

    /* renamed from: e */
    private String f6031e;

    /* renamed from: f */
    private List<NativeAd.Image> f6032f;

    /* renamed from: g */
    private String f6033g;

    /* renamed from: h */
    private NativeAd.Image f6034h;

    /* renamed from: i */
    private String f6035i;

    /* renamed from: j */
    private String f6036j;

    public final String getAdvertiser() {
        return this.f6036j;
    }

    public final String getBody() {
        return this.f6033g;
    }

    public final String getCallToAction() {
        return this.f6035i;
    }

    public final String getHeadline() {
        return this.f6031e;
    }

    public final List<NativeAd.Image> getImages() {
        return this.f6032f;
    }

    public final NativeAd.Image getLogo() {
        return this.f6034h;
    }

    public final void setAdvertiser(String str) {
        this.f6036j = str;
    }

    public final void setBody(String str) {
        this.f6033g = str;
    }

    public final void setCallToAction(String str) {
        this.f6035i = str;
    }

    public final void setHeadline(String str) {
        this.f6031e = str;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.f6032f = list;
    }

    public final void setLogo(NativeAd.Image image) {
        this.f6034h = image;
    }
}
