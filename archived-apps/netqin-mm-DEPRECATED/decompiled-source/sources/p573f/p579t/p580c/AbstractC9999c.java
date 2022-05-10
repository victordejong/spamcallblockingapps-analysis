package p573f.p579t.p580c;

import p573f.p590w.p591b.AbstractC10035p;
/* renamed from: f.t.c.c */
/* loaded from: classes2-dex2jar.jar:f/t/c/c.class */
public interface AbstractC9999c {

    /* renamed from: f.t.c.c$a */
    /* loaded from: classes2-dex2jar.jar:f/t/c/c$a.class */
    public interface AbstractC10000a extends AbstractC9999c {
        @Override // p573f.p579t.p580c.AbstractC9999c
        /* renamed from: a */
        <E extends AbstractC10000a> E mo44a(AbstractC10001b<E> bVar);

        AbstractC10001b<?> getKey();
    }

    /* renamed from: f.t.c.c$b */
    /* loaded from: classes2-dex2jar.jar:f/t/c/c$b.class */
    public interface AbstractC10001b<E extends AbstractC10000a> {
    }

    /* renamed from: a */
    <E extends AbstractC10000a> E mo44a(AbstractC10001b<E> bVar);

    /* renamed from: b */
    AbstractC9999c mo42b(AbstractC10001b<?> bVar);

    <R> R fold(R r, AbstractC10035p<? super R, ? super AbstractC10000a, ? extends R> pVar);
}
