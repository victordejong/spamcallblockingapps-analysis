package kotlin.collections;

import java.util.AbstractCollection;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.markers.KMutableCollection;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\b'\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\t\b\u0004¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028��H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lkotlin/collections/AbstractMutableCollection;", "E", "Ljava/util/Collection;", "Lkotlin/jvm/internal/markers/KMutableCollection;", "Ljava/util/AbstractCollection;", "element", "", "add", "(Ljava/lang/Object;)Z", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractMutableCollection.class */
public abstract class AbstractMutableCollection<E> extends AbstractCollection<E> implements Collection<E>, KMutableCollection {
    /* renamed from: c */
    public abstract int mo1973c();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final /* bridge */ int size() {
        return mo1973c();
    }
}
