package com.google.android.gms.internal.ads;

import androidx.p026b.C0542i;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwz.class */
public final class zzbwz {
    public static final zzbwz zzfmx = new zzbxb().zzajw();

    /* renamed from: a */
    private final zzadj f12608a;

    /* renamed from: b */
    private final zzadi f12609b;

    /* renamed from: c */
    private final zzadv f12610c;

    /* renamed from: d */
    private final zzadu f12611d;

    /* renamed from: e */
    private final zzahh f12612e;

    /* renamed from: f */
    private final C0542i<String, zzadp> f12613f;

    /* renamed from: g */
    private final C0542i<String, zzado> f12614g;

    private zzbwz(zzbxb zzbxbVar) {
        this.f12608a = zzbxbVar.f12615a;
        this.f12609b = zzbxbVar.f12616b;
        this.f12610c = zzbxbVar.f12617c;
        this.f12613f = new C0542i<>(zzbxbVar.f12620f);
        this.f12614g = new C0542i<>(zzbxbVar.f12621g);
        this.f12611d = zzbxbVar.f12618d;
        this.f12612e = zzbxbVar.f12619e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzbwz(zzbxb zzbxbVar, byte b) {
        this(zzbxbVar);
    }

    public final zzadj zzajp() {
        return this.f12608a;
    }

    public final zzadi zzajq() {
        return this.f12609b;
    }

    public final zzadv zzajr() {
        return this.f12610c;
    }

    public final zzadu zzajs() {
        return this.f12611d;
    }

    public final zzahh zzajt() {
        return this.f12612e;
    }

    public final ArrayList<String> zzaju() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f12610c != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.f12608a != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.f12609b != null) {
            arrayList.add(Integer.toString(2));
        }
        if (this.f12613f.size() > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (this.f12612e != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    public final ArrayList<String> zzajv() {
        ArrayList<String> arrayList = new ArrayList<>(this.f12613f.size());
        for (int i = 0; i < this.f12613f.size(); i++) {
            arrayList.add(this.f12613f.m8905b(i));
        }
        return arrayList;
    }

    public final zzadp zzfz(String str) {
        return this.f12613f.get(str);
    }

    public final zzado zzga(String str) {
        return this.f12614g.get(str);
    }
}
