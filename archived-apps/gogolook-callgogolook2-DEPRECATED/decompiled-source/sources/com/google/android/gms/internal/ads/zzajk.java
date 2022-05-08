package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
import p081h.p203i.p204a.p224e.p259j.p260a.C7307l1;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajk.class */
public final class zzajk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajk> CREATOR = new C7307l1();

    /* renamed from: a */
    public final String f6741a;

    /* renamed from: b */
    public final int f6742b;

    public zzajk(RewardItem rewardItem) {
        this(rewardItem.getType(), rewardItem.getAmount());
    }

    public zzajk(String str, int i) {
        this.f6741a = str;
        this.f6742b = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzajk)) {
            return false;
        }
        zzajk zzajkVar = (zzajk) obj;
        return C7018s.m21297a(this.f6741a, zzajkVar.f6741a) && C7018s.m21297a(Integer.valueOf(this.f6742b), Integer.valueOf(zzajkVar.f6742b));
    }

    public final int hashCode() {
        return C7018s.m21296a(this.f6741a, Integer.valueOf(this.f6742b));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, this.f6741a, false);
        C7031b.m21225a(parcel, 3, this.f6742b);
        C7031b.m21229a(parcel, a);
    }
}
