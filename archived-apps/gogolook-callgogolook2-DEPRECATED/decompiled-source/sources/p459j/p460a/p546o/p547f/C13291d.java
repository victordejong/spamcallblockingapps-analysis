package p459j.p460a.p546o.p547f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p081h.p203i.p383d.C10079b;
import p081h.p203i.p383d.C10080c;
import p081h.p203i.p383d.C10083d;
import p459j.p460a.p546o.p547f.C13284b;
/* renamed from: j.a.o.f.d */
/* loaded from: classes2-dex2jar.jar:j/a/o/f/d.class */
public final class C13291d extends C10083d {
    public static void ValidateVersion() {
        C10079b.m13451a();
    }

    public static void addCategories(C10080c cVar, int i) {
        cVar.m13430b(0, i, 0);
    }

    public static int createCategoriesVector(C10080c cVar, int[] iArr) {
        cVar.m13424c(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            cVar.m13432b(iArr[length]);
        }
        return cVar.m13426c();
    }

    public static int createFaqContent(C10080c cVar, int i) {
        cVar.m13416h(1);
        addCategories(cVar, i);
        return endFaqContent(cVar);
    }

    public static int endFaqContent(C10080c cVar) {
        return cVar.m13435b();
    }

    public static void finishFaqContentBuffer(C10080c cVar, int i) {
        cVar.m13425c(i);
    }

    public static void finishSizePrefixedFaqContentBuffer(C10080c cVar, int i) {
        cVar.m13422d(i);
    }

    public static C13291d getRootAsFaqContent(ByteBuffer byteBuffer) {
        return getRootAsFaqContent(byteBuffer, new C13291d());
    }

    public static C13291d getRootAsFaqContent(ByteBuffer byteBuffer, C13291d dVar) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return dVar.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public static void startCategoriesVector(C10080c cVar, int i) {
        cVar.m13424c(4, i, 4);
    }

    public static void startFaqContent(C10080c cVar) {
        cVar.m13416h(1);
    }

    public C13291d __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    public C13284b categories(int i) {
        return categories(new C13284b(), i);
    }

    public C13284b categories(C13284b bVar, int i) {
        int __offset = __offset(4);
        return __offset != 0 ? bVar.__assign(__indirect(__vector(__offset) + (i * 4)), this.f22804bb) : null;
    }

    public int categoriesLength() {
        int __offset = __offset(4);
        return __offset != 0 ? __vector_len(__offset) : 0;
    }

    public C13284b.C13285a categoriesVector() {
        return categoriesVector(new C13284b.C13285a());
    }

    public C13284b.C13285a categoriesVector(C13284b.C13285a aVar) {
        int __offset = __offset(4);
        return __offset != 0 ? aVar.__assign(__vector(__offset), 4, this.f22804bb) : null;
    }
}
