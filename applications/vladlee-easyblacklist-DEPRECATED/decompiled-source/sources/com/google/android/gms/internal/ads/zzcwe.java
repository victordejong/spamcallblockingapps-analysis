package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwe.class */
public final class zzcwe implements zzdxg<zzcua<JSONObject>> {
    public static zzcua<JSONObject> zza(Object obj, zzcuv zzcuvVar, zzcvm zzcvmVar, zzdxa<zzcup> zzdxaVar, zzdxa<zzcuz> zzdxaVar2, zzdxa<zzcvd> zzdxaVar3, zzdxa<zzcvi> zzdxaVar4, zzdxa<zzcvr> zzdxaVar5, zzdxa<zzcvv> zzdxaVar6, zzdxa<zzcwg> zzdxaVar7, Executor executor) {
        HashSet hashSet = new HashSet();
        hashSet.add((C2361xm) obj);
        hashSet.add(zzcuvVar);
        hashSet.add(zzcvmVar);
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcpf)).booleanValue()) {
            hashSet.add(zzdxaVar.get());
        }
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcpg)).booleanValue()) {
            hashSet.add(zzdxaVar2.get());
        }
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcph)).booleanValue()) {
            hashSet.add(zzdxaVar3.get());
        }
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcpi)).booleanValue()) {
            hashSet.add(zzdxaVar4.get());
        }
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcpl)).booleanValue()) {
            hashSet.add(zzdxaVar5.get());
        }
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcpn)).booleanValue()) {
            hashSet.add(zzdxaVar6.get());
        }
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcpo)).booleanValue()) {
            hashSet.add(zzdxaVar7.get());
        }
        return (zzcua) zzdxm.zza(new zzcua(executor, hashSet), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        throw new NoSuchMethodError();
    }
}
