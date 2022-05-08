package com.aotter.net.trek.ads.impression;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.trek.util.TrekLog;
import java.lang.ref.WeakReference;
/* renamed from: com.aotter.net.trek.ads.impression.c */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/impression/c.class */
public class C1673c {

    /* renamed from: c */
    public static final int f1211c = 1000;

    /* renamed from: d */
    public static int f1212d = 50;
    @NonNull

    /* renamed from: a */
    public final WeakReference<View> f1213a;
    @Nullable

    /* renamed from: b */
    public ViewTreeObserver.OnPreDrawListener f1214b;
    @Nullable

    /* renamed from: e */
    public AbstractC1677g f1215e;
    @NonNull

    /* renamed from: f */
    public View f1216f;
    @NonNull

    /* renamed from: g */
    public final C1675e f1217g;
    @NonNull

    /* renamed from: h */
    public final RunnableC1676f f1218h;
    @NonNull

    /* renamed from: i */
    public final Handler f1219i;

    /* renamed from: j */
    public boolean f1220j;

    public C1673c(@NonNull Activity activity, View view) {
        this(activity, view, new C1675e(), new Handler());
    }

    public C1673c(@NonNull Activity activity, View view, C1675e eVar, Handler handler) {
        this.f1216f = view;
        this.f1217g = eVar;
        this.f1219i = handler;
        this.f1218h = new RunnableC1676f(this);
        View decorView = activity.getWindow().getDecorView();
        this.f1213a = new WeakReference<>(decorView);
        ViewTreeObserver viewTreeObserver = decorView.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            TrekLog.m36311w("Visibility Tracker was unable to track views because the root view tree observer was not alive");
            return;
        }
        this.f1214b = new ViewTreeObserver$OnPreDrawListenerC1674d(this);
        viewTreeObserver.addOnPreDrawListener(this.f1214b);
    }

    /* renamed from: a */
    public void m36547a() {
        if (!this.f1220j) {
            this.f1220j = true;
            this.f1219i.postDelayed(this.f1218h, 1000L);
        }
    }

    /* renamed from: a */
    public void m36546a(@NonNull View view) {
        this.f1216f = null;
        this.f1219i.removeMessages(0);
    }

    /* renamed from: a */
    public void m36543a(@Nullable AbstractC1677g gVar) {
        this.f1215e = gVar;
    }

    /* renamed from: b */
    public void m36542b() {
        this.f1216f = null;
        this.f1219i.removeMessages(0);
        this.f1220j = false;
    }

    /* renamed from: c */
    public void m36540c() {
        m36542b();
        View view = this.f1213a.get();
        if (!(view == null || this.f1214b == null)) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f1214b);
            }
            this.f1214b = null;
        }
        this.f1215e = null;
    }

    public void setDetectPercent(double d) {
        f1212d = (int) (d * 100.0d);
    }
}
