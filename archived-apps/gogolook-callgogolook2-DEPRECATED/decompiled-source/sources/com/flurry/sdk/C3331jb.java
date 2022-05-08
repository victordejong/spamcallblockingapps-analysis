package com.flurry.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import com.flurry.android.FlurryAgent;
/* renamed from: com.flurry.sdk.jb */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jb.class */
public class C3331jb {

    /* renamed from: e */
    public static final String f5676e = "jb";

    /* renamed from: f */
    public static C3331jb f5677f;

    /* renamed from: i */
    public static boolean f5678i = false;

    /* renamed from: a */
    public final Context f5679a;

    /* renamed from: d */
    public final String f5682d;

    /* renamed from: b */
    public final Handler f5680b = new Handler(Looper.getMainLooper());

    /* renamed from: g */
    public final HandlerThread f5683g = new HandlerThread(FlurryAgent.f3814a);

    /* renamed from: c */
    public final Handler f5681c = new Handler(this.f5683g.getLooper());

    /* renamed from: h */
    public final C3359jt f5684h = new C3359jt();

    public C3331jb(Context context, String str) {
        this.f5679a = context.getApplicationContext();
        this.f5683g.start();
        this.f5682d = str;
    }

    /* renamed from: a */
    public static C3331jb m32681a() {
        return f5677f;
    }

    /* renamed from: a */
    public static void m32680a(Context context, String str) {
        synchronized (C3331jb.class) {
            try {
                if (f5677f != null) {
                    if (f5677f.f5682d.equals(str)) {
                        C3356jq.m32602e(f5676e, "Flurry is already initialized");
                        return;
                    }
                    throw new IllegalStateException("Only one API key per application is supported!");
                } else if (context == null) {
                    throw new IllegalArgumentException("Context cannot be null");
                } else if (!TextUtils.isEmpty(str)) {
                    C3331jb jbVar = new C3331jb(context, str);
                    f5677f = jbVar;
                    jbVar.f5684h.m32601a(context);
                } else {
                    throw new IllegalArgumentException("API key must be specified");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m32676a(boolean z) {
        synchronized (C3331jb.class) {
            try {
                f5678i = z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static boolean m32675b() {
        boolean z;
        synchronized (C3331jb.class) {
            try {
                z = f5678i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* renamed from: a */
    public final AbstractC3360ju m32679a(Class<? extends AbstractC3360ju> cls) {
        return this.f5684h.m32599b(cls);
    }

    /* renamed from: a */
    public final void m32678a(Runnable runnable) {
        this.f5680b.post(runnable);
    }

    /* renamed from: a */
    public final void m32677a(Runnable runnable, long j) {
        if (runnable != null) {
            this.f5681c.postDelayed(runnable, j);
        }
    }

    /* renamed from: b */
    public final void m32674b(Runnable runnable) {
        this.f5681c.post(runnable);
    }

    /* renamed from: c */
    public final void m32673c(Runnable runnable) {
        if (runnable != null) {
            this.f5681c.removeCallbacks(runnable);
        }
    }
}
