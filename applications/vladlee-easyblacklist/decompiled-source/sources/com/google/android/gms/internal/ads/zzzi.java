package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzi.class */
public final class zzzi {

    /* renamed from: a */
    private final Collection<zzzc<?>> f15699a = new ArrayList();

    /* renamed from: b */
    private final Collection<zzzc<String>> f15700b = new ArrayList();

    /* renamed from: c */
    private final Collection<zzzc<String>> f15701c = new ArrayList();

    public final void zza(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (zzzc<?> zzzcVar : this.f15699a) {
            if (zzzcVar.getSource() == 1) {
                zzzcVar.zza(editor, zzzcVar.mo2956a(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            zzayu.zzex("Flag Json is null.");
        }
    }

    public final void zza(zzzc zzzcVar) {
        this.f15699a.add(zzzcVar);
    }

    public final void zzb(zzzc<String> zzzcVar) {
        this.f15700b.add(zzzcVar);
    }

    public final void zzc(zzzc<String> zzzcVar) {
        this.f15701c.add(zzzcVar);
    }

    public final List<String> zzqg() {
        ArrayList arrayList = new ArrayList();
        for (zzzc<String> zzzcVar : this.f15700b) {
            String str = (String) zzve.zzoy().zzd(zzzcVar);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        arrayList.addAll(zzzs.m2945a());
        return arrayList;
    }

    public final List<String> zzqh() {
        List<String> zzqg = zzqg();
        for (zzzc<String> zzzcVar : this.f15701c) {
            String str = (String) zzve.zzoy().zzd(zzzcVar);
            if (!TextUtils.isEmpty(str)) {
                zzqg.add(str);
            }
        }
        zzqg.addAll(zzzs.m2943b());
        return zzqg;
    }
}
