package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/t.class */
final class t extends bd {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4419b = h.GREATER_THAN.toString();

    public t() {
        super(f4419b);
    }

    @Override // com.google.android.gms.tagmanager.bd
    protected final boolean a(cm cmVar, cm cmVar2) {
        return cmVar.compareTo(cmVar2) > 0;
    }
}
