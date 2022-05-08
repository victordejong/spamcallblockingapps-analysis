package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bd.class */
abstract class bd extends bi {
    public bd(String str) {
        super(str);
    }

    @Override // com.google.android.gms.tagmanager.bi
    protected final boolean a(k.a aVar, k.a aVar2, Map<String, k.a> map) {
        cm b2 = cn.b(aVar);
        cm b3 = cn.b(aVar2);
        return (b2 == cn.d() || b3 == cn.d()) ? false : a(b2, b3);
    }

    protected abstract boolean a(cm cmVar, cm cmVar2);
}
