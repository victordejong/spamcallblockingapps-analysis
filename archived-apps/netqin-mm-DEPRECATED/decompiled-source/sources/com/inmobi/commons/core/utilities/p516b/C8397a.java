package com.inmobi.commons.core.utilities.p516b;

import android.os.Build;
import android.security.NetworkSecurityPolicy;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.inmobi.commons.core.utilities.b.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/b/a.class */
public class C8397a {

    /* renamed from: d */
    public static final String f32650d = "a";

    /* renamed from: e */
    public static C8397a f32651e;

    /* renamed from: f */
    public static Object f32652f = new Object();

    /* renamed from: a */
    public String f32653a;

    /* renamed from: b */
    public Map<String, String> f32654b = new HashMap();

    /* renamed from: c */
    public int f32655c;

    /* renamed from: g */
    public String f32656g;

    /* renamed from: h */
    public String f32657h;

    /* renamed from: i */
    public String f32658i;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x006d, code lost:
        if (r0.equals("") != false) goto L_0x0070;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C8397a() {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.core.utilities.p516b.C8397a.<init>():void");
    }

    /* renamed from: a */
    public static C8397a m5693a() {
        C8397a aVar = f32651e;
        C8397a aVar2 = aVar;
        if (aVar == null) {
            synchronized (f32652f) {
                C8397a aVar3 = f32651e;
                aVar2 = aVar3;
                if (aVar3 == null) {
                    aVar2 = new C8397a();
                    f32651e = aVar2;
                }
            }
        }
        return aVar2;
    }

    /* renamed from: b */
    public static int m5692b() {
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted() ? 0 : 1;
            }
            return 0;
        } catch (Exception e) {
            return 2;
        }
    }
}
