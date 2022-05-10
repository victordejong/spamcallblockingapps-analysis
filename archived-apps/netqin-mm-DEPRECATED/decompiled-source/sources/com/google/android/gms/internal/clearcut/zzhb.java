package com.google.android.gms.internal.clearcut;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzhb.class */
public final class zzhb extends zzfu<zzhb> implements Cloneable {

    /* renamed from: e */
    public static volatile zzhb[] f29320e;

    /* renamed from: c */
    public String f29321c = "";

    /* renamed from: d */
    public String f29322d = "";

    public zzhb() {
        this.f29280b = null;
        this.f29286a = -1;
    }

    /* renamed from: k */
    public static zzhb[] m10558k() {
        if (f29320e == null) {
            synchronized (zzfy.f29285a) {
                if (f29320e == null) {
                    f29320e = new zzhb[0];
                }
            }
        }
        return f29320e;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: a */
    public final void mo10563a(zzfs zzfsVar) throws IOException {
        String str = this.f29321c;
        if (str != null && !str.equals("")) {
            zzfsVar.m10651a(1, this.f29321c);
        }
        String str2 = this.f29322d;
        if (str2 != null && !str2.equals("")) {
            zzfsVar.m10651a(2, this.f29322d);
        }
        super.mo10563a(zzfsVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: e */
    public final int mo10562e() {
        int e = super.mo10562e();
        String str = this.f29321c;
        int i = e;
        if (str != null) {
            i = e;
            if (!str.equals("")) {
                i = e + zzfs.m10638b(1, this.f29321c);
            }
        }
        String str2 = this.f29322d;
        int i2 = i;
        if (str2 != null) {
            i2 = i;
            if (!str2.equals("")) {
                i2 = i + zzfs.m10638b(2, this.f29322d);
            }
        }
        return i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzhb)) {
            return false;
        }
        zzhb zzhbVar = (zzhb) obj;
        String str = this.f29321c;
        if (str == null) {
            if (zzhbVar.f29321c != null) {
                return false;
            }
        } else if (!str.equals(zzhbVar.f29321c)) {
            return false;
        }
        String str2 = this.f29322d;
        if (str2 == null) {
            if (zzhbVar.f29322d != null) {
                return false;
            }
        } else if (!str2.equals(zzhbVar.f29322d)) {
            return false;
        }
        zzfw zzfwVar = this.f29280b;
        if (zzfwVar != null && !zzfwVar.m10629c()) {
            return this.f29280b.equals(zzhbVar.f29280b);
        }
        zzfw zzfwVar2 = zzhbVar.f29280b;
        return zzfwVar2 == null || zzfwVar2.m10629c();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: g */
    public final /* synthetic */ zzfz mo10561g() throws CloneNotSupportedException {
        return (zzhb) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    /* renamed from: h */
    public final /* synthetic */ zzhb mo10560h() throws CloneNotSupportedException {
        return (zzhb) clone();
    }

    public final int hashCode() {
        int hashCode = zzhb.class.getName().hashCode();
        String str = this.f29321c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.f29322d;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        zzfw zzfwVar = this.f29280b;
        int i = 0;
        if (zzfwVar != null) {
            i = zzfwVar.m10629c() ? 0 : this.f29280b.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    /* renamed from: j */
    public final zzhb clone() {
        try {
            return (zzhb) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }
}
