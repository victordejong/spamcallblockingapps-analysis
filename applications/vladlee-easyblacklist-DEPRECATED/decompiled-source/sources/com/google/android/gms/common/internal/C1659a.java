package com.google.android.gms.common.internal;

import android.content.Intent;
import androidx.fragment.app.Fragment;
/* renamed from: com.google.android.gms.common.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/a.class */
final class C1659a extends DialogRedirect {

    /* renamed from: a */
    private final /* synthetic */ Intent f6816a;

    /* renamed from: b */
    private final /* synthetic */ Fragment f6817b;

    /* renamed from: c */
    private final /* synthetic */ int f6818c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1659a(Intent intent, Fragment fragment, int i) {
        this.f6816a = intent;
        this.f6817b = fragment;
        this.f6818c = i;
    }

    @Override // com.google.android.gms.common.internal.DialogRedirect
    /* renamed from: a */
    public final void mo5682a() {
        Intent intent = this.f6816a;
        if (intent != null) {
            this.f6817b.startActivityForResult(intent, this.f6818c);
        }
    }
}
