package com.google.android.gms.internal.icing;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzej.class */
final class zzej extends zzei<FieldDescriptorType, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzej(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.icing.zzei
    public final void zzp() {
        if (!isImmutable()) {
            for (int i = 0; i < zzci(); i++) {
                Map.Entry<FieldDescriptorType, Object> zzaf = zzaf(i);
                if (((zzcf) zzaf.getKey()).zzas()) {
                    zzaf.setValue(Collections.unmodifiableList((List) zzaf.getValue()));
                }
            }
            Iterator it = zzcj().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((zzcf) entry.getKey()).zzas()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzp();
    }
}
