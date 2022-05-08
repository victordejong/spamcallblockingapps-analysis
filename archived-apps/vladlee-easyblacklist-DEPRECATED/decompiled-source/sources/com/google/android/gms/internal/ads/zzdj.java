package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzbs;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdj.class */
public abstract class zzdj implements zzdg {

    /* renamed from: b */
    protected static volatile zzei f14340b;

    /* renamed from: a */
    private double f14341a;

    /* renamed from: c */
    protected MotionEvent f14342c;

    /* renamed from: l */
    protected double f14351l;

    /* renamed from: m */
    protected float f14352m;

    /* renamed from: n */
    protected float f14353n;

    /* renamed from: o */
    protected float f14354o;

    /* renamed from: p */
    protected float f14355p;

    /* renamed from: r */
    protected DisplayMetrics f14357r;

    /* renamed from: s */
    private double f14358s;

    /* renamed from: d */
    protected LinkedList<MotionEvent> f14343d = new LinkedList<>();

    /* renamed from: e */
    protected long f14344e = 0;

    /* renamed from: f */
    protected long f14345f = 0;

    /* renamed from: g */
    protected long f14346g = 0;

    /* renamed from: h */
    protected long f14347h = 0;

    /* renamed from: i */
    protected long f14348i = 0;

    /* renamed from: j */
    protected long f14349j = 0;

    /* renamed from: k */
    protected long f14350k = 0;

    /* renamed from: t */
    private boolean f14359t = false;

    /* renamed from: q */
    protected boolean f14356q = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzdj(Context context) {
        try {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzclj)).booleanValue()) {
                C2249ti.m4473a();
            } else {
                alw.m4941a(f14340b);
            }
            this.f14357r = context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x014d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String m3515a(android.content.Context r9, java.lang.String r10, int r11, android.view.View r12, android.app.Activity r13) {
        /*
            Method dump skipped, instructions count: 547
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdj.m3515a(android.content.Context, java.lang.String, int, android.view.View, android.app.Activity):java.lang.String");
    }

    /* renamed from: a */
    private final void m3518a() {
        this.f14348i = 0L;
        this.f14344e = 0L;
        this.f14345f = 0L;
        this.f14346g = 0L;
        this.f14347h = 0L;
        this.f14349j = 0L;
        this.f14350k = 0L;
        if (this.f14343d.size() > 0) {
            Iterator<MotionEvent> it = this.f14343d.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.f14343d.clear();
        } else {
            MotionEvent motionEvent = this.f14342c;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.f14342c = null;
    }

    /* renamed from: a */
    protected abstract long mo3513a(StackTraceElement[] stackTraceElementArr);

    /* renamed from: a */
    protected abstract zzbs.zza.zzb mo3517a(Context context);

    /* renamed from: a */
    protected abstract zzbs.zza.zzb mo3516a(Context context, View view, Activity activity);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract zzeq mo3514a(MotionEvent motionEvent);

    /* renamed from: b */
    protected abstract zzbs.zza.zzb mo3512b(Context context, View view, Activity activity);

    @Override // com.google.android.gms.internal.ads.zzdg
    public String zza(Context context, View view, Activity activity) {
        return m3515a(context, null, alr.f7578b, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public String zza(Context context, String str, View view, Activity activity) {
        return m3515a(context, str, alr.f7579c, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public void zza(int i, int i2, int i3) {
        MotionEvent motionEvent;
        if (this.f14342c != null) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzckw)).booleanValue()) {
                m3518a();
            } else {
                this.f14342c.recycle();
            }
        }
        DisplayMetrics displayMetrics = this.f14357r;
        if (displayMetrics != null) {
            motionEvent = MotionEvent.obtain(0L, i3, 1, i * displayMetrics.density, this.f14357r.density * i2, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        } else {
            motionEvent = null;
        }
        this.f14342c = motionEvent;
        this.f14356q = false;
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public void zza(MotionEvent motionEvent) {
        if (this.f14359t) {
            m3518a();
            this.f14359t = false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f14351l = 0.0d;
            this.f14341a = motionEvent.getRawX();
            this.f14358s = motionEvent.getRawY();
        } else if (action == 1 || action == 2) {
            double rawX = motionEvent.getRawX();
            double rawY = motionEvent.getRawY();
            double d = rawX - this.f14341a;
            double d2 = rawY - this.f14358s;
            this.f14351l += Math.sqrt((d * d) + (d2 * d2));
            this.f14341a = rawX;
            this.f14358s = rawY;
        }
        int action2 = motionEvent.getAction();
        if (action2 != 0) {
            try {
                if (action2 == 1) {
                    this.f14342c = MotionEvent.obtain(motionEvent);
                    this.f14343d.add(this.f14342c);
                    if (this.f14343d.size() > 6) {
                        this.f14343d.remove().recycle();
                    }
                    this.f14346g++;
                    this.f14348i = mo3513a(new Throwable().getStackTrace());
                } else if (action2 == 2) {
                    this.f14345f += motionEvent.getHistorySize() + 1;
                    zzeq a = mo3514a(motionEvent);
                    if ((a.zzym == null || a.zzyp == null) ? false : true) {
                        this.f14349j += a.zzym.longValue() + a.zzyp.longValue();
                    }
                    boolean z = false;
                    if (this.f14357r != null) {
                        z = false;
                        if (a.zzyn != null) {
                            z = false;
                            if (a.zzyq != null) {
                                z = true;
                            }
                        }
                    }
                    if (z) {
                        this.f14350k += a.zzyn.longValue() + a.zzyq.longValue();
                    }
                } else if (action2 == 3) {
                    this.f14347h++;
                }
            } catch (zzeh e) {
            }
        } else {
            this.f14352m = motionEvent.getX();
            this.f14353n = motionEvent.getY();
            this.f14354o = motionEvent.getRawX();
            this.f14355p = motionEvent.getRawY();
            this.f14344e++;
        }
        this.f14356q = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public String zzb(Context context) {
        if (zzep.isMainThread()) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcll)).booleanValue()) {
                throw new IllegalStateException("The caller must not be called from the UI thread.");
            }
        }
        return m3515a(context, null, alr.f7577a, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public void zzb(View view) {
    }
}
