package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeks.class */
public class zzeks {

    /* renamed from: a */
    public volatile zzelj f28092a;

    /* renamed from: b */
    public volatile zzeip f28093b;

    static {
        zzejm.m12419a();
    }

    /* renamed from: a */
    public final zzeip m12356a() {
        if (this.f28093b != null) {
            return this.f28093b;
        }
        synchronized (this) {
            if (this.f28093b != null) {
                return this.f28093b;
            }
            if (this.f28092a == null) {
                this.f28093b = zzeip.zzier;
            } else {
                this.f28093b = this.f28092a.mo12346j();
            }
            return this.f28093b;
        }
    }

    /* renamed from: a */
    public final zzelj m12355a(zzelj zzeljVar) {
        if (this.f28092a == null) {
            synchronized (this) {
                if (this.f28092a == null) {
                    try {
                        this.f28092a = zzeljVar;
                        this.f28093b = zzeip.zzier;
                    } catch (zzekj e) {
                        this.f28092a = zzeljVar;
                        this.f28093b = zzeip.zzier;
                    }
                }
            }
        }
        return this.f28092a;
    }

    /* renamed from: b */
    public final int m12354b() {
        if (this.f28093b != null) {
            return this.f28093b.size();
        }
        if (this.f28092a != null) {
            return this.f28092a.mo12345k();
        }
        return 0;
    }

    /* renamed from: b */
    public final zzelj m12353b(zzelj zzeljVar) {
        zzelj zzeljVar2 = this.f28092a;
        this.f28093b = null;
        this.f28092a = zzeljVar;
        return zzeljVar2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzeks)) {
            return false;
        }
        zzeks zzeksVar = (zzeks) obj;
        zzelj zzeljVar = this.f28092a;
        zzelj zzeljVar2 = zzeksVar.f28092a;
        return (zzeljVar == null && zzeljVar2 == null) ? m12356a().equals(zzeksVar.m12356a()) : (zzeljVar == null || zzeljVar2 == null) ? zzeljVar != null ? zzeljVar.equals(zzeksVar.m12355a(zzeljVar.mo12344h())) : m12355a(zzeljVar2.mo12344h()).equals(zzeljVar2) : zzeljVar.equals(zzeljVar2);
    }

    public int hashCode() {
        return 1;
    }
}
