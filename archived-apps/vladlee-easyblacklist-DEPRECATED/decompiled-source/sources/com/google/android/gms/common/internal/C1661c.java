package com.google.android.gms.common.internal;

import android.content.Intent;
import com.google.android.gms.common.api.internal.LifecycleFragment;
/* renamed from: com.google.android.gms.common.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c.class */
final class C1661c extends DialogRedirect {

    /* renamed from: a */
    private final /* synthetic */ Intent f6822a;

    /* renamed from: b */
    private final /* synthetic */ LifecycleFragment f6823b;

    /* renamed from: c */
    private final /* synthetic */ int f6824c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1661c(Intent intent, LifecycleFragment lifecycleFragment, int i) {
        this.f6822a = intent;
        this.f6823b = lifecycleFragment;
        this.f6824c = i;
    }

    @Override // com.google.android.gms.common.internal.DialogRedirect
    /* renamed from: a */
    public final void mo5682a() {
        Intent intent = this.f6822a;
        if (intent != null) {
            this.f6823b.startActivityForResult(intent, this.f6824c);
        }
    }
}
