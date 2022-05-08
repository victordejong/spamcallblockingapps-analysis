package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cj.class */
final class cj extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4356b = h.TIME.toString();

    public cj() {
        super(f4356b, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        return cn.a(Long.valueOf(System.currentTimeMillis()));
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return false;
    }
}
