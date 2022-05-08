package com.google.android.gms.tagmanager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.privacystar.core.util.DateUtil;
import java.util.Random;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzai.class */
public final class zzai {
    private final String zzazf;
    private final Random zzbal;
    private final Context zzri;

    public zzai(Context context, String str) {
        this(context, str, new Random());
    }

    @VisibleForTesting
    private zzai(Context context, String str, Random random) {
        this.zzri = (Context) Preconditions.checkNotNull(context);
        this.zzazf = (String) Preconditions.checkNotNull(str);
        this.zzbal = random;
    }

    private final long zzd(long j, long j2) {
        SharedPreferences zznu = zznu();
        long max = Math.max(0L, zznu.getLong("FORBIDDEN_COUNT", 0L));
        return this.zzbal.nextFloat() * ((float) (j + ((((float) max) / ((float) ((max + Math.max(0L, zznu.getLong("SUCCESSFUL_COUNT", 0L))) + 1))) * ((float) (j2 - j)))));
    }

    private final SharedPreferences zznu() {
        Context context = this.zzri;
        String valueOf = String.valueOf("_gtmContainerRefreshPolicy_");
        String valueOf2 = String.valueOf(this.zzazf);
        return context.getSharedPreferences(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), 0);
    }

    public final long zznq() {
        return zzd(7200000L, 259200000L) + 43200000;
    }

    public final long zznr() {
        return zzd(600000L, DateUtil.DAY_IN_MILLIS) + DateUtil.HOUR_IN_MILLIS;
    }

    @SuppressLint({"CommitPrefEdits"})
    public final void zzns() {
        SharedPreferences zznu = zznu();
        long j = zznu.getLong("FORBIDDEN_COUNT", 0L);
        long j2 = zznu.getLong("SUCCESSFUL_COUNT", 0L);
        SharedPreferences.Editor edit = zznu.edit();
        long min = j == 0 ? 3L : Math.min(10L, j + 1);
        long max = Math.max(0L, Math.min(j2, 10 - min));
        edit.putLong("FORBIDDEN_COUNT", min);
        edit.putLong("SUCCESSFUL_COUNT", max);
        edit.apply();
    }

    @SuppressLint({"CommitPrefEdits"})
    public final void zznt() {
        SharedPreferences zznu = zznu();
        long j = zznu.getLong("SUCCESSFUL_COUNT", 0L);
        long j2 = zznu.getLong("FORBIDDEN_COUNT", 0L);
        long min = Math.min(10L, j + 1);
        long max = Math.max(0L, Math.min(j2, 10 - min));
        SharedPreferences.Editor edit = zznu.edit();
        edit.putLong("SUCCESSFUL_COUNT", min);
        edit.putLong("FORBIDDEN_COUNT", max);
        edit.apply();
    }
}
