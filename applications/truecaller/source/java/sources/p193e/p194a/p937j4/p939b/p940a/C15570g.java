package p193e.p194a.p937j4.p939b.p940a;

import android.content.Context;
import android.text.TextUtils;
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
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p937j4.p939b.p941b.AbstractC15575a;
import p193e.p194a.p937j4.p939b.p941b.C15579e;
/* renamed from: e.a.j4.b.a.g */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/a/g.class */
public class C15570g extends AbstractC15564b {

    /* renamed from: b */
    public static final Object f44033b = new Object();

    /* renamed from: c */
    public static final Object f44034c = new Object();

    /* renamed from: d */
    public static final Map<String, List<? extends AbstractC15575a>> f44035d = new TreeMap();

    public C15570g(Context context) {
        super(context);
        synchronized (f44033b) {
            Map<String, List<? extends AbstractC15575a>> map = f44035d;
            if (!map.containsKey("PhoneNotification")) {
                map.put("PhoneNotification", m18658e());
            }
        }
    }

    @Override // p193e.p194a.p937j4.p939b.p940a.AbstractC15564b
    /* renamed from: a */
    public String mo18661a() {
        return "PhoneNotification";
    }

    /* renamed from: c */
    public void m18660c() {
        synchronized (f44034c) {
            m18659d().clear();
            SharedPreferencesC18033b0.SharedPreferences$EditorC18038e sharedPreferences$EditorC18038e = (SharedPreferencesC18033b0.SharedPreferences$EditorC18038e) ((SharedPreferencesC18033b0) m18678b()).edit();
            sharedPreferences$EditorC18038e.clear();
            sharedPreferences$EditorC18038e.apply();
        }
    }

    /* renamed from: d */
    public List m18659d() {
        return f44035d.get("PhoneNotification");
    }

    /* renamed from: e */
    public final List m18658e() {
        ArrayList arrayList;
        String string;
        try {
            string = ((SharedPreferencesC18033b0) m18678b()).getString("LIST", "");
        } catch (Exception e) {
            C10480a.m26057J1(e, "DAO Error on reading");
        }
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
                    ArrayList arrayList2 = new ArrayList();
                    int i = 0;
                    int size = c.size();
                    while (true) {
                        arrayList = arrayList2;
                        if (i >= size) {
                            break;
                        }
                        arrayList2.add(new C15579e(c.i(i).d()));
                        i++;
                    }
                    return arrayList;
                } catch (IOException e2) {
                    throw new r(e2);
                }
            } catch (NumberFormatException e3) {
                throw new z(e3);
            } catch (d e4) {
                throw new z(e4);
            }
        }
        arrayList = new ArrayList();
        return arrayList;
    }

    /* renamed from: f */
    public void m18657f(int i) {
        List<C15579e> m18659d = m18659d();
        if (m18659d == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (C15579e c15579e : m18659d) {
            if (((i & 1) != 0 && c15579e.f44061e) || ((i & 2) != 0 && !c15579e.f44061e)) {
                arrayList.add(c15579e);
            }
        }
        synchronized (f44034c) {
            m18659d().removeAll(arrayList);
            m18656g();
        }
    }

    /* renamed from: g */
    public void m18656g() {
        List<AbstractC15575a> m18659d = m18659d();
        n nVar = new n();
        for (AbstractC15575a abstractC15575a : m18659d) {
            nVar.h(abstractC15575a.mo18610a());
        }
        String qVar = nVar.toString();
        SharedPreferencesC18033b0.SharedPreferences$EditorC18038e sharedPreferences$EditorC18038e = (SharedPreferencesC18033b0.SharedPreferences$EditorC18038e) ((SharedPreferencesC18033b0) m18678b()).edit();
        sharedPreferences$EditorC18038e.putString("LIST", qVar);
        sharedPreferences$EditorC18038e.apply();
    }
}
