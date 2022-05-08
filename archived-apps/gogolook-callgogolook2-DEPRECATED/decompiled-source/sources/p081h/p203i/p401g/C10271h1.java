package p081h.p203i.p401g;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: h.i.g.h1 */
/* loaded from: classes2-dex2jar.jar:h/i/g/h1.class */
public class C10271h1 extends AbstractList<String> implements AbstractC10243e0, RandomAccess {

    /* renamed from: a */
    public final AbstractC10243e0 f23112a;

    /* renamed from: h.i.g.h1$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/h1$a.class */
    public class C10272a implements ListIterator<String> {

        /* renamed from: a */
        public ListIterator<String> f23113a;

        /* renamed from: b */
        public final /* synthetic */ int f23114b;

        public C10272a(int i) {
            this.f23114b = i;
            this.f23113a = C10271h1.this.f23112a.listIterator(this.f23114b);
        }

        /* renamed from: a */
        public void m12886a(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public /* bridge */ /* synthetic */ void add(String str) {
            m12886a(str);
            throw null;
        }

        /* renamed from: b */
        public void m12885b(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f23113a.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f23113a.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public String next() {
            return this.f23113a.next();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f23113a.nextIndex();
        }

        @Override // java.util.ListIterator
        public String previous() {
            return this.f23113a.previous();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f23113a.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public /* bridge */ /* synthetic */ void set(String str) {
            m12885b(str);
            throw null;
        }
    }

    /* renamed from: h.i.g.h1$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/h1$b.class */
    public class C10273b implements Iterator<String> {

        /* renamed from: a */
        public Iterator<String> f23116a;

        public C10273b() {
            this.f23116a = C10271h1.this.f23112a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f23116a.hasNext();
        }

        @Override // java.util.Iterator
        public String next() {
            return this.f23116a.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public C10271h1(AbstractC10243e0 e0Var) {
        this.f23112a = e0Var;
    }

    @Override // p081h.p203i.p401g.AbstractC10243e0
    /* renamed from: a */
    public Object mo12891a(int i) {
        return this.f23112a.mo12891a(i);
    }

    @Override // p081h.p203i.p401g.AbstractC10243e0
    /* renamed from: b */
    public void mo12889b(AbstractC10253g gVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int i) {
        return this.f23112a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        return new C10273b();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i) {
        return new C10272a(i);
    }

    @Override // p081h.p203i.p401g.AbstractC10243e0
    /* renamed from: n */
    public List<?> mo12888n() {
        return this.f23112a.mo12888n();
    }

    @Override // p081h.p203i.p401g.AbstractC10243e0
    /* renamed from: o */
    public AbstractC10243e0 mo12887o() {
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f23112a.size();
    }
}
