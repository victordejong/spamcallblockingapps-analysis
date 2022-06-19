package p193e.p194a.p937j4.p939b.p940a;

import android.content.Context;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1392y2.p1394q.C21782c;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p417k.C8494c;
import p193e.p194a.p372b0.p417k.C8495d;
import p193e.p194a.p372b0.p417k.C8497f;
import p193e.p194a.p372b0.p426p.p429h.C8561a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p937j4.p939b.p941b.C15576b;
import s1.z.c.l;
/* renamed from: e.a.j4.b.a.c */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/a/c.class */
public class C15565c {

    /* renamed from: a */
    public static volatile C15576b f44025a;

    /* renamed from: b */
    public static volatile List<C15576b> f44026b;

    /* renamed from: c */
    public static volatile List<C15576b> f44027c;

    /* renamed from: d */
    public static volatile Locale f44028d;

    /* renamed from: e */
    public static final C8497f f44029e = new C8497f();

    /* renamed from: f */
    public static final C8495d f44030f = C8495d.f26276h;

    @Deprecated
    /* renamed from: e.a.j4.b.a.c$a */
    /* loaded from: classes11-dex2jar.jar:e/a/j4/b/a/c$a.class */
    public static class RunnableC15566a implements Runnable {

        /* renamed from: a */
        public final TrueApp f44031a;

        public RunnableC15566a(AbstractApplicationC8442a abstractApplicationC8442a) {
            this.f44031a = (TrueApp) abstractApplicationC8442a;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!this.f44031a.mo28540W()) {
                    return;
                }
                this.f44031a.mo10154s().mo12656L3().mo11854a().mo18984b().mo11831c();
                C18334g0.m15276B0("tagsEntityTag", null);
                C8561a.m28386d(this.f44031a);
                this.f44031a.mo10154s().mo12564S0().mo29698b();
                Context applicationContext = this.f44031a.getApplicationContext();
                l.e(applicationContext, AnalyticsConstants.CONTEXT);
                C26702l m1431n = C26702l.m1431n(applicationContext);
                l.d(m1431n, "WorkManager.getInstance(context)");
                C21782c.m9083c(m1431n, "FetchSearchWarningsWorkAction", applicationContext, null, null, 12);
                Context applicationContext2 = this.f44031a.getApplicationContext();
                l.e(applicationContext2, AnalyticsConstants.CONTEXT);
                C26702l m1431n2 = C26702l.m1431n(applicationContext2);
                l.d(m1431n2, "WorkManager.getInstance(context)");
                C21782c.m9083c(m1431n2, "FetchSurveysWorkAction", applicationContext2, null, null, 12);
            } catch (InterruptedException | RuntimeException e) {
                StringBuilder m8728C = C22128a.m8728C("Error updating language, language=");
                m8728C.append(C15571h.m18647d("language"));
                C10480a.m26057J1(e, m8728C.toString());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0053  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p193e.p194a.p937j4.p939b.p941b.C15576b m18677a(java.util.Locale r3) {
        /*
            r0 = 0
            java.util.List r0 = m18676b(r0)
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L99
            r0 = r3
            java.lang.String r0 = r0.getLanguage()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "_"
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8696K(r0, r1)
            r6 = r0
            r0 = r6
            r1 = r3
            java.lang.String r1 = r1.getCountry()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            r6 = r0
            r0 = r5
            java.lang.String r1 = "_"
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8696K(r0, r1)
            r7 = r0
            r0 = r7
            r1 = r3
            java.lang.String r1 = r1.getVariant()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            r7 = r0
            r0 = r3
            java.lang.String r0 = r0.toString()
            r3 = r0
            r0 = r4
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        L49:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L99
            r0 = r8
            java.lang.Object r0 = r0.next()
            e.a.j4.b.b.b r0 = (p193e.p194a.p937j4.p939b.p941b.C15576b) r0
            r4 = r0
            r0 = r4
            e.a.b0.k.c r0 = r0.f44042j
            java.lang.String r0 = r0.f26267b
            r1 = r5
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L97
            r0 = r4
            e.a.b0.k.c r0 = r0.f44042j
            java.lang.String r0 = r0.f26267b
            r1 = r6
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L97
            r0 = r4
            e.a.b0.k.c r0 = r0.f44042j
            java.lang.String r0 = r0.f26267b
            r1 = r7
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L97
            r0 = r4
            e.a.b0.k.c r0 = r0.f44042j
            java.lang.String r0 = r0.f26267b
            r1 = r3
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L49
        L97:
            r0 = r4
            return r0
        L99:
            e.a.j4.b.b.b r0 = p193e.p194a.p937j4.p939b.p940a.C15565c.f44025a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p937j4.p939b.p940a.C15565c.m18677a(java.util.Locale):e.a.j4.b.b.b");
    }

    /* renamed from: b */
    public static List<C15576b> m18676b(boolean z) {
        List<C15576b> list = z ? f44027c : f44026b;
        if (list != null) {
            return list;
        }
        synchronized (C15565c.class) {
            try {
                if (list != null) {
                    return list;
                }
                Objects.requireNonNull(f44030f);
                f44025a = new C15576b(C8495d.f26269a);
                ArrayList arrayList = new ArrayList();
                for (C8494c c8494c : z ? C8495d.f26274f : C8495d.f26275g) {
                    arrayList.add(new C15576b(c8494c));
                }
                Set<String> m28447b = f44029e.m28447b();
                Locale locale = f44028d;
                if (locale != null) {
                    String lowerCase = locale.getLanguage().toLowerCase();
                    HashSet hashSet = (HashSet) m28447b;
                    if (hashSet.add(lowerCase)) {
                        String lowerCase2 = locale.getCountry().toLowerCase();
                        String lowerCase3 = locale.getVariant().toLowerCase();
                        if (lowerCase2.length() > 2) {
                            hashSet.add(lowerCase + AnalyticsConstants.DELIMITER_MAIN + lowerCase3);
                        } else {
                            hashSet.add(lowerCase + AnalyticsConstants.DELIMITER_MAIN + lowerCase2);
                        }
                    }
                }
                String m18647d = C15571h.m18647d("language");
                if (!TextUtils.isEmpty(m18647d)) {
                    HashSet hashSet2 = (HashSet) m28447b;
                    if (!hashSet2.contains(m18647d)) {
                        hashSet2.add(m18647d);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    C15576b c15576b = (C15576b) it.next();
                    String lowerCase4 = c15576b.f44042j.f26267b.toLowerCase();
                    if (((HashSet) m28447b).contains(lowerCase4) && f44029e.m28442g(lowerCase4)) {
                        arrayList2.add(c15576b);
                    }
                }
                if (z) {
                    f44027c = Collections.unmodifiableList(arrayList2);
                } else {
                    f44026b = Collections.unmodifiableList(arrayList2);
                }
                return arrayList2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
