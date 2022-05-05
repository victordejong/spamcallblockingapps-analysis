package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzq;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawt.class */
public final class zzawt {

    /* renamed from: a */
    private final Context f11475a;

    /* renamed from: b */
    private String f11476b;

    /* renamed from: c */
    private String f11477c;

    /* renamed from: d */
    private String f11478d;

    /* renamed from: e */
    private String f11479e;

    /* renamed from: f */
    private int f11480f;

    /* renamed from: g */
    private int f11481g;

    /* renamed from: h */
    private PointF f11482h;

    /* renamed from: i */
    private PointF f11483i;

    /* renamed from: j */
    private Handler f11484j;

    /* renamed from: k */
    private Runnable f11485k;

    public zzawt(Context context) {
        this.f11480f = 0;
        this.f11485k = new Runnable(this) { // from class: com.google.android.gms.internal.ads.fa

            /* renamed from: a */
            private final zzawt f8452a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8452a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8452a.m4234c();
            }
        };
        this.f11475a = context;
        this.f11481g = ViewConfiguration.get(context).getScaledTouchSlop();
        zzq.zzle().zzxb();
        this.f11484j = zzq.zzle().getHandler();
    }

    public zzawt(Context context, String str) {
        this(context);
        this.f11476b = str;
    }

    /* renamed from: a */
    private static int m4236a(List<String> list, String str) {
        list.add(str);
        return list.size() - 1;
    }

    /* renamed from: a */
    private final boolean m4239a(float f, float f2, float f3, float f4) {
        return Math.abs(this.f11482h.x - f) < ((float) this.f11481g) && Math.abs(this.f11482h.y - f2) < ((float) this.f11481g) && Math.abs(this.f11483i.x - f3) < ((float) this.f11481g) && Math.abs(this.f11483i.y - f4) < ((float) this.f11481g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4240a() {
        zzq.zzla().zza(this.f11475a, this.f11477c, this.f11478d, this.f11479e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00b4, code lost:
        if (android.text.TextUtils.isEmpty(r12) == false) goto L_0x00be;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void m4238a(int r8, int r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzawt.m4238a(int, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4237a(String str) {
        zzq.zzkq();
        zzawb.zza(this.f11475a, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m4235b() {
        zzq.zzla().zze(this.f11475a, this.f11477c, this.f11478d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final /* synthetic */ void m4234c() {
        this.f11480f = 4;
        showDialog();
    }

    public final void setAdUnitId(String str) {
        this.f11477c = str;
    }

    public final void showDialog() {
        try {
            if (!(this.f11475a instanceof Activity)) {
                zzavs.zzey("Can not create dialog without Activity Context");
                return;
            }
            String str = !TextUtils.isEmpty(zzq.zzla().zzwx()) ? "Creative Preview (Enabled)" : "Creative Preview";
            String str2 = zzq.zzla().zzwy() ? "Troubleshooting (Enabled)" : "Troubleshooting";
            ArrayList arrayList = new ArrayList();
            final int a = m4236a(arrayList, "Ad Information");
            final int a2 = m4236a(arrayList, str);
            final int a3 = m4236a(arrayList, str2);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.f11475a, zzq.zzks().zzwr());
            builder.setTitle("Select a Debug Mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener(this, a, a2, a3) { // from class: com.google.android.gms.internal.ads.fc

                /* renamed from: a */
                private final zzawt f8455a;

                /* renamed from: b */
                private final int f8456b;

                /* renamed from: c */
                private final int f8457c;

                /* renamed from: d */
                private final int f8458d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8455a = this;
                    this.f8456b = a;
                    this.f8457c = a2;
                    this.f8458d = a3;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f8455a.m4238a(this.f8456b, this.f8457c, this.f8458d, i);
                }
            });
            builder.create().show();
        } catch (WindowManager.BadTokenException e) {
            zzavs.zza("", e);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.f11476b);
        sb.append(",DebugSignal: ");
        sb.append(this.f11479e);
        sb.append(",AFMA Version: ");
        sb.append(this.f11478d);
        sb.append(",Ad Unit ID: ");
        sb.append(this.f11477c);
        sb.append("}");
        return sb.toString();
    }

    public final void zzd(MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.f11480f = 0;
            this.f11482h = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i = this.f11480f;
        if (i != -1) {
            if (i == 0 && actionMasked == 5) {
                this.f11480f = 5;
                this.f11483i = new PointF(motionEvent.getX(1), motionEvent.getY(1));
                this.f11484j.postDelayed(this.f11485k, ((Long) zzve.zzoy().zzd(zzzn.zzcnl)).longValue());
            } else if (this.f11480f == 5) {
                if (pointerCount != 2) {
                    z = true;
                } else if (actionMasked == 2) {
                    z = false;
                    for (int i2 = 0; i2 < historySize; i2++) {
                        if (!m4239a(motionEvent.getHistoricalX(0, i2), motionEvent.getHistoricalY(0, i2), motionEvent.getHistoricalX(1, i2), motionEvent.getHistoricalY(1, i2))) {
                            z = true;
                        }
                    }
                    if (!m4239a(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1))) {
                        z = true;
                    }
                } else {
                    z = false;
                }
                if (z) {
                    this.f11480f = -1;
                    this.f11484j.removeCallbacks(this.f11485k);
                }
            }
        }
    }

    public final void zzeo(String str) {
        this.f11476b = str;
    }

    public final void zzep(String str) {
        this.f11479e = str;
    }

    public final void zzx(String str) {
        this.f11478d = str;
    }
}
