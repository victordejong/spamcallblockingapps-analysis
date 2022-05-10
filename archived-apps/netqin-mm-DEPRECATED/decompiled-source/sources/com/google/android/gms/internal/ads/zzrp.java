package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
import p131c.p161d.p170b.p224d.p252g.p253a.bg0;
import p131c.p161d.p170b.p224d.p252g.p253a.cg0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrp.class */
public final class zzrp {

    /* renamed from: b */
    public final int f28936b;

    /* renamed from: c */
    public final zzrq f28937c = new zzrt();

    /* renamed from: a */
    public final int f28935a = 6;

    public zzrp(int i) {
        this.f28936b = i;
    }

    @VisibleForTesting
    /* renamed from: a */
    public final String m11491a(String str) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return "";
        }
        bg0 bg0Var = new bg0();
        PriorityQueue priorityQueue = new PriorityQueue(this.f28936b, new cg0(this));
        for (String str2 : split) {
            String[] a = zzru.m11487a(str2, false);
            if (a.length != 0) {
                zzrv.m11483a(a, this.f28936b, this.f28935a, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                bg0Var.m27119a(this.f28937c.mo11480a(((zzry) it.next()).f28945b));
            } catch (IOException e) {
                zzbbq.m15855b("Error while writing hash to byteStream", e);
            }
        }
        return bg0Var.toString();
    }

    /* renamed from: a */
    public final String m11490a(ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            String str = arrayList.get(i);
            i++;
            sb.append(str.toLowerCase(Locale.US));
            sb.append('\n');
        }
        return m11491a(sb.toString());
    }
}
