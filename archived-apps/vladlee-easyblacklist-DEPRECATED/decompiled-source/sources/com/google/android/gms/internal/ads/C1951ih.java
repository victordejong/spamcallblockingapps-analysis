package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.ih */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ih.class */
final class C1951ih {

    /* renamed from: a */
    private final ArrayList<zzns> f8627a = new ArrayList<>();

    /* renamed from: b */
    private long f8628b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final long m4706a() {
        Iterator<zzns> it = this.f8627a.iterator();
        while (it.hasNext()) {
            Map<String, List<String>> responseHeaders = it.next().getResponseHeaders();
            if (responseHeaders != null) {
                for (Map.Entry<String, List<String>> entry : responseHeaders.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase(entry.getKey())) {
                            this.f8628b = Math.max(this.f8628b, Long.parseLong(entry.getValue().get(0)));
                        }
                    } catch (RuntimeException e) {
                    }
                }
                it.remove();
            }
        }
        return this.f8628b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m4705a(zzns zznsVar) {
        this.f8627a.add(zznsVar);
    }
}
