package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.dh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dh.class */
public final class RunnableC2727dh implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f16652a;

    /* renamed from: b */
    private final /* synthetic */ String f16653b;

    /* renamed from: c */
    private final /* synthetic */ Object f16654c;

    /* renamed from: d */
    private final /* synthetic */ Object f16655d;

    /* renamed from: e */
    private final /* synthetic */ Object f16656e;

    /* renamed from: f */
    private final /* synthetic */ zzew f16657f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2727dh(zzew zzewVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f16657f = zzewVar;
        this.f16652a = i;
        this.f16653b = str;
        this.f16654c = obj;
        this.f16655d = obj2;
        this.f16656e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c;
        long j;
        char c2;
        long j2;
        char c3;
        zzew zzewVar;
        C2734do zzc = this.f16657f.f16804x.zzc();
        if (!zzc.m2057k()) {
            this.f16657f.m1860a(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        c = this.f16657f.f17139a;
        if (c == 0) {
            if (this.f16657f.zzt().zzf()) {
                zzewVar = this.f16657f;
                zzewVar.zzu();
                c3 = 'C';
            } else {
                zzewVar = this.f16657f;
                zzewVar.zzu();
                c3 = 'c';
            }
            zzewVar.f17139a = c3;
        }
        j = this.f16657f.f17140b;
        if (j < 0) {
            zzew zzewVar2 = this.f16657f;
            zzewVar2.f17140b = zzewVar2.zzt().zze();
        }
        char charAt = "01VDIWEA?".charAt(this.f16652a);
        c2 = this.f16657f.f17139a;
        j2 = this.f16657f.f17140b;
        String a = zzew.m1853a(true, this.f16653b, this.f16654c, this.f16655d, this.f16656e);
        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 24);
        sb.append("2");
        sb.append(charAt);
        sb.append(c2);
        sb.append(j2);
        sb.append(":");
        sb.append(a);
        String sb2 = sb.toString();
        String str = sb2;
        if (sb2.length() > 1024) {
            str = this.f16653b.substring(0, 1024);
        }
        zzc.f16678b.zza(str, 1L);
    }
}
