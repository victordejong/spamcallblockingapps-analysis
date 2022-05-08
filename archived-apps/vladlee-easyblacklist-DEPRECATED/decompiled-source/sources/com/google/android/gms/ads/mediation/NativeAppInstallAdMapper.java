package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/NativeAppInstallAdMapper.class */
public class NativeAppInstallAdMapper extends NativeAdMapper {

    /* renamed from: e */
    private String f6023e;

    /* renamed from: f */
    private List<NativeAd.Image> f6024f;

    /* renamed from: g */
    private String f6025g;

    /* renamed from: h */
    private NativeAd.Image f6026h;

    /* renamed from: i */
    private String f6027i;

    /* renamed from: j */
    private double f6028j;

    /* renamed from: k */
    private String f6029k;

    /* renamed from: l */
    private String f6030l;

    public final String getBody() {
        return this.f6025g;
    }

    public final String getCallToAction() {
        return this.f6027i;
    }

    public final String getHeadline() {
        return this.f6023e;
    }

    public final NativeAd.Image getIcon() {
        return this.f6026h;
    }

    public final List<NativeAd.Image> getImages() {
        return this.f6024f;
    }

    public final String getPrice() {
        return this.f6030l;
    }

    public final double getStarRating() {
        return this.f6028j;
    }

    public final String getStore() {
        return this.f6029k;
    }

    public final void setBody(String str) {
        this.f6025g = str;
    }

    public final void setCallToAction(String str) {
        this.f6027i = str;
    }

    public final void setHeadline(String str) {
        this.f6023e = str;
    }

    public final void setIcon(NativeAd.Image image) {
        this.f6026h = image;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.f6024f = list;
    }

    public final void setPrice(String str) {
        this.f6030l = str;
    }

    public final void setStarRating(double d) {
        this.f6028j = d;
    }

    public final void setStore(String str) {
        this.f6029k = str;
    }
}
