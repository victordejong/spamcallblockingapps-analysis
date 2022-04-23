package com.google.android.gms.common;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.common.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/l.class */
final class C1678l extends C1677k {

    /* renamed from: b */
    private final Callable<String> f6864b;

    private C1678l(Callable<String> callable) {
        super(false, null, null);
        this.f6864b = callable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1678l(Callable callable, byte b) {
        this(callable);
    }

    @Override // com.google.android.gms.common.C1677k
    /* renamed from: b */
    final String mo5643b() {
        try {
            return this.f6864b.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
