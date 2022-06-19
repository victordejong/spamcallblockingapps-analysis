package p193e.p194a.p739f0.p742f;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
/* renamed from: e.a.f0.f.c */
/* loaded from: classes13-dex2jar.jar:e/a/f0/f/c.class */
public final class C13882c implements Provider<AbstractC8432l> {

    /* renamed from: a */
    public final AbstractC8412c f40260a;

    public C13882c(AbstractC8412c abstractC8412c) {
        this.f40260a = abstractC8412c;
    }

    public Object get() {
        AbstractC8432l mo11657L = this.f40260a.mo11657L();
        Objects.requireNonNull(mo11657L, "Cannot return null from a non-@Nullable component method");
        return mo11657L;
    }
}
