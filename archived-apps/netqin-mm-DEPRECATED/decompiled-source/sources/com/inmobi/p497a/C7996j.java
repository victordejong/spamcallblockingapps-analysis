package com.inmobi.p497a;

import com.inmobi.commons.core.network.C8383c;
import com.inmobi.commons.core.utilities.uid.C8418d;
/* renamed from: com.inmobi.a.j */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/j.class */
public class C7996j extends C8383c {

    /* renamed from: c */
    public static final String f31210c = "j";

    /* renamed from: a */
    public int f31211a;

    /* renamed from: b */
    public int f31212b;

    public C7996j(String str, int i, int i2, C8418d dVar, C7997k kVar) {
        super("POST", str, true, dVar);
        this.f31211a = i;
        this.f31212b = i2;
        this.f32609n.put("payload", kVar.m6766a().toString());
    }
}
