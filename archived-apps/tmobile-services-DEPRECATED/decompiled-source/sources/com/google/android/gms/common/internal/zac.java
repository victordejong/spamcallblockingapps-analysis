package com.google.android.gms.common.internal;

import android.content.Intent;
import androidx.fragment.app.Fragment;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zac.class */
final class zac extends DialogRedirect {

    /* renamed from: f */
    private final /* synthetic */ Intent f7538f;

    /* renamed from: g */
    private final /* synthetic */ Fragment f7539g;

    /* renamed from: h */
    private final /* synthetic */ int f7540h;

    @Override // com.google.android.gms.common.internal.DialogRedirect
    /* renamed from: c */
    public final void mo14435c() {
        Intent intent = this.f7538f;
        if (intent != null) {
            this.f7539g.startActivityForResult(intent, this.f7540h);
        }
    }
}
