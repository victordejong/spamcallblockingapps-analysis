package com.google.android.gms.internal.ads;

import java.util.PriorityQueue;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqx.class */
public final class zzqx {
    /* renamed from: a */
    private static long m3092a(long j, int i) {
        if (i == 0) {
            return 1L;
        }
        if (i == 1) {
            return j;
        }
        return (i % 2 == 0 ? m3092a((j * j) % 1073807359, i / 2) : j * (m3092a((j * j) % 1073807359, i / 2) % 1073807359)) % 1073807359;
    }

    /* renamed from: a */
    private static long m3091a(String[] strArr, int i) {
        long zzbx = (zzqs.zzbx(strArr[0]) + 2147483647L) % 1073807359;
        for (int i2 = 1; i2 < i; i2++) {
            zzbx = (((zzbx * 16785407) % 1073807359) + ((zzqs.zzbx(strArr[i2]) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return zzbx;
    }

    /* renamed from: a */
    private static String m3090a(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            zzavs.zzex("Unable to construct shingle");
            return "";
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i4 = i3 - 1;
            if (i < i4) {
                sb.append(strArr[i]);
                sb.append(' ');
                i++;
            } else {
                sb.append(strArr[i4]);
                return sb.toString();
            }
        }
    }

    /* renamed from: a */
    private static void m3093a(int i, long j, String str, int i2, PriorityQueue<zzqw> priorityQueue) {
        zzqw zzqwVar = new zzqw(j, str, i2);
        if ((priorityQueue.size() != i || (priorityQueue.peek().f15415c <= zzqwVar.f15415c && priorityQueue.peek().f15413a <= zzqwVar.f15413a)) && !priorityQueue.contains(zzqwVar)) {
            priorityQueue.add(zzqwVar);
            if (priorityQueue.size() > i) {
                priorityQueue.poll();
            }
        }
    }

    public static void zza(String[] strArr, int i, int i2, PriorityQueue<zzqw> priorityQueue) {
        if (strArr.length < i2) {
            m3093a(i, m3091a(strArr, strArr.length), m3090a(strArr, 0, strArr.length), strArr.length, priorityQueue);
            return;
        }
        long a = m3091a(strArr, i2);
        m3093a(i, a, m3090a(strArr, 0, i2), i2, priorityQueue);
        long a2 = m3092a(16785407L, i2 - 1);
        for (int i3 = 1; i3 < (strArr.length - i2) + 1; i3++) {
            a = ((((((a + 1073807359) - ((((zzqs.zzbx(strArr[i3 - 1]) + 2147483647L) % 1073807359) * a2) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((zzqs.zzbx(strArr[(i3 + i2) - 1]) + 2147483647L) % 1073807359)) % 1073807359;
            m3093a(i, a, m3090a(strArr, i3, i2), strArr.length, priorityQueue);
        }
    }
}
