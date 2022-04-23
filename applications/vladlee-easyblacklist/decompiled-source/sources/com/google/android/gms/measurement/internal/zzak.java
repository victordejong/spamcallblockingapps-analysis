package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzak.class */
public final class zzak {

    /* renamed from: a */
    final String f17100a;

    /* renamed from: b */
    final String f17101b;

    /* renamed from: c */
    final long f17102c;

    /* renamed from: d */
    final long f17103d;

    /* renamed from: e */
    final zzam f17104e;

    /* renamed from: f */
    private final String f17105f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzak(zzga zzgaVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzam zzamVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.f17100a = str2;
        this.f17101b = str3;
        this.f17105f = TextUtils.isEmpty(str) ? null : str;
        this.f17102c = j;
        this.f17103d = j2;
        long j3 = this.f17103d;
        if (j3 != 0 && j3 > this.f17102c) {
            zzgaVar.zzr().zzi().zza("Event created with reverse previous/current timestamps. appId", zzew.m1855a(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzamVar = new zzam(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzgaVar.zzr().zzf().zza("Param name can't be null");
                } else {
                    zzgaVar.zzi();
                    Object a = zzkm.m1628a(next, bundle2.get(next));
                    if (a == null) {
                        zzgaVar.zzr().zzi().zza("Param value can't be null", zzgaVar.zzj().m1864b(next));
                    } else {
                        zzgaVar.zzi().m1635a(bundle2, next, a);
                    }
                }
                it.remove();
            }
            zzamVar = new zzam(bundle2);
        }
        this.f17104e = zzamVar;
    }

    private zzak(zzga zzgaVar, String str, String str2, String str3, long j, long j2, zzam zzamVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzamVar);
        this.f17100a = str2;
        this.f17101b = str3;
        this.f17105f = TextUtils.isEmpty(str) ? null : str;
        this.f17102c = j;
        this.f17103d = j2;
        long j3 = this.f17103d;
        if (j3 != 0 && j3 > this.f17102c) {
            zzgaVar.zzr().zzi().zza("Event created with reverse previous/current timestamps. appId, name", zzew.m1855a(str2), zzew.m1855a(str3));
        }
        this.f17104e = zzamVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final zzak m1995a(zzga zzgaVar, long j) {
        return new zzak(zzgaVar, this.f17105f, this.f17100a, this.f17101b, this.f17102c, j, this.f17104e);
    }

    public final String toString() {
        String str = this.f17100a;
        String str2 = this.f17101b;
        String valueOf = String.valueOf(this.f17104e);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(valueOf);
        sb.append('}');
        return sb.toString();
    }
}
