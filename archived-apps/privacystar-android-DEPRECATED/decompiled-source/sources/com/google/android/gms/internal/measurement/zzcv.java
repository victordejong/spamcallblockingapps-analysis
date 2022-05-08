package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcv.class */
public final class zzcv {
    private final String name;
    private final long zzabv;
    private final /* synthetic */ zzct zzabw;

    private zzcv(zzct zzctVar, String str, long j) {
        this.zzabw = zzctVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkArgument(j > 0);
        this.name = str;
        this.zzabv = j;
    }

    private final void zzfl() {
        SharedPreferences sharedPreferences;
        long currentTimeMillis = this.zzabw.zzbx().currentTimeMillis();
        sharedPreferences = this.zzabw.zzabr;
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.remove(zzfp());
        edit.remove(zzfq());
        edit.putLong(zzfo(), currentTimeMillis);
        edit.commit();
    }

    private final long zzfn() {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.zzabw.zzabr;
        return sharedPreferences.getLong(zzfo(), 0L);
    }

    private final String zzfo() {
        return String.valueOf(this.name).concat(":start");
    }

    private final String zzfp() {
        return String.valueOf(this.name).concat(":count");
    }

    @VisibleForTesting
    private final String zzfq() {
        return String.valueOf(this.name).concat(":value");
    }

    public final void zzad(String str) {
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        SharedPreferences sharedPreferences3;
        if (zzfn() == 0) {
            zzfl();
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        synchronized (this) {
            sharedPreferences = this.zzabw.zzabr;
            long j = sharedPreferences.getLong(zzfp(), 0L);
            if (j <= 0) {
                sharedPreferences3 = this.zzabw.zzabr;
                SharedPreferences.Editor edit = sharedPreferences3.edit();
                edit.putString(zzfq(), str2);
                edit.putLong(zzfp(), 1L);
                edit.apply();
                return;
            }
            long j2 = j + 1;
            boolean z = (UUID.randomUUID().getLeastSignificantBits() & Long.MAX_VALUE) < Long.MAX_VALUE / j2;
            sharedPreferences2 = this.zzabw.zzabr;
            SharedPreferences.Editor edit2 = sharedPreferences2.edit();
            if (z) {
                edit2.putString(zzfq(), str2);
            }
            edit2.putLong(zzfp(), j2);
            edit2.apply();
        }
    }

    public final Pair<String, Long> zzfm() {
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        long zzfn = zzfn();
        long abs = zzfn == 0 ? 0L : Math.abs(zzfn - this.zzabw.zzbx().currentTimeMillis());
        if (abs < this.zzabv) {
            return null;
        }
        if (abs > (this.zzabv << 1)) {
            zzfl();
            return null;
        }
        sharedPreferences = this.zzabw.zzabr;
        String string = sharedPreferences.getString(zzfq(), null);
        sharedPreferences2 = this.zzabw.zzabr;
        long j = sharedPreferences2.getLong(zzfp(), 0L);
        zzfl();
        if (string == null || j <= 0) {
            return null;
        }
        return new Pair<>(string, Long.valueOf(j));
    }
}
