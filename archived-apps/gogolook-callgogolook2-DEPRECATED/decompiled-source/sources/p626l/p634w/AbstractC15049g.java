package p626l.p634w;

import androidx.core.app.Person;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14986p;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\bg\u0018��2\u00020\u0001:\u0002\u0011\u0012J5\u0010\u0002\u001a\u0002H\u0003\"\u0004\b��\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u00032\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002H\u00030\u0006H&¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u0004\u0018\u0001H\n\"\b\b��\u0010\n*\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\n0\fH¦\u0002¢\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u00020��2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH&J\u0011\u0010\u000f\u001a\u00020��2\u0006\u0010\u0010\u001a\u00020��H\u0096\u0002¨\u0006\u0013"}, m815d2 = {"Lkotlin/coroutines/CoroutineContext;", "", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", ExifInterface.LONGITUDE_EAST, Person.KEY_KEY, "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "plus", "context", "Element", "Key", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.w.g */
/* loaded from: classes3-dex2jar.jar:l/w/g.class */
public interface AbstractC15049g {

    /* renamed from: l.w.g$a */
    /* loaded from: classes3-dex2jar.jar:l/w/g$a.class */
    public static final class C15050a {

        /* renamed from: l.w.g$a$a */
        /* loaded from: classes3-dex2jar.jar:l/w/g$a$a.class */
        public static final class C15051a extends AbstractC15150l implements AbstractC15122p<AbstractC15049g, AbstractC15052b, AbstractC15049g> {

            /* renamed from: a */
            public static final C15051a f33079a = new C15051a();

            public C15051a() {
                super(2);
            }

            /* renamed from: a */
            public final AbstractC15049g invoke(AbstractC15049g gVar, AbstractC15052b bVar) {
                C15149k.m377b(gVar, "acc");
                C15149k.m377b(bVar, "element");
                AbstractC15049g minusKey = gVar.minusKey(bVar.getKey());
                AbstractC15049g gVar2 = bVar;
                if (minusKey != C15055h.f33080a) {
                    AbstractC15045e eVar = (AbstractC15045e) minusKey.get(AbstractC15045e.f33077M);
                    if (eVar == null) {
                        gVar2 = new C15039c(minusKey, bVar);
                    } else {
                        AbstractC15049g minusKey2 = minusKey.minusKey(AbstractC15045e.f33077M);
                        gVar2 = minusKey2 == C15055h.f33080a ? new C15039c(bVar, eVar) : new C15039c(new C15039c(minusKey2, bVar), eVar);
                    }
                }
                return gVar2;
            }
        }

        /* renamed from: a */
        public static AbstractC15049g m488a(AbstractC15049g gVar, AbstractC15049g gVar2) {
            C15149k.m377b(gVar2, "context");
            if (gVar2 != C15055h.f33080a) {
                gVar = (AbstractC15049g) gVar2.fold(gVar, C15051a.f33079a);
            }
            return gVar;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018��2\u00020\u0001J5\u0010\u0006\u001a\u0002H\u0007\"\u0004\b��\u0010\u00072\u0006\u0010\b\u001a\u0002H\u00072\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020��\u0012\u0004\u0012\u0002H\u00070\nH\u0016¢\u0006\u0002\u0010\u000bJ(\u0010\f\u001a\u0004\u0018\u0001H\r\"\b\b��\u0010\r*\u00020��2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\r0\u0003H\u0096\u0002¢\u0006\u0002\u0010\u000eJ\u0014\u0010\u000f\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0016R\u0016\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0010"}, m815d2 = {"Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", Person.KEY_KEY, "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", ExifInterface.LONGITUDE_EAST, "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
    /* renamed from: l.w.g$b */
    /* loaded from: classes3-dex2jar.jar:l/w/g$b.class */
    public interface AbstractC15052b extends AbstractC15049g {

        /* renamed from: l.w.g$b$a */
        /* loaded from: classes3-dex2jar.jar:l/w/g$b$a.class */
        public static final class C15053a {
            /* renamed from: a */
            public static <R> R m486a(AbstractC15052b bVar, R r, AbstractC15122p<? super R, ? super AbstractC15052b, ? extends R> pVar) {
                C15149k.m377b(pVar, "operation");
                return (R) pVar.invoke(r, bVar);
            }

            /* renamed from: a */
            public static <E extends AbstractC15052b> E m485a(AbstractC15052b bVar, AbstractC15054c<E> cVar) {
                C15149k.m377b(cVar, Person.KEY_KEY);
                if (!C15149k.m384a(bVar.getKey(), cVar)) {
                    bVar = (E) null;
                } else if (bVar == null) {
                    throw new C14986p("null cannot be cast to non-null type E");
                }
                return (E) bVar;
            }

            /* renamed from: a */
            public static AbstractC15049g m484a(AbstractC15052b bVar, AbstractC15049g gVar) {
                C15149k.m377b(gVar, "context");
                return C15050a.m488a(bVar, gVar);
            }

            /* renamed from: b */
            public static AbstractC15049g m483b(AbstractC15052b bVar, AbstractC15054c<?> cVar) {
                C15149k.m377b(cVar, Person.KEY_KEY);
                AbstractC15049g gVar = bVar;
                if (C15149k.m384a(bVar.getKey(), cVar)) {
                    gVar = C15055h.f33080a;
                }
                return gVar;
            }
        }

        @Override // p626l.p634w.AbstractC15049g
        <E extends AbstractC15052b> E get(AbstractC15054c<E> cVar);

        AbstractC15054c<?> getKey();
    }

    /* renamed from: l.w.g$c */
    /* loaded from: classes3-dex2jar.jar:l/w/g$c.class */
    public interface AbstractC15054c<E extends AbstractC15052b> {
    }

    <R> R fold(R r, AbstractC15122p<? super R, ? super AbstractC15052b, ? extends R> pVar);

    <E extends AbstractC15052b> E get(AbstractC15054c<E> cVar);

    AbstractC15049g minusKey(AbstractC15054c<?> cVar);

    AbstractC15049g plus(AbstractC15049g gVar);
}
