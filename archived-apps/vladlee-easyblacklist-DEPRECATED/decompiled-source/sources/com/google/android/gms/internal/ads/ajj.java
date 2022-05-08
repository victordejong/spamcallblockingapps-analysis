package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajj.class */
public final class ajj {

    /* renamed from: a */
    private final ArrayDeque<zzdqk> f7478a;

    private ajj() {
        this.f7478a = new ArrayDeque<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ajj(byte b) {
        this();
    }

    /* renamed from: a */
    private static int m5193a(int i) {
        int binarySearch = Arrays.binarySearch(ajh.f7472a, i);
        int i2 = binarySearch;
        if (binarySearch < 0) {
            i2 = (-(binarySearch + 1)) - 1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ zzdqk m5192a(ajj ajjVar, zzdqk zzdqkVar, zzdqk zzdqkVar2) {
        ajjVar.m5191a(zzdqkVar);
        ajjVar.m5191a(zzdqkVar2);
        zzdqk pop = ajjVar.f7478a.pop();
        while (!ajjVar.f7478a.isEmpty()) {
            pop = new ajh(ajjVar.f7478a.pop(), pop, (byte) 0);
        }
        return pop;
    }

    /* renamed from: a */
    private final void m5191a(zzdqk zzdqkVar) {
        while (!zzdqkVar.mo3399b()) {
            if (zzdqkVar instanceof ajh) {
                ajh ajhVar = (ajh) zzdqkVar;
                m5191a(ajh.m5239a(ajhVar));
                zzdqkVar = ajh.m5237b(ajhVar);
            } else {
                String valueOf = String.valueOf(zzdqkVar.getClass());
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
                sb.append("Has a new type of ByteString been created? Found ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        }
        int a = m5193a(zzdqkVar.size());
        int i = ajh.f7472a[a + 1];
        if (this.f7478a.isEmpty() || this.f7478a.peek().size() >= i) {
            this.f7478a.push(zzdqkVar);
            return;
        }
        int i2 = ajh.f7472a[a];
        zzdqk pop = this.f7478a.pop();
        while (!this.f7478a.isEmpty() && this.f7478a.peek().size() < i2) {
            pop = new ajh(this.f7478a.pop(), pop, (byte) 0);
        }
        ajh ajhVar2 = new ajh(pop, zzdqkVar, (byte) 0);
        while (!this.f7478a.isEmpty()) {
            if (this.f7478a.peek().size() >= ajh.f7472a[m5193a(ajhVar2.size()) + 1]) {
                break;
            }
            ajhVar2 = new ajh(this.f7478a.pop(), ajhVar2, (byte) 0);
        }
        this.f7478a.push(ajhVar2);
    }
}
