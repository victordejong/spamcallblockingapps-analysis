package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.ads.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayl.class */
public final class zzayl {

    /* renamed from: a */
    private final View f11542a;

    /* renamed from: b */
    private Activity f11543b;

    /* renamed from: c */
    private boolean f11544c;

    /* renamed from: d */
    private boolean f11545d;

    /* renamed from: e */
    private boolean f11546e;

    /* renamed from: f */
    private ViewTreeObserver.OnGlobalLayoutListener f11547f;

    /* renamed from: g */
    private ViewTreeObserver.OnScrollChangedListener f11548g = null;

    public zzayl(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.f11543b = activity;
        this.f11542a = view;
        this.f11547f = onGlobalLayoutListener;
    }

    /* renamed from: a */
    private static ViewTreeObserver m4208a(Activity activity) {
        Window window;
        View decorView;
        if (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }

    /* renamed from: a */
    private final void m4209a() {
        ViewTreeObserver a;
        if (!this.f11544c) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f11547f;
            if (onGlobalLayoutListener != null) {
                Activity activity = this.f11543b;
                if (!(activity == null || (a = m4208a(activity)) == null)) {
                    a.addOnGlobalLayoutListener(onGlobalLayoutListener);
                }
                zzq.zzln();
                zzazt.zza(this.f11542a, this.f11547f);
            }
            this.f11544c = true;
        }
    }

    /* renamed from: b */
    private final void m4207b() {
        ViewTreeObserver a;
        Activity activity = this.f11543b;
        if (activity != null && this.f11544c) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f11547f;
            if (!(onGlobalLayoutListener == null || (a = m4208a(activity)) == null)) {
                zzq.zzks();
                a.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            this.f11544c = false;
        }
    }

    public final void onAttachedToWindow() {
        this.f11545d = true;
        if (this.f11546e) {
            m4209a();
        }
    }

    public final void onDetachedFromWindow() {
        this.f11545d = false;
        m4207b();
    }

    public final void zzh(Activity activity) {
        this.f11543b = activity;
    }

    public final void zzxg() {
        this.f11546e = true;
        if (this.f11545d) {
            m4209a();
        }
    }

    public final void zzxh() {
        this.f11546e = false;
        m4207b();
    }
}
