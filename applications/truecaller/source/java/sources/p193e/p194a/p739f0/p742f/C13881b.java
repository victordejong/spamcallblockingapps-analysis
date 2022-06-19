package p193e.p194a.p739f0.p742f;

import android.content.Context;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p372b0.AbstractC8412c;
/* renamed from: e.a.f0.f.b */
/* loaded from: classes13-dex2jar.jar:e/a/f0/f/b.class */
public final class C13881b implements Provider<Context> {

    /* renamed from: a */
    public final AbstractC8412c f40259a;

    public C13881b(AbstractC8412c abstractC8412c) {
        this.f40259a = abstractC8412c;
    }

    public Object get() {
        Context mo12335j = this.f40259a.mo12335j();
        Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
        return mo12335j;
    }
}
