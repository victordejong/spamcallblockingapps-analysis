package p459j.p460a.p582w0;

import gogolook.callgogolook2.realm.obj.tag.TagRealmObject;
import java.util.List;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.C13198r;
/* renamed from: j.a.w0.j4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/j4.class */
public class C14042j4 {
    /* renamed from: a */
    public static String m2727a(String str) {
        try {
            List<TagRealmObject> a = C13198r.m4426a(C13193p.m4437a("_type", "_status", "_e164"), C13193p.m4438a(0, 2, str), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO, C13193p.EnumC13194a.EQUAL_TO), null, null);
            return (a == null || a.isEmpty()) ? "" : a.get(0).get_name();
        } catch (Exception e) {
            C13973d4.m2952a(e);
            return null;
        }
    }
}
