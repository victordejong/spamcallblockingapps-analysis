package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.dy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dy.class */
final class C2570dy extends C2571dz<FieldDescriptorType, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2570dy(int i) {
        super(i, (byte) 0);
    }

    @Override // com.google.android.gms.internal.measurement.C2571dz
    /* renamed from: a */
    public final void mo2632a() {
        if (!m2626b()) {
            for (int i = 0; i < m2623c(); i++) {
                Map.Entry<FieldDescriptorType, Object> b = m2625b(i);
                if (((zzey) b.getKey()).zzd()) {
                    b.setValue(Collections.unmodifiableList((List) b.getValue()));
                }
            }
            Iterator it = m2620d().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((zzey) entry.getKey()).zzd()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo2632a();
    }
}
