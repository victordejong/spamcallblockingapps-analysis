package p193e.p194a.p614c3;

import com.truecaller.buildinfo.BuildName;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c3.c */
/* loaded from: classes6-dex2jar.jar:e/a/c3/c.class */
public final class C10929c extends m implements l<BuildName, Boolean> {

    /* renamed from: b */
    public static final C10929c f32443b = new C10929c();

    public C10929c() {
        super(1);
    }

    /* renamed from: d */
    public Object m25492d(Object obj) {
        BuildName buildName = (BuildName) obj;
        s1.z.c.l.e(buildName, "it");
        return Boolean.valueOf(buildName.getPackageName().length() > 0);
    }
}
