package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15124r;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u0002H\u00022\u0006\u0010\b\u001a\u0002H\u00042\b\u0010\t\u001a\u0004\u0018\u0001H\u0004H\n¢\u0006\u0004\b\n\u0010\u000b"}, m815d2 = {"<anonymous>", "", "K", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "<anonymous parameter 0>", "", "<anonymous parameter 1>", "<anonymous parameter 2>", "<anonymous parameter 3>", "invoke", "(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V"}, m814k = 3, m813mv = {1, 1, 13})
/* loaded from: classes-dex2jar.jar:androidx/collection/LruCacheKt$lruCache$3.class */
public final class LruCacheKt$lruCache$3 extends AbstractC15150l implements AbstractC15124r<Boolean, K, V, V, C14989s> {
    public static final LruCacheKt$lruCache$3 INSTANCE = new LruCacheKt$lruCache$3();

    public LruCacheKt$lruCache$3() {
        super(4);
    }

    @Override // p626l.p641z.p642c.AbstractC15124r
    public /* bridge */ /* synthetic */ C14989s invoke(Boolean bool, Object obj, Object obj2, Object obj3) {
        invoke(bool.booleanValue(), (boolean) obj, obj2, obj3);
        return C14989s.f33022a;
    }

    public final void invoke(boolean z, K k, V v, V v2) {
        C15149k.m377b(k, "<anonymous parameter 1>");
        C15149k.m377b(v, "<anonymous parameter 2>");
    }
}
