package com.google.android.gms.internal.icing;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p273n.C8485a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/icing/zzg.class */
public final class zzg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzg> CREATOR = new C8485a();

    /* renamed from: a */
    public final zzl[] f6824a;

    /* renamed from: b */
    public final String f6825b;

    /* renamed from: c */
    public final boolean f6826c;

    /* renamed from: d */
    public final Account f6827d;

    public zzg(zzl[] zzlVarArr, String str, boolean z, Account account) {
        this.f6824a = zzlVarArr;
        this.f6825b = str;
        this.f6826c = z;
        this.f6827d = account;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzg)) {
            return false;
        }
        zzg zzgVar = (zzg) obj;
        return C7018s.m21297a(this.f6825b, zzgVar.f6825b) && C7018s.m21297a(Boolean.valueOf(this.f6826c), Boolean.valueOf(zzgVar.f6826c)) && C7018s.m21297a(this.f6827d, zzgVar.f6827d) && Arrays.equals(this.f6824a, zzgVar.f6824a);
    }

    public final int hashCode() {
        return C7018s.m21296a(this.f6825b, Boolean.valueOf(this.f6826c), this.f6827d, Integer.valueOf(Arrays.hashCode(this.f6824a)));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21209a(parcel, 1, (Parcelable[]) this.f6824a, i, false);
        C7031b.m21215a(parcel, 2, this.f6825b, false);
        C7031b.m21212a(parcel, 3, this.f6826c);
        C7031b.m21220a(parcel, 4, (Parcelable) this.f6827d, i, false);
        C7031b.m21229a(parcel, a);
    }
}
