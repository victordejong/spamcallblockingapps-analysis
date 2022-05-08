package p626l.p631e0;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import p626l.C14978j;
import p626l.C14986p;
import p626l.p628b0.C14888d;
import p626l.p628b0.C14896i;
import p626l.p630d0.AbstractC14921e;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\r\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n��\b\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012:\u0010\b\u001a6\u0012\u0004\u0012\u00020\u0004\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r0\t¢\u0006\u0002\b\u000e¢\u0006\u0002\u0010\u000fJ\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011H\u0096\u0002RB\u0010\b\u001a6\u0012\u0004\u0012\u00020\u0004\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r0\t¢\u0006\u0002\b\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m815d2 = {"Lkotlin/text/DelimitedRangesSequence;", "Lkotlin/sequences/Sequence;", "Lkotlin/ranges/IntRange;", "input", "", "startIndex", "", "limit", "getNextMatch", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "currentIndex", "Lkotlin/Pair;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V", "iterator", "", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.e0.d */
/* loaded from: classes3-dex2jar.jar:l/e0/d.class */
public final class C14939d implements AbstractC14921e<C14888d> {

    /* renamed from: a */
    public final CharSequence f32980a;

    /* renamed from: b */
    public final int f32981b;

    /* renamed from: c */
    public final int f32982c;

    /* renamed from: d */
    public final AbstractC15122p<CharSequence, Integer, C14978j<Integer, Integer>> f32983d;

    /* renamed from: l.e0.d$a */
    /* loaded from: classes3-dex2jar.jar:l/e0/d$a.class */
    public static final class C14940a implements Iterator<C14888d>, AbstractC15141a {

        /* renamed from: a */
        public int f32984a = -1;

        /* renamed from: b */
        public int f32985b;

        /* renamed from: c */
        public int f32986c;

        /* renamed from: d */
        public C14888d f32987d;

        /* renamed from: e */
        public int f32988e;

        public C14940a() {
            this.f32985b = C14896i.m795a(C14939d.this.f32981b, 0, C14939d.this.f32980a.length());
            this.f32986c = this.f32985b;
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0037, code lost:
            if (r6.f32988e < r6.f32989f.f32982c) goto L_0x003a;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m755a() {
            /*
                Method dump skipped, instructions count: 247
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p626l.p631e0.C14939d.C14940a.m755a():void");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f32984a == -1) {
                m755a();
            }
            boolean z = true;
            if (this.f32984a != 1) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Iterator
        public C14888d next() {
            if (this.f32984a == -1) {
                m755a();
            }
            if (this.f32984a != 0) {
                C14888d dVar = this.f32987d;
                if (dVar != null) {
                    this.f32987d = null;
                    this.f32984a = -1;
                    return dVar;
                }
                throw new C14986p("null cannot be cast to non-null type kotlin.ranges.IntRange");
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C14939d(CharSequence charSequence, int i, int i2, AbstractC15122p<? super CharSequence, ? super Integer, C14978j<Integer, Integer>> pVar) {
        C15149k.m377b(charSequence, "input");
        C15149k.m377b(pVar, "getNextMatch");
        this.f32980a = charSequence;
        this.f32981b = i;
        this.f32982c = i2;
        this.f32983d = pVar;
    }

    @Override // p626l.p630d0.AbstractC14921e
    public Iterator<C14888d> iterator() {
        return new C14940a();
    }
}
