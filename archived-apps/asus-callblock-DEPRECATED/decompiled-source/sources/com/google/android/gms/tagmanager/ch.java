package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ch.class */
final class ch extends ci {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4355b = h.STARTS_WITH.toString();

    public ch() {
        super(f4355b);
    }

    @Override // com.google.android.gms.tagmanager.ci
    protected final boolean a(String str, String str2, Map<String, k.a> map) {
        return str.startsWith(str2);
    }
}
