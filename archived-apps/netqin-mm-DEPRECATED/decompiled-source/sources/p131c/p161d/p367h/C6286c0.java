package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: c.d.h.c0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/c0.class */
public class C6286c0 extends AbstractC6285c<String> implements AbstractC6289d0, RandomAccess {

    /* renamed from: c */
    public static final C6286c0 f19864c;

    /* renamed from: b */
    public final List<Object> f19865b;

    static {
        C6286c0 c0Var = new C6286c0();
        f19864c = c0Var;
        c0Var.mo20999l();
    }

    public C6286c0() {
        this(10);
    }

    public C6286c0(int i) {
        this(new ArrayList(i));
    }

    public C6286c0(ArrayList<Object> arrayList) {
        this.f19865b = arrayList;
    }

    /* renamed from: a */
    public static String m21673a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof ByteString ? ((ByteString) obj).toStringUtf8() : C6381y.m21002c((byte[]) obj);
    }

    @Override // p131c.p161d.p367h.AbstractC6289d0
    /* renamed from: G */
    public AbstractC6289d0 mo21265G() {
        return mo21000L() ? new C6342l1(this) : this;
    }

    /* renamed from: a */
    public void add(int i, String str) {
        m21675a();
        this.f19865b.add(i, str);
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p367h.AbstractC6289d0
    /* renamed from: a */
    public void mo21263a(ByteString byteString) {
        m21675a();
        this.f19865b.add(byteString);
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends String> collection) {
        m21675a();
        List<?> list = collection;
        if (collection instanceof AbstractC6289d0) {
            list = ((AbstractC6289d0) collection).mo21261r();
        }
        boolean addAll = this.f19865b.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6390i
    /* renamed from: b */
    public C6286c0 mo20996b(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f19865b);
            return new C6286c0(arrayList);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public String set(int i, String str) {
        m21675a();
        return m21673a(this.f19865b.set(i, str));
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        m21675a();
        this.f19865b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p367h.AbstractC6289d0
    /* renamed from: d */
    public Object mo21262d(int i) {
        return this.f19865b.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int i) {
        Object obj = this.f19865b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f19865b.set(i, stringUtf8);
            }
            return stringUtf8;
        }
        byte[] bArr = (byte[]) obj;
        String c = C6381y.m21002c(bArr);
        if (C6381y.m21003b(bArr)) {
            this.f19865b.set(i, c);
        }
        return c;
    }

    @Override // p131c.p161d.p367h.AbstractC6289d0
    /* renamed from: r */
    public List<?> mo21261r() {
        return Collections.unmodifiableList(this.f19865b);
    }

    @Override // java.util.AbstractList, java.util.List
    public String remove(int i) {
        m21675a();
        Object remove = this.f19865b.remove(i);
        ((AbstractList) this).modCount++;
        return m21673a(remove);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f19865b.size();
    }
}
