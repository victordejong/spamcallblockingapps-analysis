package p573f.p594y;

import java.util.Random;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.y.b */
/* loaded from: classes2-dex2jar.jar:f/y/b.class */
public final class C10070b extends AbstractC10069a {

    /* renamed from: c */
    public final C10071a f37196c = new C10071a();

    /* renamed from: f.y.b$a */
    /* loaded from: classes2-dex2jar.jar:f/y/b$a.class */
    public static final class C10071a extends ThreadLocal<Random> {
        @Override // java.lang.ThreadLocal
        public Random initialValue() {
            return new Random();
        }
    }

    @Override // p573f.p594y.AbstractC10069a
    /* renamed from: g */
    public Random mo1595g() {
        Random random = this.f37196c.get();
        C10059q.m1642a((Object) random, "implStorage.get()");
        return random;
    }
}
