package com.google.android.gms.common.api;

import android.text.TextUtils;
import com.google.android.gms.common.api.internal.C0825b;
import com.google.android.gms.common.b;
import f.e.a;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/AvailabilityException.class */
public class AvailabilityException extends Exception {

    /* renamed from: f */
    private final a<C0825b<?>, b> f3323f;

    public AvailabilityException(a<C0825b<?>, b> aVar) {
        this.f3323f = aVar;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (C0825b c0825b : this.f3323f.keySet()) {
            b bVar = (b) this.f3323f.get(c0825b);
            if (bVar.C1()) {
                z = false;
            }
            String m3626a = c0825b.m3626a();
            String valueOf = String.valueOf(bVar);
            StringBuilder sb = new StringBuilder(String.valueOf(m3626a).length() + 2 + String.valueOf(valueOf).length());
            sb.append(m3626a);
            sb.append(": ");
            sb.append(valueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        if (z) {
            sb2.append("None of the queried APIs are available. ");
        } else {
            sb2.append("Some of the queried APIs are unavailable. ");
        }
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }
}
