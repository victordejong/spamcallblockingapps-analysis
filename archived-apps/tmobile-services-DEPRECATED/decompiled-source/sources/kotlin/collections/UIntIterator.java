package kotlin.collections;

import java.util.Iterator;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.jvm.internal.markers.KMappedMarker;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b'\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u0003H\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u0003H&ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0007\u0010\u0005ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u000b"}, d2 = {"Lkotlin/collections/UIntIterator;", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "Lkotlin/UInt;", "next-pVg5ArA", "()I", "next", "nextUInt-pVg5ArA", "nextUInt", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/collections/UIntIterator.class */
public abstract class UIntIterator implements Iterator<UInt>, KMappedMarker {
    /* renamed from: a */
    public final int m2054a() {
        return mo1702b();
    }

    /* renamed from: b */
    public abstract int mo1702b();

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ UInt next() {
        return UInt.m2447a(m2054a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
