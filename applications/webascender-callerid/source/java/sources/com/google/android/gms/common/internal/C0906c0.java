package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.C0892f;
import com.google.android.gms.common.api.C0807a;
/* renamed from: com.google.android.gms.common.internal.c0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c0.class */
public final class C0906c0 {

    /* renamed from: a */
    private final SparseIntArray f3523a = new SparseIntArray();

    /* renamed from: b */
    private C0892f f3524b;

    public C0906c0(C0892f c0892f) {
        C0931r.m3308k(c0892f);
        this.f3524b = c0892f;
    }

    /* renamed from: a */
    public final int m3371a(Context context, C0807a.f fVar) {
        int i;
        C0931r.m3308k(context);
        C0931r.m3308k(fVar);
        if (!fVar.p()) {
            return 0;
        }
        int q = fVar.q();
        int i2 = this.f3523a.get(q, -1);
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= this.f3523a.size()) {
                i = i2;
                break;
            }
            int keyAt = this.f3523a.keyAt(i3);
            if (keyAt > q && this.f3523a.get(keyAt) == 0) {
                i = 0;
                break;
            }
            i3++;
        }
        int i4 = i;
        if (i == -1) {
            i4 = this.f3524b.m3480j(context, q);
        }
        this.f3523a.put(q, i4);
        return i4;
    }

    /* renamed from: b */
    public final void m3370b() {
        this.f3523a.clear();
    }
}
