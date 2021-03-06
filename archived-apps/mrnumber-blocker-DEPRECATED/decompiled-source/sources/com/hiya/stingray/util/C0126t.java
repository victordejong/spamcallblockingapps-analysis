package com.hiya.stingray.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.s.b0;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.util.t */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/t.class */
public final class C0126t {
    /* renamed from: a */
    public static final String m927a(List<String> list) {
        Object obj;
        k.g(list, "stringList");
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (m926b((String) obj)) {
                break;
            }
        }
        String str = (String) obj;
        if (str == null) {
            str = "";
        }
        return str;
    }

    /* renamed from: b */
    public static final boolean m926b(String str) {
        if (str == null) {
            str = "";
        }
        return str.length() > 0;
    }

    /* renamed from: c */
    public static final <E, T extends Collection<? extends E>> boolean m925c(T t) {
        if (t == null) {
            t = kotlin.s.k.g();
        }
        return !t.isEmpty();
    }

    /* renamed from: d */
    public static final <K, V, T extends Map<K, ? extends V>> boolean m924d(T t) {
        if (t == null) {
            t = (T) b0.e();
        }
        return !t.isEmpty();
    }

    /* renamed from: e */
    public static final <E, T extends Collection<? extends E>> boolean m923e(T t) {
        if (t == null) {
            t = kotlin.s.k.g();
        }
        return t.isEmpty();
    }

    /* renamed from: f */
    public static final <K, V, T extends Map<K, ? extends V>> boolean m922f(T t) {
        if (t == null) {
            t = (T) b0.e();
        }
        return t.isEmpty();
    }
}
