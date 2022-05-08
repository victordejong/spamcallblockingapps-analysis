package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzq;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaol.class */
public final class zzaol extends zzaoo implements zzafn<zzbdi> {

    /* renamed from: a */
    private final zzbdi f11113a;

    /* renamed from: b */
    private final Context f11114b;

    /* renamed from: c */
    private final WindowManager f11115c;

    /* renamed from: d */
    private final zzyy f11116d;

    /* renamed from: e */
    private DisplayMetrics f11117e;

    /* renamed from: f */
    private float f11118f;

    /* renamed from: i */
    private int f11121i;

    /* renamed from: g */
    private int f11119g = -1;

    /* renamed from: h */
    private int f11120h = -1;

    /* renamed from: j */
    private int f11122j = -1;

    /* renamed from: k */
    private int f11123k = -1;

    /* renamed from: l */
    private int f11124l = -1;

    /* renamed from: m */
    private int f11125m = -1;

    public zzaol(zzbdi zzbdiVar, Context context, zzyy zzyyVar) {
        super(zzbdiVar);
        this.f11113a = zzbdiVar;
        this.f11114b = context;
        this.f11116d = zzyyVar;
        this.f11115c = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final /* synthetic */ void zza(zzbdi zzbdiVar, Map map) {
        int i;
        this.f11117e = new DisplayMetrics();
        Display defaultDisplay = this.f11115c.getDefaultDisplay();
        defaultDisplay.getMetrics(this.f11117e);
        this.f11118f = this.f11117e.density;
        this.f11121i = defaultDisplay.getRotation();
        zzve.zzou();
        DisplayMetrics displayMetrics = this.f11117e;
        this.f11119g = zzayk.zzb(displayMetrics, displayMetrics.widthPixels);
        zzve.zzou();
        DisplayMetrics displayMetrics2 = this.f11117e;
        this.f11120h = zzayk.zzb(displayMetrics2, displayMetrics2.heightPixels);
        Activity zzyn = this.f11113a.zzyn();
        if (zzyn == null || zzyn.getWindow() == null) {
            this.f11122j = this.f11119g;
            i = this.f11120h;
        } else {
            zzq.zzkq();
            int[] zzd = zzawb.zzd(zzyn);
            zzve.zzou();
            this.f11122j = zzayk.zzb(this.f11117e, zzd[0]);
            zzve.zzou();
            i = zzayk.zzb(this.f11117e, zzd[1]);
        }
        this.f11123k = i;
        if (this.f11113a.zzzy().zzabt()) {
            this.f11124l = this.f11119g;
            this.f11125m = this.f11120h;
        } else {
            this.f11113a.measure(0, 0);
        }
        zza(this.f11119g, this.f11120h, this.f11122j, this.f11123k, this.f11118f, this.f11121i);
        this.f11113a.zzb("onDeviceFeaturesReceived", new zzaok(new zzaom().zzae(this.f11116d.zzqb()).zzad(this.f11116d.zzqc()).zzaf(this.f11116d.zzqe()).zzag(this.f11116d.zzqd()).zzah(true), (byte) 0).zzth());
        int[] iArr = new int[2];
        this.f11113a.getLocationOnScreen(iArr);
        zzj(zzve.zzou().zzb(this.f11114b, iArr[0]), zzve.zzou().zzb(this.f11114b, iArr[1]));
        if (zzavs.isLoggable(2)) {
            zzavs.zzey("Dispatching Ready Event.");
        }
        zzdt(this.f11113a.zzyr().zzbma);
    }

    public final void zzj(int i, int i2) {
        int i3 = 0;
        if (this.f11114b instanceof Activity) {
            i3 = zzq.zzkq().zzf((Activity) this.f11114b)[0];
        }
        if (this.f11113a.zzzy() == null || !this.f11113a.zzzy().zzabt()) {
            int width = this.f11113a.getWidth();
            int height = this.f11113a.getHeight();
            int i4 = width;
            int i5 = height;
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzchq)).booleanValue()) {
                int i6 = width;
                if (width == 0) {
                    i6 = width;
                    if (this.f11113a.zzzy() != null) {
                        i6 = this.f11113a.zzzy().widthPixels;
                    }
                }
                i4 = i6;
                i5 = height;
                if (height == 0) {
                    i4 = i6;
                    i5 = height;
                    if (this.f11113a.zzzy() != null) {
                        i5 = this.f11113a.zzzy().heightPixels;
                        i4 = i6;
                    }
                }
            }
            this.f11124l = zzve.zzou().zzb(this.f11114b, i4);
            this.f11125m = zzve.zzou().zzb(this.f11114b, i5);
        }
        zzc(i, i2 - i3, this.f11124l, this.f11125m);
        this.f11113a.zzaaa().zzi(i, i2);
    }
}
