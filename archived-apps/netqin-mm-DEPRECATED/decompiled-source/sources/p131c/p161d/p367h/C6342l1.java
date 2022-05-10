package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: c.d.h.l1 */
/* loaded from: classes2-dex2jar.jar:c/d/h/l1.class */
public class C6342l1 extends AbstractList<String> implements AbstractC6289d0, RandomAccess {

    /* renamed from: a */
    public final AbstractC6289d0 f19980a;

    /* renamed from: c.d.h.l1$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/l1$a.class */
    public class C6343a implements ListIterator<String> {

        /* renamed from: a */
        public ListIterator<String> f19981a;

        /* renamed from: b */
        public final /* synthetic */ int f19982b;

        public C6343a(int i) {
            this.f19982b = i;
            this.f19981a = C6342l1.this.f19980a.listIterator(this.f19982b);
        }

        /* renamed from: a */
        public void m21260a(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public /* bridge */ /* synthetic */ void add(String str) {
            m21260a(str);
            throw null;
        }

        /* renamed from: b */
        public void m21259b(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f19981a.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f19981a.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public String next() {
            return this.f19981a.next();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f19981a.nextIndex();
        }

        @Override // java.util.ListIterator
        public String previous() {
            return this.f19981a.previous();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f19981a.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public /* bridge */ /* synthetic */ void set(String str) {
            m21259b(str);
            throw null;
        }
    }

    /* renamed from: c.d.h.l1$b */
    /* loaded from: classes2-dex2jar.jar:c/d/h/l1$b.class */
    public class C6344b implements Iterator<String> {

        /* renamed from: a */
        public Iterator<String> f19984a;

        public C6344b() {
            this.f19984a = C6342l1.this.f19980a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f19984a.hasNext();
        }

        @Override // java.util.Iterator
        public String next() {
            return this.f19984a.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public C6342l1(AbstractC6289d0 d0Var) {
        this.f19980a = d0Var;
    }

    @Override // p131c.p161d.p367h.AbstractC6289d0
    /* renamed from: G */
    public AbstractC6289d0 mo21265G() {
        return this;
    }

    @Override // p131c.p161d.p367h.AbstractC6289d0
    /* renamed from: a */
    public void mo21263a(ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p367h.AbstractC6289d0
    /* renamed from: d */
    public Object mo21262d(int i) {
        return this.f19980a.mo21262d(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int i) {
        return this.f19980a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        return new C6344b();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i) {
        return new C6343a(i);
    }

    @Override // p131c.p161d.p367h.AbstractC6289d0
    /* renamed from: r */
    public List<?> mo21261r() {
        return this.f19980a.mo21261r();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f19980a.size();
    }
}
