package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
import javax.annotation.Nullable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p273n.C8492h;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/icing/zzs.class */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new C8492h();

    /* renamed from: a */
    public final String f6841a;

    /* renamed from: b */
    public final String f6842b;

    /* renamed from: c */
    public final boolean f6843c;

    /* renamed from: d */
    public final int f6844d;

    /* renamed from: e */
    public final boolean f6845e;

    /* renamed from: f */
    public final String f6846f;
    @Nullable

    /* renamed from: g */
    public final zzn[] f6847g;

    /* renamed from: h */
    public final String f6848h;

    /* renamed from: i */
    public final zzv f6849i;

    public zzs(String str, String str2, boolean z, int i, boolean z2, String str3, zzn[] zznVarArr, String str4, zzv zzvVar) {
        this.f6841a = str;
        this.f6842b = str2;
        this.f6843c = z;
        this.f6844d = i;
        this.f6845e = z2;
        this.f6846f = str3;
        this.f6847g = zznVarArr;
        this.f6848h = str4;
        this.f6849i = zzvVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzs)) {
            return false;
        }
        zzs zzsVar = (zzs) obj;
        return this.f6843c == zzsVar.f6843c && this.f6844d == zzsVar.f6844d && this.f6845e == zzsVar.f6845e && C7018s.m21297a(this.f6841a, zzsVar.f6841a) && C7018s.m21297a(this.f6842b, zzsVar.f6842b) && C7018s.m21297a(this.f6846f, zzsVar.f6846f) && C7018s.m21297a(this.f6848h, zzsVar.f6848h) && C7018s.m21297a(this.f6849i, zzsVar.f6849i) && Arrays.equals(this.f6847g, zzsVar.f6847g);
    }

    public final int hashCode() {
        return C7018s.m21296a(this.f6841a, this.f6842b, Boolean.valueOf(this.f6843c), Integer.valueOf(this.f6844d), Boolean.valueOf(this.f6845e), this.f6846f, Integer.valueOf(Arrays.hashCode(this.f6847g)), this.f6848h, this.f6849i);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 1, this.f6841a, false);
        C7031b.m21215a(parcel, 2, this.f6842b, false);
        C7031b.m21212a(parcel, 3, this.f6843c);
        C7031b.m21225a(parcel, 4, this.f6844d);
        C7031b.m21212a(parcel, 5, this.f6845e);
        C7031b.m21215a(parcel, 6, this.f6846f, false);
        C7031b.m21209a(parcel, 7, (Parcelable[]) this.f6847g, i, false);
        C7031b.m21215a(parcel, 11, this.f6848h, false);
        C7031b.m21220a(parcel, 12, (Parcelable) this.f6849i, i, false);
        C7031b.m21229a(parcel, a);
    }
}
