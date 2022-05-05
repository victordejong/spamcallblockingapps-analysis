package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.gass.AdShield2Logger;
import com.google.android.gms.gass.AdShieldVm;
import com.google.android.gms.gass.internal.Program;
import com.google.android.gms.gass.internal.zzk;
import com.google.android.gms.gass.internal.zzo;
import com.google.android.gms.gass.internal.zzp;
import com.google.android.gms.gass.zzd;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdc.class */
public final class zzdc {

    /* renamed from: a */
    private final Context f14164a;

    /* renamed from: b */
    private final zzk f14165b;

    /* renamed from: c */
    private final AdShieldVm f14166c;

    /* renamed from: d */
    private final AdShield2Logger f14167d;

    /* renamed from: e */
    private final Executor f14168e;

    /* renamed from: f */
    private boolean f14169f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdc(Context context, AdShield2Logger adShield2Logger, zzk zzkVar, AdShieldVm adShieldVm, Executor executor) {
        this.f14164a = context;
        this.f14167d = adShield2Logger;
        this.f14165b = zzkVar;
        this.f14166c = adShieldVm;
        this.f14168e = executor;
    }

    /* renamed from: a */
    private final void m3626a() {
        if (!this.f14169f || (this.f14166c.getProgram() != null && this.f14166c.getProgram().isAlmostExpired())) {
            zzbo();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m3625a(zzdc zzdcVar) {
        String str;
        String str2;
        Program zzdr = zzdcVar.f14165b.zzdr(zzp.zzgtn);
        if (zzdr != null) {
            str = zzdr.getProgramMetadata().zzcx();
            str2 = zzdr.getProgramMetadata().zzcy();
        } else {
            str = null;
            str2 = null;
        }
        try {
            zzo zza = zzd.zza(zzdcVar.f14164a, 1, str, str2, "1", zzdcVar.f14167d);
            if (!(zza.zzgtm == null || zza.zzgtm.length == 0)) {
                zzfy zza2 = zzfy.zza(zzdqk.zzu(zza.zzgtm), zzdrg.zzazi());
                if ((!zza2.zzct().zzcx().isEmpty() && !zza2.zzct().zzcy().isEmpty() && zza2.zzcv().toByteArray().length != 0) && zzdcVar.f14165b.zza(zza2, null) && zzdcVar.f14166c.initializedVmAndProgram(zzdcVar.f14165b.zzdr(zzp.zzgtn)) == null) {
                    zzdcVar.f14169f = true;
                }
            }
        } catch (zzdse e) {
            zzdcVar.f14167d.logException(AdShield2Logger.EVENTID_ERROR_GET_PROGRAM, 0L, e);
        }
    }

    public final String zza(Context context, View view, Activity activity) {
        m3626a();
        if (!zzbn()) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String impressionSignals = this.f14166c.getImpressionSignals(context, null, view, activity);
        this.f14167d.logSignals(AdShield2Logger.EVENTID_VIEW_SIGNALS, System.currentTimeMillis() - currentTimeMillis, impressionSignals, null);
        return impressionSignals;
    }

    public final String zza(Context context, String str, View view, Activity activity) {
        m3626a();
        if (!zzbn()) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String clickSignals = this.f14166c.getClickSignals(context, null, str, view, activity);
        this.f14167d.logSignals(AdShield2Logger.EVENTID_CLICK_SIGNALS, System.currentTimeMillis() - currentTimeMillis, clickSignals, null);
        return clickSignals;
    }

    public final void zza(MotionEvent motionEvent) {
        m3626a();
        if (zzbn()) {
            this.f14166c.reportTouchEvent(null, motionEvent);
        }
    }

    public final String zzb(Context context) {
        m3626a();
        if (!zzbn()) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String querySignals = this.f14166c.getQuerySignals(context, null);
        this.f14167d.logSignals(AdShield2Logger.EVENTID_QUERY_SIGNALS, System.currentTimeMillis() - currentTimeMillis, querySignals, null);
        return querySignals;
    }

    public final boolean zzbn() {
        synchronized (this) {
            if (this.f14169f) {
                return true;
            }
            Program zzdr = this.f14165b.zzdr(zzp.zzgtn);
            if (zzdr != null && !zzdr.isExpired() && this.f14166c.initializedVmAndProgram(zzdr) == null) {
                this.f14169f = true;
            }
            return this.f14169f;
        }
    }

    public final void zzbo() {
        this.f14168e.execute(new abi(this));
    }
}
