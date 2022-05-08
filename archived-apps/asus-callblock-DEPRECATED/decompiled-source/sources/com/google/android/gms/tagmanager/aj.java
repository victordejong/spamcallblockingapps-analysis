package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/aj.class */
final class aj extends bd {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4279b = h.LESS_EQUALS.toString();

    public aj() {
        super(f4279b);
    }

    @Override // com.google.android.gms.tagmanager.bd
    protected final boolean a(cm cmVar, cm cmVar2) {
        return cmVar.compareTo(cmVar2) <= 0;
    }
}
