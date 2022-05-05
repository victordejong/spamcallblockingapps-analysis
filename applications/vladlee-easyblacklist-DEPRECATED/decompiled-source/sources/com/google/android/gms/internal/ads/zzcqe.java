package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqe.class */
public final class zzcqe implements zzcty<Bundle> {

    /* renamed from: a */
    private final zzuj f13721a;

    /* renamed from: b */
    private final String f13722b;

    /* renamed from: c */
    private final boolean f13723c;

    /* renamed from: d */
    private final String f13724d;

    /* renamed from: e */
    private final float f13725e;

    /* renamed from: f */
    private final int f13726f;

    /* renamed from: g */
    private final int f13727g;

    /* renamed from: h */
    private final String f13728h;

    public zzcqe(zzuj zzujVar, String str, boolean z, String str2, float f, int i, int i2, String str3) {
        Preconditions.checkNotNull(zzujVar, "the adSize must not be null");
        this.f13721a = zzujVar;
        this.f13722b = str;
        this.f13723c = z;
        this.f13724d = str2;
        this.f13725e = f;
        this.f13726f = i;
        this.f13727g = i2;
        this.f13728h = str3;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        String str;
        zzuj[] zzujVarArr;
        Bundle bundle2 = bundle;
        zzdaa.zza(bundle2, "smart_w", "full", this.f13721a.width == -1);
        zzdaa.zza(bundle2, "smart_h", "auto", this.f13721a.height == -2);
        zzdaa.zza(bundle2, "ene", Boolean.TRUE, this.f13721a.zzccr);
        zzdaa.zza(bundle2, "rafmt", "102", this.f13721a.zzccu);
        zzdaa.zza(bundle2, "rafmt", "103", this.f13721a.zzccv);
        zzdaa.zza(bundle2, "format", this.f13722b);
        zzdaa.zza(bundle2, "fluid", "height", this.f13723c);
        zzdaa.zza(bundle2, "sz", this.f13724d, !TextUtils.isEmpty(str));
        bundle2.putFloat("u_sd", this.f13725e);
        bundle2.putInt("sw", this.f13726f);
        bundle2.putInt("sh", this.f13727g);
        String str2 = this.f13728h;
        zzdaa.zza(bundle2, "sc", str2, true ^ TextUtils.isEmpty(str2));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        if (this.f13721a.zzccp == null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("height", this.f13721a.height);
            bundle3.putInt("width", this.f13721a.width);
            bundle3.putBoolean("is_fluid_height", this.f13721a.zzccq);
            arrayList.add(bundle3);
        } else {
            for (zzuj zzujVar : this.f13721a.zzccp) {
                Bundle bundle4 = new Bundle();
                bundle4.putBoolean("is_fluid_height", zzujVar.zzccq);
                bundle4.putInt("height", zzujVar.height);
                bundle4.putInt("width", zzujVar.width);
                arrayList.add(bundle4);
            }
        }
        bundle2.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
