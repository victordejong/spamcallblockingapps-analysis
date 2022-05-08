package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjx.class */
public final class zzjx implements zzjf {

    /* renamed from: a */
    private final zzjh f8588a;

    /* renamed from: b */
    private final String f8589b;

    /* renamed from: c */
    private final Object[] f8590c;

    /* renamed from: d */
    private final int f8591d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjx(zzjh zzjhVar, String str, Object[] objArr) {
        this.f8588a = zzjhVar;
        this.f8589b = str;
        this.f8590c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f8591d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3++;
            } else {
                this.f8591d = i | (charAt2 << i2);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final String m12268a() {
        return this.f8589b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final Object[] m12267b() {
        return this.f8590c;
    }

    @Override // com.google.android.gms.internal.measurement.zzjf
    public final int zza() {
        return (this.f8591d & 1) == 1 ? zzjw.f8586a : zzjw.f8587b;
    }

    @Override // com.google.android.gms.internal.measurement.zzjf
    public final boolean zzb() {
        return (this.f8591d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.zzjf
    public final zzjh zzc() {
        return this.f8588a;
    }
}
