package kotlin.coroutines;

import java.io.Serializable;
import kotlin.TypeCastException;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Ref$IntRef;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CombinedContext.class */
public final class CombinedContext implements CoroutineContext, Serializable {
    public final CoroutineContext.AbstractC10476a element;
    public final CoroutineContext left;

    /* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CombinedContext$Serialized.class */
    public static final class Serialized implements Serializable {
        public static final C10475a Companion = new C10475a(null);
        public static final long serialVersionUID = 0;
        public final CoroutineContext[] elements;

        /* renamed from: kotlin.coroutines.CombinedContext$Serialized$a */
        /* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CombinedContext$Serialized$a.class */
        public static final class C10475a {
            public C10475a() {
            }

            public /* synthetic */ C10475a(C10057o oVar) {
                this();
            }
        }

        public Serialized(CoroutineContext[] coroutineContextArr) {
            C10059q.m1637b(coroutineContextArr, "elements");
            this.elements = coroutineContextArr;
        }

        private final Object readResolve() {
            CoroutineContext[] coroutineContextArr = this.elements;
            CoroutineContext coroutineContext = EmptyCoroutineContext.INSTANCE;
            for (CoroutineContext coroutineContext2 : coroutineContextArr) {
                coroutineContext = coroutineContext.plus(coroutineContext2);
            }
            return coroutineContext;
        }

        public final CoroutineContext[] getElements() {
            return this.elements;
        }
    }

    public CombinedContext(CoroutineContext coroutineContext, CoroutineContext.AbstractC10476a aVar) {
        C10059q.m1637b(coroutineContext, "left");
        C10059q.m1637b(aVar, "element");
        this.left = coroutineContext;
        this.element = aVar;
    }

    private final boolean contains(CoroutineContext.AbstractC10476a aVar) {
        return C10059q.m1643a(get(aVar.getKey()), aVar);
    }

    private final boolean containsAll(CombinedContext combinedContext) {
        while (contains(combinedContext.element)) {
            CoroutineContext coroutineContext = combinedContext.left;
            if (coroutineContext instanceof CombinedContext) {
                combinedContext = (CombinedContext) coroutineContext;
            } else if (coroutineContext != null) {
                return contains((CoroutineContext.AbstractC10476a) coroutineContext);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
            }
        }
        return false;
    }

    private final int size() {
        int i = 2;
        CombinedContext combinedContext = this;
        while (true) {
            Object obj = combinedContext.left;
            Object obj2 = obj;
            if (!(obj instanceof CombinedContext)) {
                obj2 = null;
            }
            combinedContext = (CombinedContext) obj2;
            if (combinedContext == null) {
                return i;
            }
            i++;
        }
    }

    private final Object writeReplace() {
        int size = size();
        CoroutineContext[] coroutineContextArr = new CoroutineContext[size];
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        boolean z = false;
        ref$IntRef.element = 0;
        fold(C9946p.f37137a, new CombinedContext$writeReplace$1(coroutineContextArr, ref$IntRef));
        if (ref$IntRef.element == size) {
            z = true;
        }
        if (z) {
            return new Serialized(coroutineContextArr);
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (r0.containsAll(r3) != false) goto L_0x002c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            if (r0 == r1) goto L_0x002c
            r0 = r4
            boolean r0 = r0 instanceof kotlin.coroutines.CombinedContext
            if (r0 == 0) goto L_0x0027
            r0 = r4
            kotlin.coroutines.CombinedContext r0 = (kotlin.coroutines.CombinedContext) r0
            r4 = r0
            r0 = r4
            int r0 = r0.size()
            r1 = r3
            int r1 = r1.size()
            if (r0 != r1) goto L_0x0027
            r0 = r4
            r1 = r3
            boolean r0 = r0.containsAll(r1)
            if (r0 == 0) goto L_0x0027
            goto L_0x002c
        L_0x0027:
            r0 = 0
            r5 = r0
            goto L_0x002e
        L_0x002c:
            r0 = 1
            r5 = r0
        L_0x002e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.coroutines.CombinedContext.equals(java.lang.Object):boolean");
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, AbstractC10035p<? super R, ? super CoroutineContext.AbstractC10476a, ? extends R> pVar) {
        C10059q.m1637b(pVar, "operation");
        return (R) pVar.invoke((Object) this.left.fold(r, pVar), this.element);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.AbstractC10476a> E get(CoroutineContext.AbstractC10477b<E> bVar) {
        C10059q.m1637b(bVar, "key");
        CombinedContext combinedContext = this;
        while (true) {
            E e = (E) combinedContext.element.get(bVar);
            if (e != null) {
                return e;
            }
            CoroutineContext coroutineContext = combinedContext.left;
            if (!(coroutineContext instanceof CombinedContext)) {
                return (E) coroutineContext.get(bVar);
            }
            combinedContext = (CombinedContext) coroutineContext;
        }
    }

    public int hashCode() {
        return this.left.hashCode() + this.element.hashCode();
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.AbstractC10477b<?> bVar) {
        C10059q.m1637b(bVar, "key");
        if (this.element.get(bVar) != null) {
            return this.left;
        }
        CoroutineContext minusKey = this.left.minusKey(bVar);
        return minusKey == this.left ? this : minusKey == EmptyCoroutineContext.INSTANCE ? this.element : new CombinedContext(minusKey, this.element);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        C10059q.m1637b(coroutineContext, "context");
        return CoroutineContext.DefaultImpls.m47a(this, coroutineContext);
    }

    public String toString() {
        return "[" + ((String) fold("", CombinedContext$toString$1.INSTANCE)) + "]";
    }
}
