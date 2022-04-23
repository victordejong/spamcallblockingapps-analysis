package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.internal.ads.zzawt;
/* renamed from: com.google.android.gms.ads.internal.overlay.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/d.class */
final class C1552d extends RelativeLayout {

    /* renamed from: a */
    boolean f5912a;

    /* renamed from: b */
    private zzawt f5913b;

    public C1552d(Context context, String str, String str2) {
        super(context);
        this.f5913b = new zzawt(context, str);
        this.f5913b.zzx(str2);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f5912a) {
            return false;
        }
        this.f5913b.zzd(motionEvent);
        return false;
    }
}
