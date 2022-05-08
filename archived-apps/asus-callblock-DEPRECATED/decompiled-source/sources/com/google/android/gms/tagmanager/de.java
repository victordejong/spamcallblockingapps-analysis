package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/de.class */
final class de extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4382b = h.CONTAINER_VERSION.toString();
    private final String c;

    public de(String str) {
        super(f4382b, new String[0]);
        this.c = str;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        return this.c == null ? cn.f() : cn.a((Object) this.c);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}
