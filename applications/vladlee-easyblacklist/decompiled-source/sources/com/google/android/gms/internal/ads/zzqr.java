package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqr.class */
public final class zzqr {

    /* renamed from: b */
    private final int f15409b;

    /* renamed from: d */
    private final zzqo f15411d = new zzqv();

    /* renamed from: a */
    private final int f15408a = 6;

    /* renamed from: c */
    private final int f15410c = 0;

    public zzqr(int i) {
        this.f15409b = i;
    }

    /* renamed from: a */
    private final String m3094a(String str) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return "";
        }
        aqc aqcVar = new aqc();
        PriorityQueue priorityQueue = new PriorityQueue(this.f15409b, new aqb());
        for (String str2 : split) {
            String[] zzd = zzqs.zzd(str2, false);
            if (zzd.length != 0) {
                zzqx.zza(zzd, this.f15409b, this.f15408a, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                aqcVar.m4757a(this.f15411d.zzbv(((zzqw) it.next()).f15414b));
            } catch (IOException e) {
                zzavs.zzc("Error while writing hash to byteStream", e);
            }
        }
        return aqcVar.toString();
    }

    public final String zza(ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            String str = arrayList2.get(i);
            i++;
            sb.append(str.toLowerCase(Locale.US));
            sb.append('\n');
        }
        return m3094a(sb.toString());
    }
}
