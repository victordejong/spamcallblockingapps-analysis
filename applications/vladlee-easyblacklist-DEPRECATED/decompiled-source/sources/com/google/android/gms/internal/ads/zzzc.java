package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzc.class */
public abstract class zzzc<T> {

    /* renamed from: a */
    private final int f15696a;

    /* renamed from: b */
    private final String f15697b;

    /* renamed from: c */
    private final T f15698c;

    private zzzc(int i, String str, T t) {
        this.f15696a = i;
        this.f15697b = str;
        this.f15698c = t;
        zzve.zzox().zza(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzzc(int i, String str, Object obj, byte b) {
        this(i, str, obj);
    }

    public static zzzc<Float> zza(int i, String str, float f) {
        return new asn(str, Float.valueOf(0.0f));
    }

    public static zzzc<Integer> zza(int i, String str, int i2) {
        return new asl(str, Integer.valueOf(i2));
    }

    public static zzzc<Long> zza(int i, String str, long j) {
        return new ask(str, Long.valueOf(j));
    }

    public static zzzc<Boolean> zza(int i, String str, Boolean bool) {
        return new asj(i, str, bool);
    }

    public static zzzc<String> zza(int i, String str, String str2) {
        return new asm(str, str2);
    }

    public static zzzc<String> zzb(int i, String str) {
        zzzc<String> zza = zza(1, str, (String) null);
        zzve.zzox().zzc(zza);
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract T mo2957a(SharedPreferences sharedPreferences);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract T mo2956a(JSONObject jSONObject);

    public final String getKey() {
        return this.f15697b;
    }

    public final int getSource() {
        return this.f15696a;
    }

    public abstract T zza(Bundle bundle);

    public abstract void zza(SharedPreferences.Editor editor, T t);

    public final T zzqf() {
        return this.f15698c;
    }
}
