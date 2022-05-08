package com.google.a.a;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/a/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    final String f3670a;

    /* loaded from: classes-dex2jar.jar:com/google/a/a/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final b f3671a;

        /* renamed from: b  reason: collision with root package name */
        private final String f3672b;

        private a(b bVar, String str) {
            this.f3671a = bVar;
            this.f3672b = (String) d.a(str);
        }

        public /* synthetic */ a(b bVar, String str, byte b2) {
            this(bVar, str);
        }

        public final StringBuilder a(StringBuilder sb, Iterator<? extends Map.Entry<?, ?>> it) {
            try {
                d.a(sb);
                if (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    sb.append(b.a(entry.getKey()));
                    sb.append((CharSequence) this.f3672b);
                    sb.append(b.a(entry.getValue()));
                    while (it.hasNext()) {
                        sb.append((CharSequence) this.f3671a.f3670a);
                        Map.Entry entry2 = (Map.Entry) it.next();
                        sb.append(b.a(entry2.getKey()));
                        sb.append((CharSequence) this.f3672b);
                        sb.append(b.a(entry2.getValue()));
                    }
                }
                return sb;
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }
    }

    private b(String str) {
        this.f3670a = (String) d.a(str);
    }

    public static b a(String str) {
        return new b(str);
    }

    static CharSequence a(Object obj) {
        d.a(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    private StringBuilder a(StringBuilder sb, Iterator<?> it) {
        try {
            d.a(sb);
            if (it.hasNext()) {
                sb.append(a(it.next()));
                while (it.hasNext()) {
                    sb.append((CharSequence) this.f3670a);
                    sb.append(a(it.next()));
                }
            }
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public final StringBuilder a(StringBuilder sb, Iterable<?> iterable) {
        return a(sb, iterable.iterator());
    }
}
