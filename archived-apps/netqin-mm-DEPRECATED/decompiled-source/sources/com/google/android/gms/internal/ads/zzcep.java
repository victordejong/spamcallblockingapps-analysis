package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import p012b.p035f.C0793g;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcep.class */
public final class zzcep {

    /* renamed from: h */
    public static final zzcep f25876h = new zzcer().m14653a();

    /* renamed from: a */
    public final zzaff f25877a;

    /* renamed from: b */
    public final zzafe f25878b;

    /* renamed from: c */
    public final zzaft f25879c;

    /* renamed from: d */
    public final zzafs f25880d;

    /* renamed from: e */
    public final zzajk f25881e;

    /* renamed from: f */
    public final C0793g<String, zzafl> f25882f;

    /* renamed from: g */
    public final C0793g<String, zzafk> f25883g;

    public zzcep(zzcer zzcerVar) {
        this.f25877a = zzcerVar.f25884a;
        this.f25878b = zzcerVar.f25885b;
        this.f25879c = zzcerVar.f25886c;
        this.f25882f = new C0793g<>(zzcerVar.f25889f);
        this.f25883g = new C0793g<>(zzcerVar.f25890g);
        this.f25880d = zzcerVar.f25887d;
        this.f25881e = zzcerVar.f25888e;
    }

    /* renamed from: a */
    public final zzaff m14662a() {
        return this.f25877a;
    }

    /* renamed from: a */
    public final zzafl m14661a(String str) {
        return this.f25882f.get(str);
    }

    /* renamed from: b */
    public final zzafe m14660b() {
        return this.f25878b;
    }

    /* renamed from: b */
    public final zzafk m14659b(String str) {
        return this.f25883g.get(str);
    }

    /* renamed from: c */
    public final zzaft m14658c() {
        return this.f25879c;
    }

    /* renamed from: d */
    public final zzafs m14657d() {
        return this.f25880d;
    }

    /* renamed from: e */
    public final zzajk m14656e() {
        return this.f25881e;
    }

    /* renamed from: f */
    public final ArrayList<String> m14655f() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f25879c != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.f25877a != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.f25878b != null) {
            arrayList.add(Integer.toString(2));
        }
        if (this.f25882f.size() > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (this.f25881e != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    /* renamed from: g */
    public final ArrayList<String> m14654g() {
        ArrayList<String> arrayList = new ArrayList<>(this.f25882f.size());
        for (int i = 0; i < this.f25882f.size(); i++) {
            arrayList.add(this.f25882f.m36013c(i));
        }
        return arrayList;
    }
}
