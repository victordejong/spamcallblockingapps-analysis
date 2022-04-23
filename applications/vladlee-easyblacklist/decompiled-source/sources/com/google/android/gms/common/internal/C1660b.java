package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;
/* renamed from: com.google.android.gms.common.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/b.class */
final class C1660b extends DialogRedirect {

    /* renamed from: a */
    private final /* synthetic */ Intent f6819a;

    /* renamed from: b */
    private final /* synthetic */ Activity f6820b;

    /* renamed from: c */
    private final /* synthetic */ int f6821c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1660b(Intent intent, Activity activity, int i) {
        this.f6819a = intent;
        this.f6820b = activity;
        this.f6821c = i;
    }

    @Override // com.google.android.gms.common.internal.DialogRedirect
    /* renamed from: a */
    public final void mo5682a() {
        Intent intent = this.f6819a;
        if (intent != null) {
            this.f6820b.startActivityForResult(intent, this.f6821c);
        }
    }
}
