package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajs.class */
final class ajs extends ajp<FieldDescriptorType, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ajs(int i) {
        super(i, (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.ajp
    /* renamed from: a */
    public final void mo5101a() {
        if (!m5169b()) {
            for (int i = 0; i < m5166c(); i++) {
                Map.Entry<FieldDescriptorType, Object> b = m5168b(i);
                if (((zzdro) b.getKey()).zzazq()) {
                    b.setValue(Collections.unmodifiableList((List) b.getValue()));
                }
            }
            Iterator it = m5163d().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((zzdro) entry.getKey()).zzazq()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo5101a();
    }
}
