package com.b.a.a;

import com.b.a.y;
import java.util.LinkedHashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/b/a/a/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final Set<y> f3300a = new LinkedHashSet();

    public final void a(y yVar) {
        synchronized (this) {
            this.f3300a.add(yVar);
        }
    }

    public final void b(y yVar) {
        synchronized (this) {
            this.f3300a.remove(yVar);
        }
    }

    public final boolean c(y yVar) {
        boolean contains;
        synchronized (this) {
            contains = this.f3300a.contains(yVar);
        }
        return contains;
    }
}
