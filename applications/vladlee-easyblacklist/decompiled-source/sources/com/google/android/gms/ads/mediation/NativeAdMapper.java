package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/NativeAdMapper.class */
public class NativeAdMapper {

    /* renamed from: a */
    protected boolean f6016a;

    /* renamed from: b */
    protected boolean f6017b;

    /* renamed from: c */
    protected Bundle f6018c = new Bundle();

    /* renamed from: d */
    protected View f6019d;

    /* renamed from: e */
    private View f6020e;

    /* renamed from: f */
    private VideoController f6021f;

    /* renamed from: g */
    private boolean f6022g;

    public View getAdChoicesContent() {
        return this.f6019d;
    }

    public final Bundle getExtras() {
        return this.f6018c;
    }

    public final boolean getOverrideClickHandling() {
        return this.f6017b;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.f6016a;
    }

    public final VideoController getVideoController() {
        return this.f6021f;
    }

    public void handleClick(View view) {
    }

    public boolean hasVideoContent() {
        return this.f6022g;
    }

    public void recordImpression() {
    }

    public void setAdChoicesContent(View view) {
        this.f6019d = view;
    }

    public final void setExtras(Bundle bundle) {
        this.f6018c = bundle;
    }

    public void setHasVideoContent(boolean z) {
        this.f6022g = z;
    }

    public void setMediaView(View view) {
        this.f6020e = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.f6017b = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.f6016a = z;
    }

    @Deprecated
    public void trackView(View view) {
    }

    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
    }

    public void untrackView(View view) {
    }

    public final void zza(VideoController videoController) {
        this.f6021f = videoController;
    }

    public final View zzabz() {
        return this.f6020e;
    }
}
