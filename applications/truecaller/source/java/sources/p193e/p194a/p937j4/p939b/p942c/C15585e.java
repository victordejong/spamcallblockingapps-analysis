package p193e.p194a.p937j4.p939b.p942c;

import android.text.TextUtils;
import e.m.e.n;
import e.m.e.t;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import p1727n3.p1788g.C26188i;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p426p.C8544a;
import p193e.p194a.p372b0.p426p.C8545b;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p937j4.p939b.p941b.C15577c;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.j4.b.c.e */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/c/e.class */
public class C15585e {

    /* renamed from: n */
    public static final /* synthetic */ int f44075n = 0;

    /* renamed from: a */
    public final int f44076a;

    /* renamed from: b */
    public final int f44077b;

    /* renamed from: c */
    public final String f44078c;

    /* renamed from: d */
    public final String f44079d;

    /* renamed from: e */
    public final String f44080e;

    /* renamed from: f */
    public final String f44081f;

    /* renamed from: g */
    public final String f44082g;

    /* renamed from: h */
    public final long f44083h;

    /* renamed from: i */
    public final ArrayList<C8544a> f44084i = new ArrayList<>();

    /* renamed from: j */
    public final Set<String> f44085j = new TreeSet();

    /* renamed from: k */
    public final Set<String> f44086k = new TreeSet();

    /* renamed from: l */
    public final Set<String> f44087l = new TreeSet();

    /* renamed from: m */
    public final Set<String> f44088m = new TreeSet();

    public C15585e(C15582b c15582b, C8545b c8545b, boolean z, boolean z2) {
        List<String> list;
        C8545b.C8548c c8548c;
        C15577c c15577c = c15582b.f44068l;
        int i = c15577c != null ? c15577c.f44056n : -1;
        this.f44077b = i;
        C26188i<C8544a> c26188i = new C26188i<>();
        String str = c15582b.f44067k;
        int i2 = c8545b.f26337a;
        if (i2 != -1 && i != i2 && !TextUtils.isEmpty(str)) {
            C8545b.C8550e c8550e = new C8545b.C8550e(str);
            LinkedList linkedList = new LinkedList();
            linkedList.add(C8545b.f26336d);
            while (c8550e.m28405a()) {
                while (true) {
                    C8545b.C8548c c8548c2 = (C8545b.C8548c) linkedList.poll();
                    c8548c = C8545b.f26336d;
                    if (c8548c2 == c8548c) {
                        break;
                    }
                    C8545b.C8548c m28406a = c8548c2.m28406a(c8550e);
                    if (m28406a != null) {
                        c8545b.m28407b(m28406a, c26188i);
                        linkedList.add(m28406a);
                    }
                }
                C8545b.C8548c m28406a2 = c8545b.f26338b.m28406a(c8550e);
                if (m28406a2 != null) {
                    c8545b.m28407b(m28406a2, c26188i);
                    linkedList.add(m28406a2);
                }
                linkedList.add(c8548c);
            }
            c26188i.m2563j();
        }
        for (int i3 = 0; i3 < c26188i.m2563j(); i3++) {
            this.f44084i.add(c26188i.m2562k(i3));
        }
        Collections.sort(this.f44084i, C15581a.f44065a);
        this.f44084i.subList(Math.min(c26188i.m2563j(), 3), c26188i.m2563j()).clear();
        this.f44076a = c26188i.m2563j() != 0 ? c26188i.m2562k(0).f26333b : i;
        List<C15583c> list2 = c15582b.f44069m;
        if (list2 != null) {
            for (C15583c c15583c : list2) {
                String str2 = c15583c.f44072b;
                List<String> list3 = C8574c0.f26390a;
                if (h.l(str2) && str2.length() < 20) {
                    int i4 = c15583c.f44073c;
                    if (i4 == 1) {
                        this.f44085j.add(c15583c.f44072b);
                    } else if (i4 == 2) {
                        this.f44086k.add(c15583c.f44072b);
                    } else if (i4 == 3) {
                        this.f44087l.add(c15583c.f44072b);
                    }
                }
            }
        }
        if (z2 && (list = c15582b.f44070n) != null) {
            this.f44088m.addAll(list);
        }
        this.f44083h = c15582b.f44066j;
        String str3 = z ? c15582b.f44067k : null;
        this.f44078c = str3;
        C15577c c15577c2 = c15582b.f44068l;
        String str4 = "";
        String str5 = c15577c2 != null ? c15577c2.f44045c : "";
        this.f44079d = str5;
        str4 = c15577c2 != null ? c15577c2.f44048f : str4;
        this.f44080e = str4;
        StringBuilder m8688M = C22128a.m8688M(str3, "§", str5, "§", str4);
        m8688M.append("§");
        m8688M.append(TextUtils.join(",", this.f44087l));
        m8688M.append("§");
        m8688M.append(TextUtils.join(",", this.f44086k));
        m8688M.append("§");
        m8688M.append(TextUtils.join(",", this.f44085j));
        m8688M.append("§");
        m8688M.append(TextUtils.join(",", this.f44088m));
        m8688M.append("§");
        m8688M.append(this.f44076a);
        String sb = m8688M.toString();
        this.f44082g = sb;
        l.e(sb, "$this$toMD5");
        this.f44081f = C19286f.m13669j(sb, "MD5");
    }

    /* renamed from: a */
    public static void m18604a(t tVar, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            tVar.j(str, str2);
        }
    }

    /* renamed from: b */
    public static void m18603b(t tVar, String str, ArrayList<String> arrayList) {
        if (!arrayList.isEmpty()) {
            tVar.a.put(str, new e.m.e.l().a().t(arrayList).c());
        }
    }

    /* renamed from: c */
    public t m18602c() {
        t tVar = new t();
        m18604a(tVar, "FN", this.f44078c);
        m18604a(tVar, "FID", this.f44079d);
        m18604a(tVar, "GID", this.f44080e);
        m18603b(tVar, "TEL_CELL", new ArrayList(this.f44087l));
        m18603b(tVar, "TEL_WORK", new ArrayList(this.f44086k));
        m18603b(tVar, "TEL_HOME", new ArrayList(this.f44085j));
        m18603b(tVar, "EMAIL", new ArrayList(this.f44088m));
        if (this.f44084i.size() > 0) {
            n nVar = new n();
            Iterator<C8544a> it = this.f44084i.iterator();
            while (it.hasNext()) {
                C8544a next = it.next();
                t tVar2 = new t();
                tVar2.i("tagId", Integer.valueOf(next.f26332a));
                tVar2.i("score", Double.valueOf(next.f26334c));
                nVar.a.add(tVar2);
            }
            t tVar3 = new t();
            tVar3.i("version", Integer.valueOf(this.f44076a));
            tVar3.a.put("tags", nVar);
            tVar.a.put("autoTag", tVar3);
        }
        m18604a(tVar, "CONTACT_ID", this.f44081f);
        return tVar;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Ugc{mAutoTagVersion=");
        m8728C.append(this.f44076a);
        m8728C.append(", mMetaDataAutoTagVersion=");
        m8728C.append(this.f44077b);
        m8728C.append(", mUgcId='");
        C22128a.m8678P0(m8728C, this.f44081f, '\'', ", mContactId=");
        m8728C.append(this.f44083h);
        m8728C.append('}');
        return m8728C.toString();
    }
}
