package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzfd;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.hx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hx.class */
public final class C2851hx {

    /* renamed from: a */
    private zzbr.zzc f17058a;

    /* renamed from: b */
    private Long f17059b;

    /* renamed from: c */
    private long f17060c;

    /* renamed from: d */
    private final /* synthetic */ C2847ht f17061d;

    private C2851hx(C2847ht htVar) {
        this.f17061d = htVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2851hx(C2847ht htVar, byte b) {
        this(htVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final zzbr.zzc m2014a(String str, zzbr.zzc zzcVar) {
        String str2;
        List<zzbr.zze> list;
        String zzc = zzcVar.zzc();
        List<zzbr.zze> zza = zzcVar.zza();
        this.f17061d.zzg();
        Long l = (Long) zzki.m1650b(zzcVar, "_eid");
        boolean z = l != null;
        if (z && zzc.equals("_ep")) {
            this.f17061d.zzg();
            str2 = (String) zzki.m1650b(zzcVar, "_en");
            if (TextUtils.isEmpty(str2)) {
                this.f17061d.zzr().zzf().zza("Extra parameter without an event name. eventId", l);
                return null;
            }
            if (this.f17058a == null || this.f17059b == null || l.longValue() != this.f17059b.longValue()) {
                Pair<zzbr.zzc, Long> a = this.f17061d.zzi().m2193a(str, l);
                if (a == null || a.first == null) {
                    this.f17061d.zzr().zzf().zza("Extra parameter without existing main event. eventName, eventId", str2, l);
                    return null;
                }
                this.f17058a = (zzbr.zzc) a.first;
                this.f17060c = ((Long) a.second).longValue();
                this.f17061d.zzg();
                this.f17059b = (Long) zzki.m1650b(this.f17058a, "_eid");
            }
            this.f17060c--;
            if (this.f17060c <= 0) {
                C2692c zzi = this.f17061d.zzi();
                zzi.zzd();
                zzi.zzr().zzx().zza("Clearing complex main event info. appId", str);
                try {
                    zzi.m2172e().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                } catch (SQLiteException e) {
                    zzi.zzr().zzf().zza("Error clearing complex main event", e);
                }
            } else {
                this.f17061d.zzi().m2192a(str, l, this.f17060c, this.f17058a);
            }
            list = new ArrayList<>();
            for (zzbr.zze zzeVar : this.f17058a.zza()) {
                this.f17061d.zzg();
                if (zzki.m1670a(zzcVar, zzeVar.zza()) == null) {
                    list.add(zzeVar);
                }
            }
            if (!list.isEmpty()) {
                list.addAll(zza);
            } else {
                this.f17061d.zzr().zzi().zza("No unique parameters in main event. eventName", str2);
                list = zza;
            }
        } else {
            if (z) {
                this.f17059b = l;
                this.f17058a = zzcVar;
                this.f17061d.zzg();
                Object obj = 0L;
                Object b = zzki.m1650b(zzcVar, "_epc");
                if (b != null) {
                    obj = b;
                }
                this.f17060c = ((Long) obj).longValue();
                if (this.f17060c <= 0) {
                    this.f17061d.zzr().zzi().zza("Complex event with zero extra param count. eventName", zzc);
                } else {
                    this.f17061d.zzi().m2192a(str, l, this.f17060c, zzcVar);
                }
            }
            str2 = zzc;
            list = zza;
        }
        return (zzbr.zzc) ((zzfd) zzcVar.zzbm().zza(str2).zzc().zza(list).zzu());
    }
}
