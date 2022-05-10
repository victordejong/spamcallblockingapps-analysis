package p530d.p531a.p532v0;

import java.util.concurrent.atomic.AtomicLong;
/* renamed from: d.a.v0.h */
/* loaded from: classes2-dex2jar.jar:d/a/v0/h.class */
public final class C9368h implements AbstractC9503t0 {

    /* renamed from: a */
    public final AtomicLong f36033a = new AtomicLong();

    @Override // p530d.p531a.p532v0.AbstractC9503t0
    public void add(long j) {
        this.f36033a.getAndAdd(j);
    }
}
