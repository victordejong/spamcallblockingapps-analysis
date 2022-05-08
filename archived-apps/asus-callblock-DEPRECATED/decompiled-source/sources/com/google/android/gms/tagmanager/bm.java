package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bm.class */
final class bm extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4308b = h.REGEX_GROUP.toString();
    private static final String c = i.ARG0.toString();
    private static final String d = i.ARG1.toString();
    private static final String e = i.IGNORE_CASE.toString();
    private static final String f = i.GROUP.toString();

    public bm() {
        super(f4308b, c, d);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        k.a aVar;
        int i;
        k.a aVar2 = map.get(c);
        k.a aVar3 = map.get(d);
        if (aVar2 == null || aVar2 == cn.f() || aVar3 == null || aVar3 == cn.f()) {
            aVar = cn.f();
        } else {
            int i2 = 64;
            if (cn.d(map.get(e)).booleanValue()) {
                i2 = 66;
            }
            k.a aVar4 = map.get(f);
            if (aVar4 != null) {
                Long c2 = cn.c(aVar4);
                if (c2 == cn.b()) {
                    aVar = cn.f();
                } else {
                    int intValue = c2.intValue();
                    i = intValue;
                    if (intValue < 0) {
                        aVar = cn.f();
                    }
                }
            } else {
                i = 1;
            }
            try {
                Matcher matcher = Pattern.compile(cn.a(aVar3), i2).matcher(cn.a(aVar2));
                String str = null;
                if (matcher.find()) {
                    str = null;
                    if (matcher.groupCount() >= i) {
                        str = matcher.group(i);
                    }
                }
                aVar = str == null ? cn.f() : cn.a((Object) str);
            } catch (PatternSyntaxException e2) {
                aVar = cn.f();
            }
        }
        return aVar;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}
