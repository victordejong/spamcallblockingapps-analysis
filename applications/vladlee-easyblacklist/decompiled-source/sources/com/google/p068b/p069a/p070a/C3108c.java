package com.google.p068b.p069a.p070a;

import java.util.LinkedHashMap;
import java.util.regex.Pattern;
/* renamed from: com.google.b.a.a.c */
/* loaded from: classes-dex2jar.jar:com/google/b/a/a/c.class */
public final class C3108c {

    /* renamed from: a */
    private C3109a<String, Pattern> f18752a = new C3109a<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.b.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/b/a/a/c$a.class */
    public static final class C3109a<K, V> {

        /* renamed from: b */
        private int f18754b = 100;

        /* renamed from: a */
        private LinkedHashMap<K, V> f18753a = new C3110d(this);

        /* renamed from: a */
        public final V m745a(K k) {
            V v;
            synchronized (this) {
                v = this.f18753a.get(k);
            }
            return v;
        }

        /* renamed from: a */
        public final void m744a(K k, V v) {
            synchronized (this) {
                this.f18753a.put(k, v);
            }
        }
    }

    /* renamed from: a */
    public final Pattern m747a(String str) {
        Pattern a = this.f18752a.m745a((C3109a<String, Pattern>) str);
        Pattern pattern = a;
        if (a == null) {
            pattern = Pattern.compile(str);
            this.f18752a.m744a(str, pattern);
        }
        return pattern;
    }
}
