package com.libaray.gdpr;

import android.content.SharedPreferences;
import kotlin.jvm.internal.Lambda;
import p131c.p394h.p395a.C6483c;
import p573f.p590w.p591b.AbstractC10020a;
/* loaded from: classes2-dex2jar.jar:com/libaray/gdpr/GdprHelper$sharedPreferences$2.class */
public final class GdprHelper$sharedPreferences$2 extends Lambda implements AbstractC10020a<SharedPreferences> {
    public static final GdprHelper$sharedPreferences$2 INSTANCE = new GdprHelper$sharedPreferences$2();

    public GdprHelper$sharedPreferences$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p573f.p590w.p591b.AbstractC10020a
    public final SharedPreferences invoke() {
        return C6483c.m20729a().getSharedPreferences("_GDPR", 0);
    }
}
