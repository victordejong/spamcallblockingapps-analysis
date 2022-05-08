package com.google.a.b;

import com.google.a.a.d;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/a/b/p.class */
public final class p {

    /* loaded from: classes-dex2jar.jar:com/google/a/b/p$a.class */
    static abstract class a<E> implements Iterable<E> {
        a() {
        }

        public String toString() {
            return p.a(this);
        }
    }

    public static <T> Iterable<T> a(final Iterable<?> iterable, final Class<T> cls) {
        d.a(iterable);
        d.a(cls);
        return new a<T>() { // from class: com.google.a.b.p.1
            @Override // java.lang.Iterable
            public final Iterator<T> iterator() {
                return q.a((Iterator<?>) iterable.iterator(), cls);
            }
        };
    }

    public static String a(Iterable<?> iterable) {
        return q.a(iterable.iterator());
    }
}
