package com.google.android.gms.common.internal;

import android.content.Intent;
import com.google.android.gms.common.api.internal.LifecycleFragment;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zae.class */
final class zae extends DialogRedirect {

    /* renamed from: f */
    private final /* synthetic */ Intent f7544f;

    /* renamed from: g */
    private final /* synthetic */ LifecycleFragment f7545g;

    /* renamed from: h */
    private final /* synthetic */ int f7546h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zae(Intent intent, LifecycleFragment lifecycleFragment, int i) {
        this.f7544f = intent;
        this.f7545g = lifecycleFragment;
        this.f7546h = i;
    }

    @Override // com.google.android.gms.common.internal.DialogRedirect
    /* renamed from: c */
    public final void mo14435c() {
        Intent intent = this.f7544f;
        if (intent != null) {
            this.f7545g.startActivityForResult(intent, this.f7546h);
        }
    }
}
