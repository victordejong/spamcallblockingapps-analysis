package p193e.p194a.p947k.p973n.p978h;

import com.truecaller.videocallerid.data.PredefinedVideoDownloadErrorType;
import com.truecaller.videocallerid.data.PredefinedVideoResult;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p971l.AbstractC16121c;
import p193e.p194a.p947k.p981q.AbstractC16262b;
import q3.a.i0;
import q3.a.x2.a1;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.db.predefinedVideos.PredefinedVideosRepositoryImpl$downloadPredefinedVideos$5$1", f = "PredefinedVideosRepository.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k.n.h.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/h/b.class */
public final class C16235b extends i implements p<AbstractC16262b, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f45761e;

    /* renamed from: f */
    public final /* synthetic */ C16238d f45762f;

    /* renamed from: g */
    public final /* synthetic */ Map f45763g;

    /* renamed from: h */
    public final /* synthetic */ List f45764h;

    /* renamed from: i */
    public final /* synthetic */ i0 f45765i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16235b(d dVar, C16238d c16238d, Map map, List list, i0 i0Var) {
        super(2, dVar);
        this.f45762f = c16238d;
        this.f45763g = map;
        this.f45764h = list;
        this.f45765i = i0Var;
    }

    /* renamed from: i */
    public final d<s> m17688i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C16235b c16235b = new C16235b(dVar, this.f45762f, this.f45763g, this.f45764h, this.f45765i);
        c16235b.f45761e = obj;
        return c16235b;
    }

    /* renamed from: k */
    public final Object m17687k(Object obj, Object obj2) {
        C16235b m17688i = m17688i(obj, (d) obj2);
        s sVar = s.a;
        m17688i.m17686s(sVar);
        return sVar;
    }

    /* renamed from: s */
    public final Object m17686s(Object obj) {
        Object obj2;
        Object obj3;
        Object obj4;
        C25225a.m3932a3(obj);
        AbstractC16262b abstractC16262b = (AbstractC16262b) this.f45761e;
        C16238d c16238d = this.f45762f;
        Map<String, a1<AbstractC16121c>> map = this.f45763g;
        List list = this.f45764h;
        Objects.requireNonNull(c16238d);
        if (abstractC16262b instanceof AbstractC16262b.C16263a) {
            String str = ((AbstractC16262b.C16263a) abstractC16262b).f45816b.f68355a.f4989a;
            l.d(str, "downloadState.download.request.id");
            Iterator it = list.iterator();
            do {
                obj4 = null;
                if (!it.hasNext()) {
                    break;
                }
                obj4 = it.next();
            } while (!l.a(((PredefinedVideoResult) obj4).getId(), str));
            PredefinedVideoResult predefinedVideoResult = (PredefinedVideoResult) obj4;
            if (predefinedVideoResult != null) {
                c16238d.m17682a(map, str, new AbstractC16121c.C16122a(predefinedVideoResult));
            }
            c16238d.f45769c.mo17654b(str);
        } else if (abstractC16262b instanceof AbstractC16262b.C16264b) {
            Iterator it2 = list.iterator();
            do {
                obj3 = null;
                if (!it2.hasNext()) {
                    break;
                }
                obj3 = it2.next();
            } while (!l.a(((PredefinedVideoResult) obj3).getId(), ((AbstractC16262b.C16264b) abstractC16262b).f45817a));
            PredefinedVideoResult predefinedVideoResult2 = (PredefinedVideoResult) obj3;
            if (predefinedVideoResult2 != null) {
                c16238d.m17682a(map, predefinedVideoResult2.getId(), new AbstractC16121c.C16123b(predefinedVideoResult2, !c16238d.f45771e.mo13429d() ? PredefinedVideoDownloadErrorType.NO_INTERNET : PredefinedVideoDownloadErrorType.UNKNOWN));
            }
            c16238d.f45769c.mo17654b(((AbstractC16262b.C16264b) abstractC16262b).f45817a);
        } else if (abstractC16262b instanceof AbstractC16262b.C16265c) {
            Iterator it3 = list.iterator();
            do {
                obj2 = null;
                if (!it3.hasNext()) {
                    break;
                }
                obj2 = it3.next();
            } while (!l.a(((PredefinedVideoResult) obj2).getId(), ((AbstractC16262b.C16265c) abstractC16262b).f45818a));
            PredefinedVideoResult predefinedVideoResult3 = (PredefinedVideoResult) obj2;
            if (predefinedVideoResult3 != null) {
                c16238d.m17682a(map, predefinedVideoResult3.getId(), new AbstractC16121c.C16125d(predefinedVideoResult3));
            }
        }
        return s.a;
    }
}
