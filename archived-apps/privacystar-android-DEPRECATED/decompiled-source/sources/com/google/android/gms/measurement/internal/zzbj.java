package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.MainThread;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbj.class */
public final class zzbj {
    private final zzbm zzaoi;

    public zzbj(zzbm zzbmVar) {
        Preconditions.checkNotNull(zzbmVar);
        this.zzaoi = zzbmVar;
    }

    public static boolean zza(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.checkNotNull(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) == null) {
                return false;
            }
            return receiverInfo.enabled;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    @MainThread
    public final void onReceive(Context context, Intent intent) {
        zzbt zza = zzbt.zza(context, (zzak) null);
        zzap zzgo = zza.zzgo();
        if (intent == null) {
            zzgo.zzjg().zzbx("Receiver called with null intent");
            return;
        }
        zza.zzgr();
        String action = intent.getAction();
        zzgo.zzjl().zzg("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            zzgo.zzjl().zzbx("Starting wakeful intent.");
            this.zzaoi.doStartService(context, className);
        } else if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            try {
                zza.zzgn().zzc(new zzbk(this, zza, zzgo));
            } catch (Exception e) {
                zzgo.zzjg().zzg("Install Referrer Reporter encountered a problem", e);
            }
            BroadcastReceiver.PendingResult doGoAsync = this.zzaoi.doGoAsync();
            String stringExtra = intent.getStringExtra("referrer");
            if (stringExtra == null) {
                zzgo.zzjl().zzbx("Install referrer extras are null");
                if (doGoAsync != null) {
                    doGoAsync.finish();
                    return;
                }
                return;
            }
            zzgo.zzjj().zzg("Install referrer extras are", stringExtra);
            String str = stringExtra;
            if (!stringExtra.contains("?")) {
                String valueOf = String.valueOf(stringExtra);
                str = valueOf.length() != 0 ? "?".concat(valueOf) : new String("?");
            }
            Bundle zza2 = zza.zzgm().zza(Uri.parse(str));
            if (zza2 == null) {
                zzgo.zzjl().zzbx("No campaign defined in install referrer broadcast");
                if (doGoAsync != null) {
                    doGoAsync.finish();
                    return;
                }
                return;
            }
            long longExtra = intent.getLongExtra("referrer_timestamp_seconds", 0L) * 1000;
            if (longExtra == 0) {
                zzgo.zzjg().zzbx("Install referrer is missing timestamp");
            }
            zza.zzgn().zzc(new zzbl(this, zza, longExtra, zza2, context, zzgo, doGoAsync));
        }
    }
}
