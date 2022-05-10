package p613k.p614d;
/* renamed from: k.d.f */
/* loaded from: classes2-dex2jar.jar:k/d/f.class */
public abstract class AbstractC10452f<T> extends AbstractC10459k<T, Float> {
    /* renamed from: a */
    public abstract void m123a(T t, float f);

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final void m122a(T t, Float f) {
        m123a((AbstractC10452f<T>) t, f.floatValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p613k.p614d.AbstractC10459k
    /* renamed from: a */
    public /* bridge */ /* synthetic */ void mo97a(Object obj, Float f) {
        m122a((AbstractC10452f<T>) obj, f);
    }
}
