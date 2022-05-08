package com.google.android.gms.internal;

import android.util.SparseArray;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.av;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/as.class */
public abstract class as {

    /* renamed from: a  reason: collision with root package name */
    public final int f4125a;

    /* renamed from: b  reason: collision with root package name */
    public final int f4126b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/as$a.class */
    public static final class a extends as {
        public final av.a<? extends e, a.c> c;

        @Override // com.google.android.gms.internal.as
        public final void a() {
            av.a.a();
        }

        @Override // com.google.android.gms.internal.as
        public final void a(SparseArray<bf> sparseArray) {
            bf bfVar = sparseArray.get(this.f4125a);
            if (bfVar != null) {
                av.a<? extends e, a.c> aVar = this.c;
                bfVar.f4154b.add(aVar);
                aVar.a(bfVar.c);
            }
        }

        @Override // com.google.android.gms.internal.as
        public final void a(Status status) {
            av.a<? extends e, a.c> aVar = this.c;
            b.b(!status.a(), "Failed result must not be success");
            aVar.a((av.a<? extends e, a.c>) aVar.a(status));
        }

        @Override // com.google.android.gms.internal.as
        public final boolean b() {
            return this.c.d();
        }
    }

    public abstract void a();

    public void a(SparseArray<bf> sparseArray) {
    }

    public abstract void a(Status status);

    public boolean b() {
        return true;
    }
}
