package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/NativeAppInstallAdMapper.class */
public class NativeAppInstallAdMapper extends NativeAdMapper {

    /* renamed from: h */
    public String f22866h;

    /* renamed from: i */
    public List<NativeAd.Image> f22867i;

    /* renamed from: j */
    public String f22868j;

    /* renamed from: k */
    public NativeAd.Image f22869k;

    /* renamed from: l */
    public String f22870l;

    /* renamed from: m */
    public double f22871m;

    /* renamed from: n */
    public String f22872n;

    /* renamed from: o */
    public String f22873o;

    public final String getBody() {
        return this.f22868j;
    }

    public final String getCallToAction() {
        return this.f22870l;
    }

    public final String getHeadline() {
        return this.f22866h;
    }

    public final NativeAd.Image getIcon() {
        return this.f22869k;
    }

    public final List<NativeAd.Image> getImages() {
        return this.f22867i;
    }

    public final String getPrice() {
        return this.f22873o;
    }

    public final double getStarRating() {
        return this.f22871m;
    }

    public final String getStore() {
        return this.f22872n;
    }

    public final void setBody(String str) {
        this.f22868j = str;
    }

    public final void setCallToAction(String str) {
        this.f22870l = str;
    }

    public final void setHeadline(String str) {
        this.f22866h = str;
    }

    public final void setIcon(NativeAd.Image image) {
        this.f22869k = image;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.f22867i = list;
    }

    public final void setPrice(String str) {
        this.f22873o = str;
    }

    public final void setStarRating(double d) {
        this.f22871m = d;
    }

    public final void setStore(String str) {
        this.f22872n = str;
    }
}
