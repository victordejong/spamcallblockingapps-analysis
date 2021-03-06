package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/zzm.class */
public final class zzm implements zzn {
    private final PendingIntent zzat;
    private final Context zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzm(Context context) {
        this.zzk = context;
        this.zzat = PendingIntent.getBroadcast(context, 0, new Intent().setPackage("com.google.example.invalidpackage"), 0);
    }

    private final Intent zzh(String str) {
        Intent intent = new Intent("com.google.android.gms.gcm.ACTION_SCHEDULE");
        intent.setPackage("com.google.android.gms");
        intent.putExtra(SettingsJsonConstants.APP_KEY, this.zzat);
        intent.putExtra(FirebaseAnalytics.Param.SOURCE, 4);
        intent.putExtra("source_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        intent.putExtra("scheduler_action", str);
        return intent;
    }

    @Override // com.google.android.gms.gcm.zzn
    public final boolean zzd(ComponentName componentName) {
        Intent zzh = zzh("CANCEL_ALL");
        zzh.putExtra("component", componentName);
        this.zzk.sendBroadcast(zzh);
        return true;
    }

    @Override // com.google.android.gms.gcm.zzn
    public final boolean zzd(ComponentName componentName, String str) {
        Intent zzh = zzh("CANCEL_TASK");
        zzh.putExtra("component", componentName);
        zzh.putExtra("tag", str);
        this.zzk.sendBroadcast(zzh);
        return true;
    }

    @Override // com.google.android.gms.gcm.zzn
    public final boolean zzd(Task task) {
        Intent zzh = zzh("SCHEDULE_TASK");
        Bundle bundle = new Bundle();
        task.toBundle(bundle);
        zzh.putExtras(bundle);
        this.zzk.sendBroadcast(zzh);
        return true;
    }
}
