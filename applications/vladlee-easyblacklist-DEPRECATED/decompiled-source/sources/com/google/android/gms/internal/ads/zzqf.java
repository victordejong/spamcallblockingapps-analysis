package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqf.class */
public final class zzqf {

    /* renamed from: b */
    private int f15382b;

    /* renamed from: a */
    private final Object f15381a = new Object();

    /* renamed from: c */
    private List<zzqc> f15383c = new LinkedList();

    public final boolean zza(zzqc zzqcVar) {
        synchronized (this.f15381a) {
            return this.f15383c.contains(zzqcVar);
        }
    }

    public final boolean zzb(zzqc zzqcVar) {
        synchronized (this.f15381a) {
            Iterator<zzqc> it = this.f15383c.iterator();
            while (it.hasNext()) {
                zzqc next = it.next();
                if (!zzq.zzku().zzvf().zzvu()) {
                    if (zzqcVar != next && next.zzls().equals(zzqcVar.zzls())) {
                        it.remove();
                        return true;
                    }
                } else if (!zzq.zzku().zzvf().zzvw() && zzqcVar != next && next.zzlu().equals(zzqcVar.zzlu())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final void zzc(zzqc zzqcVar) {
        synchronized (this.f15381a) {
            if (this.f15383c.size() >= 10) {
                int size = this.f15383c.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                zzavs.zzea(sb.toString());
                this.f15383c.remove(0);
            }
            int i = this.f15382b;
            this.f15382b = i + 1;
            zzqcVar.zzbp(i);
            zzqcVar.zzly();
            this.f15383c.add(zzqcVar);
        }
    }

    public final zzqc zzo(boolean z) {
        synchronized (this.f15381a) {
            zzqc zzqcVar = null;
            if (this.f15383c.size() == 0) {
                zzavs.zzea("Queue empty");
                return null;
            }
            int i = 0;
            if (this.f15383c.size() >= 2) {
                int i2 = Integer.MIN_VALUE;
                int i3 = 0;
                for (zzqc zzqcVar2 : this.f15383c) {
                    int score = zzqcVar2.getScore();
                    i2 = i2;
                    if (score > i2) {
                        i = i3;
                        zzqcVar = zzqcVar2;
                        i2 = score;
                    }
                    i3++;
                }
                this.f15383c.remove(i);
                return zzqcVar;
            }
            zzqc zzqcVar3 = this.f15383c.get(0);
            if (z) {
                this.f15383c.remove(0);
            } else {
                zzqcVar3.zzlv();
            }
            return zzqcVar3;
        }
    }
}
