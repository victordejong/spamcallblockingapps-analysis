package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.SavedStateHandle;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\u001a\u0015\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002H\u0086\b\u001a+\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\u0012\u0010\u0003\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0004\"\u0002H\u0002¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, m815d2 = {"arraySetOf", "Landroidx/collection/ArraySet;", ExifInterface.GPS_DIRECTION_TRUE, SavedStateHandle.VALUES, "", "([Ljava/lang/Object;)Landroidx/collection/ArraySet;", "collection-ktx"}, m814k = 2, m813mv = {1, 1, 13})
/* loaded from: classes-dex2jar.jar:androidx/collection/ArraySetKt.class */
public final class ArraySetKt {
    public static final <T> ArraySet<T> arraySetOf() {
        return new ArraySet<>();
    }

    public static final <T> ArraySet<T> arraySetOf(T... tArr) {
        C15149k.m377b(tArr, SavedStateHandle.VALUES);
        ArraySet<T> arraySet = new ArraySet<>(tArr.length);
        for (T t : tArr) {
            arraySet.add(t);
        }
        return arraySet;
    }
}
