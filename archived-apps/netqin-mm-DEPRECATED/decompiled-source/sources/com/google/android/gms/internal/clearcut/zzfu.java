package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzfu;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfu.class */
public class zzfu<M extends zzfu<M>> extends zzfz {

    /* renamed from: b */
    public zzfw f29280b;

    @Override // com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: a */
    public void mo10563a(zzfs zzfsVar) throws IOException {
        if (this.f29280b != null) {
            for (int i = 0; i < this.f29280b.m10628e(); i++) {
                this.f29280b.m10630a(i).m25644a(zzfsVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: e */
    public int mo10562e() {
        if (this.f29280b == null) {
            return 0;
        }
        for (int i = 0; i < this.f29280b.m10628e(); i++) {
            this.f29280b.m10630a(i).m25642e();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfz
    /* renamed from: g */
    public /* synthetic */ zzfz mo10561g() throws CloneNotSupportedException {
        return (zzfu) clone();
    }

    /* renamed from: h */
    public M clone() throws CloneNotSupportedException {
        M m = (M) ((zzfu) super.clone());
        zzfy.m10627a(this, m);
        return m;
    }
}
