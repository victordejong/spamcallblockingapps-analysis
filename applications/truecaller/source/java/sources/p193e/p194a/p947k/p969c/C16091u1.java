package p193e.p194a.p947k.p969c;

import com.tenor.android.core.constant.ContentFormat;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl$getLatestOwnVideoFileInfo$2", f = "VideoFileUtil.kt", l = {119}, m = "invokeSuspend")
/* renamed from: e.a.k.c.u1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/u1.class */
public final class C16091u1 extends i implements l<d<? super C16068r1>, Object> {

    /* renamed from: e */
    public long f45326e;

    /* renamed from: f */
    public long f45327f;

    /* renamed from: g */
    public Object f45328g;

    /* renamed from: h */
    public Object f45329h;

    /* renamed from: i */
    public int f45330i;

    /* renamed from: j */
    public final /* synthetic */ C15942a f45331j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16091u1(C15942a c15942a, d dVar) {
        super(1, dVar);
        this.f45331j = c15942a;
    }

    /* renamed from: d */
    public final Object m17911d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16091u1(this.f45331j, dVar).m17909s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17910l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16091u1(this.f45331j, dVar);
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* renamed from: s */
    public final Object m17909s(Object obj) {
        C16068r1 c16068r1;
        char c;
        String str;
        File file;
        char c2;
        Object obj2;
        a aVar = a.a;
        int i = this.f45330i;
        if (i == 0) {
            C25225a.m3932a3(obj);
            File[] listFiles = C15942a.m18116a(this.f45331j).listFiles();
            c16068r1 = null;
            if (listFiles != null) {
                ArrayList arrayList = new ArrayList();
                for (File file2 : listFiles) {
                    s1.z.c.l.d(file2, "it");
                    String name = file2.getName();
                    s1.z.c.l.d(name, "it.name");
                    if (Boolean.valueOf(r.y(name, "recording_own", false, 2)).booleanValue()) {
                        arrayList.add(file2);
                    }
                }
                Iterator it = arrayList.iterator();
                if (!it.hasNext()) {
                    obj2 = null;
                } else {
                    obj2 = it.next();
                    if (it.hasNext()) {
                        Long l = new Long(((File) obj2).lastModified());
                        Object obj3 = obj2;
                        do {
                            Object next = it.next();
                            Long l2 = new Long(((File) next).lastModified());
                            obj2 = obj3;
                            Long l3 = l;
                            if (l.compareTo(l2) < 0) {
                                obj2 = next;
                                l3 = l2;
                            }
                            obj3 = obj2;
                            l = l3;
                        } while (it.hasNext());
                    }
                }
                file = (File) obj2;
                c16068r1 = null;
                if (file != null) {
                    Long m18114c = C15942a.m18114c(this.f45331j, file);
                    c16068r1 = null;
                    if (m18114c != null) {
                        ?? longValue = m18114c.longValue();
                        c = file.length();
                        C15942a c15942a = this.f45331j;
                        this.f45328g = ContentFormat.IMAGE_MP4;
                        this.f45329h = file;
                        this.f45326e = longValue;
                        this.f45327f = c;
                        this.f45330i = 1;
                        obj = c15942a.m18112e(file, this);
                        if (obj == aVar) {
                            return aVar;
                        }
                        str = ContentFormat.IMAGE_MP4;
                        c2 = longValue;
                    }
                }
            }
            return c16068r1;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ?? r0 = this.f45327f;
            c2 = this.f45326e;
            file = (File) this.f45329h;
            str = (String) this.f45328g;
            C25225a.m3932a3(obj);
            c = r0;
        }
        c16068r1 = new C16068r1(file, str, c, c2, ((Boolean) obj).booleanValue());
        return c16068r1;
    }
}
