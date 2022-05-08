package com.bumptech.glide.i;

import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/i/e.class */
public class e<T, Y> {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap<T, Y> f3466a = new LinkedHashMap<>(100, 0.75f, true);

    /* renamed from: b  reason: collision with root package name */
    protected int f3467b = 0;
    private int c;
    private final int d;

    public e(int i) {
        this.d = i;
        this.c = i;
    }

    protected int a(Y y) {
        return 1;
    }

    public final void a() {
        b(0);
    }

    public void a(T t, Y y) {
    }

    public final Y b(T t) {
        return this.f3466a.get(t);
    }

    public final Y b(T t, Y y) {
        Y put;
        if (a(y) >= this.c) {
            a(t, y);
            put = null;
        } else {
            put = this.f3466a.put(t, y);
            if (y != null) {
                this.f3467b += a(y);
            }
            if (put != null) {
                this.f3467b -= a(put);
            }
            b(this.c);
        }
        return put;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(int i) {
        while (this.f3467b > i) {
            Map.Entry<T, Y> next = this.f3466a.entrySet().iterator().next();
            Y value = next.getValue();
            this.f3467b -= a(value);
            T key = next.getKey();
            this.f3466a.remove(key);
            a(key, value);
        }
    }

    public final Y c(T t) {
        Y remove = this.f3466a.remove(t);
        if (remove != null) {
            this.f3467b -= a(remove);
        }
        return remove;
    }
}
