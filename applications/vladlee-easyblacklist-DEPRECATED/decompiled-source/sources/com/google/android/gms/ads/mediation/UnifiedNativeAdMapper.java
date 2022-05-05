package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/UnifiedNativeAdMapper.class */
public class UnifiedNativeAdMapper {

    /* renamed from: a */
    private String f6037a;

    /* renamed from: b */
    private List<NativeAd.Image> f6038b;

    /* renamed from: c */
    private String f6039c;

    /* renamed from: d */
    private NativeAd.Image f6040d;

    /* renamed from: e */
    private String f6041e;

    /* renamed from: f */
    private String f6042f;

    /* renamed from: g */
    private Double f6043g;

    /* renamed from: h */
    private String f6044h;

    /* renamed from: i */
    private String f6045i;

    /* renamed from: j */
    private VideoController f6046j;

    /* renamed from: k */
    private boolean f6047k;

    /* renamed from: l */
    private View f6048l;

    /* renamed from: m */
    private View f6049m;

    /* renamed from: n */
    private Object f6050n;

    /* renamed from: o */
    private Bundle f6051o = new Bundle();

    /* renamed from: p */
    private boolean f6052p;

    /* renamed from: q */
    private boolean f6053q;

    /* renamed from: r */
    private float f6054r;

    public View getAdChoicesContent() {
        return this.f6048l;
    }

    public final String getAdvertiser() {
        return this.f6042f;
    }

    public final String getBody() {
        return this.f6039c;
    }

    public final String getCallToAction() {
        return this.f6041e;
    }

    public final Bundle getExtras() {
        return this.f6051o;
    }

    public final String getHeadline() {
        return this.f6037a;
    }

    public final NativeAd.Image getIcon() {
        return this.f6040d;
    }

    public final List<NativeAd.Image> getImages() {
        return this.f6038b;
    }

    public float getMediaContentAspectRatio() {
        return this.f6054r;
    }

    public final boolean getOverrideClickHandling() {
        return this.f6053q;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.f6052p;
    }

    public final String getPrice() {
        return this.f6045i;
    }

    public final Double getStarRating() {
        return this.f6043g;
    }

    public final String getStore() {
        return this.f6044h;
    }

    public final VideoController getVideoController() {
        return this.f6046j;
    }

    public void handleClick(View view) {
    }

    public boolean hasVideoContent() {
        return this.f6047k;
    }

    public void recordImpression() {
    }

    public void setAdChoicesContent(View view) {
        this.f6048l = view;
    }

    public final void setAdvertiser(String str) {
        this.f6042f = str;
    }

    public final void setBody(String str) {
        this.f6039c = str;
    }

    public final void setCallToAction(String str) {
        this.f6041e = str;
    }

    public final void setExtras(Bundle bundle) {
        this.f6051o = bundle;
    }

    public void setHasVideoContent(boolean z) {
        this.f6047k = z;
    }

    public final void setHeadline(String str) {
        this.f6037a = str;
    }

    public final void setIcon(NativeAd.Image image) {
        this.f6040d = image;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.f6038b = list;
    }

    public void setMediaContentAspectRatio(float f) {
        this.f6054r = f;
    }

    public void setMediaView(View view) {
        this.f6049m = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.f6053q = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.f6052p = z;
    }

    public final void setPrice(String str) {
        this.f6045i = str;
    }

    public final void setStarRating(Double d) {
        this.f6043g = d;
    }

    public final void setStore(String str) {
        this.f6044h = str;
    }

    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
    }

    public void untrackView(View view) {
    }

    public final void zza(VideoController videoController) {
        this.f6046j = videoController;
    }

    public final View zzabz() {
        return this.f6049m;
    }

    public final Object zzjo() {
        return this.f6050n;
    }

    public final void zzn(Object obj) {
        this.f6050n = obj;
    }
}
