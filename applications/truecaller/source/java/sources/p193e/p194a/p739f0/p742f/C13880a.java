package p193e.p194a.p739f0.p742f;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
/* renamed from: e.a.f0.f.a */
/* loaded from: classes13-dex2jar.jar:e/a/f0/f/a.class */
public final class C13880a implements Provider<AbstractC8438a> {

    /* renamed from: a */
    public final AbstractC8412c f40258a;

    public C13880a(AbstractC8412c abstractC8412c) {
        this.f40258a = abstractC8412c;
    }

    public Object get() {
        AbstractC8438a mo12484Y = this.f40258a.mo12484Y();
        Objects.requireNonNull(mo12484Y, "Cannot return null from a non-@Nullable component method");
        return mo12484Y;
    }
}
