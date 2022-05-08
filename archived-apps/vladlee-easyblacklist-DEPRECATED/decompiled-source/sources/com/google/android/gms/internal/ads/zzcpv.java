package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzq;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpv.class */
public final class zzcpv implements zzcty<Bundle> {

    /* renamed from: a */
    private final Context f13709a;

    /* renamed from: b */
    private final zzuj f13710b;

    /* renamed from: c */
    private final List<Parcelable> f13711c;

    public zzcpv(Context context, zzuj zzujVar, List<Parcelable> list) {
        this.f13709a = context;
        this.f13710b = zzujVar;
        this.f13711c = list;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (zzabb.zzctv.get().booleanValue()) {
            Bundle bundle3 = new Bundle();
            zzq.zzkq();
            bundle3.putString("activity", zzawb.zzat(this.f13709a));
            Bundle bundle4 = new Bundle();
            bundle4.putInt("width", this.f13710b.width);
            bundle4.putInt("height", this.f13710b.height);
            bundle3.putBundle("size", bundle4);
            if (this.f13711c.size() > 0) {
                List<Parcelable> list = this.f13711c;
                bundle3.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
            }
            bundle2.putBundle("view_hierarchy", bundle3);
        }
    }
}
