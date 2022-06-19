package p193e.p194a.p937j4.p939b.p940a;

import android.content.Context;
import android.text.TextUtils;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import com.truecaller.service.WidgetListProvider;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.d;
import e.m.e.n;
import e.m.e.q;
import e.m.e.r;
import e.m.e.s;
import e.m.e.v;
import e.m.e.z;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeSet;
import p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p937j4.p939b.p941b.AbstractC15580f;
@Deprecated
/* renamed from: e.a.j4.b.a.i */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/a/i.class */
public abstract class AbstractC15572i<T extends AbstractC15580f> extends AbstractC15564b {

    /* renamed from: b */
    public static final Object f44039b = new Object();

    /* renamed from: c */
    public static final Object f44040c = new Object();

    /* renamed from: d */
    public static Map<String, TreeSet<? extends AbstractC15580f>> f44041d = new HashMap();

    /* renamed from: e.a.j4.b.a.i$a */
    /* loaded from: classes11-dex2jar.jar:e/a/j4/b/a/i$a.class */
    public interface AbstractC15573a<T> {
        /* renamed from: a */
        boolean mo18617a(T t);

        /* renamed from: b */
        T mo18616b(Collection<T> collection);
    }

    public AbstractC15572i(Context context) {
        super(context);
        synchronized (f44039b) {
            if (!f44041d.containsKey("Notifications")) {
                f44041d.put("Notifications", m18621f());
            }
        }
    }

    /* renamed from: c */
    public int m18624c(Collection<T> collection) {
        int i;
        synchronized (f44040c) {
            i = 0;
            TreeSet<T> m18623d = m18623d();
            for (T t : collection) {
                if (!m18623d.contains(t)) {
                    i++;
                }
            }
            if (i > 0) {
                m18623d.addAll(collection);
                m18619h();
            }
        }
        return i;
    }

    /* renamed from: d */
    public final TreeSet<T> m18623d() {
        TreeSet<T> treeSet;
        synchronized (f44040c) {
            treeSet = (TreeSet<T>) f44041d.get("Notifications");
        }
        return treeSet;
    }

    /* renamed from: e */
    public List<T> m18622e() {
        return new ArrayList(m18623d());
    }

    /* renamed from: f */
    public final TreeSet<T> m18621f() {
        TreeSet<T> treeSet;
        TreeSet<T> treeSet2 = new TreeSet<>();
        try {
            String string = ((SharedPreferencesC18033b0) m18678b()).getString("LIST", "");
            treeSet = treeSet2;
            if (!TextUtils.isEmpty(string)) {
                try {
                    try {
                        a aVar = new a(new StringReader(string));
                        q a = v.a(aVar);
                        Objects.requireNonNull(a);
                        if (!(a instanceof s) && aVar.D0() != b.j) {
                            throw new z("Did not consume the entire document.");
                        }
                        n c = a.c();
                        ArrayList arrayList = new ArrayList();
                        int size = c.size();
                        for (int i = 0; i < size; i++) {
                            InternalTruecallerNotification internalTruecallerNotification = new InternalTruecallerNotification(c.i(i).d());
                            if (internalTruecallerNotification != null) {
                                arrayList.add(internalTruecallerNotification);
                            }
                        }
                        treeSet = new TreeSet<>(arrayList);
                    } catch (d e) {
                        throw new z(e);
                    }
                } catch (IOException e2) {
                    throw new r(e2);
                } catch (NumberFormatException e3) {
                    throw new z(e3);
                }
            }
        } catch (Exception e4) {
            C10480a.m26061I1(e4);
            treeSet = treeSet2;
        }
        return treeSet;
    }

    /* renamed from: g */
    public void m18620g(Collection<T> collection) {
        synchronized (f44040c) {
            m18623d().removeAll(collection);
            m18624c(collection);
        }
    }

    /* renamed from: h */
    public final void m18619h() {
        TreeSet treeSet = new TreeSet(m18618i(m18623d()));
        while (treeSet.size() > 100) {
            treeSet.pollLast();
        }
        synchronized (f44040c) {
            TreeSet<T> m18623d = m18623d();
            m18623d.clear();
            m18623d.addAll(treeSet);
        }
        n nVar = new n();
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            try {
                nVar.h(((AbstractC15580f) it.next()).mo18609a());
            } catch (Throwable th) {
                C10480a.m26061I1(th);
            }
        }
        String qVar = nVar.toString();
        SharedPreferencesC18033b0.SharedPreferences$EditorC18038e sharedPreferences$EditorC18038e = (SharedPreferencesC18033b0.SharedPreferences$EditorC18038e) ((SharedPreferencesC18033b0) m18678b()).edit();
        sharedPreferences$EditorC18038e.putString("LIST", qVar);
        sharedPreferences$EditorC18038e.apply();
        WidgetListProvider.m34742b(((C15569f) this).f44024a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0067, code lost:
        if (r0.compareTo("12.21.6") <= 0) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0072 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x000f A[SYNTHETIC] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection<T> m18618i(java.util.Collection<T> r6) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p937j4.p939b.p940a.AbstractC15572i.m18618i(java.util.Collection):java.util.Collection");
    }
}
