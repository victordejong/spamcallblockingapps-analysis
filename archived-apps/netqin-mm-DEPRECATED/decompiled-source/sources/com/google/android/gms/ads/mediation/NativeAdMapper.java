package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/NativeAdMapper.class */
public class NativeAdMapper {

    /* renamed from: a */
    public boolean f22859a;

    /* renamed from: b */
    public boolean f22860b;

    /* renamed from: c */
    public Bundle f22861c = new Bundle();

    /* renamed from: d */
    public View f22862d;

    /* renamed from: e */
    public View f22863e;

    /* renamed from: f */
    public VideoController f22864f;

    /* renamed from: g */
    public boolean f22865g;

    public View getAdChoicesContent() {
        return this.f22862d;
    }

    public final Bundle getExtras() {
        return this.f22861c;
    }

    public final boolean getOverrideClickHandling() {
        return this.f22860b;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.f22859a;
    }

    public final VideoController getVideoController() {
        return this.f22864f;
    }

    public void handleClick(View view) {
    }

    public boolean hasVideoContent() {
        return this.f22865g;
    }

    public void recordImpression() {
    }

    public void setAdChoicesContent(View view) {
        this.f22862d = view;
    }

    public final void setExtras(Bundle bundle) {
        this.f22861c = bundle;
    }

    public void setHasVideoContent(boolean z) {
        this.f22865g = z;
    }

    public void setMediaView(View view) {
        this.f22863e = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.f22860b = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.f22859a = z;
    }

    @Deprecated
    public void trackView(View view) {
    }

    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
    }

    public void untrackView(View view) {
    }

    public final void zza(VideoController videoController) {
        this.f22864f = videoController;
    }

    public final View zzadh() {
        return this.f22863e;
    }
}
