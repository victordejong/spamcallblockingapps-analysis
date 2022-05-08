package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.ca */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ca.class */
public final class C2519ca {

    /* renamed from: a */
    private final zzen f15910a;

    /* renamed from: b */
    private final byte[] f15911b;

    private C2519ca(int i) {
        this.f15911b = new byte[i];
        this.f15910a = zzen.zza(this.f15911b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2519ca(int i, byte b) {
        this(i);
    }

    /* renamed from: a */
    public final zzdu m2892a() {
        this.f15910a.zzb();
        return new C2520cb(this.f15911b);
    }

    /* renamed from: b */
    public final zzen m2891b() {
        return this.f15910a;
    }
}
