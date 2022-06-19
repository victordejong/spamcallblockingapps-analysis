package androidx.work;
/* renamed from: androidx.work.l */
/* loaded from: classes-dex2jar.jar:androidx/work/l.class */
public abstract class AbstractC0540l {
    /* renamed from: c */
    public static AbstractC0540l m4311c() {
        return new a();
    }

    /* renamed from: a */
    public abstract AbstractC0539k m4313a(String str);

    /* renamed from: b */
    public final AbstractC0539k m4312b(String str) {
        AbstractC0539k m4313a = m4313a(str);
        AbstractC0539k abstractC0539k = m4313a;
        if (m4313a == null) {
            abstractC0539k = AbstractC0539k.m4315a(str);
        }
        return abstractC0539k;
    }
}
