package p193e.p194a.p372b0.p394b.p400j;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.common.network.util.KnownEndpoints;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.Collections;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1075n3.p1076a.C18479b;
import s1.z.c.l;
import u3.a0;
import u3.b0;
import u3.c0;
import u3.g0;
import u3.k0;
import u3.l0;
import u3.z;
import v3.f;
import v3.h;
/* renamed from: e.a.b0.b.j.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/j/a.class */
public class C8394a implements b0 {
    /* renamed from: a */
    public k0 m28621a(b0.a aVar) throws IOException {
        g0 request = aVar.request();
        boolean equals = TextUtils.equals(KnownEndpoints.REQUEST.url().e, request.b.e);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        g0 g0Var = request;
        try {
            k0 a = aVar.a(request);
            g0 g0Var2 = a.b;
            m28619c(g0Var2, equals, SystemClock.elapsedRealtime() - elapsedRealtime);
            g0Var = g0Var2;
            m28618d(g0Var2.c, g0Var2.b, a, equals);
            return a;
        } catch (Exception e) {
            m28619c(g0Var, equals, SystemClock.elapsedRealtime() - elapsedRealtime);
            StringBuilder m8728C = C22128a.m8728C("<-- ");
            m8728C.append(g0Var.c);
            m8728C.append(StringConstant.SPACE);
            m8728C.append(g0Var.b);
            m8728C.append(" error:");
            m8728C.append(e.toString());
            C18479b.m14875a(m8728C.toString());
            throw e;
        }
    }

    /* renamed from: b */
    public final void m28620b(StringBuilder sb, z zVar) {
        if (zVar == null || zVar.size() == 0) {
            return;
        }
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        l.d(comparator, "java.lang.String.CASE_INSENSITIVE_ORDER");
        TreeSet treeSet = new TreeSet(comparator);
        int size = zVar.size();
        for (int i = 0; i < size; i++) {
            treeSet.add(zVar.b(i));
        }
        Set<String> unmodifiableSet = Collections.unmodifiableSet(treeSet);
        l.b(unmodifiableSet, "Collections.unmodifiableSet(result)");
        for (String str : unmodifiableSet) {
            for (String str2 : zVar.g(str)) {
                C22128a.m8666T0(sb, "\n    ", str, ": ", str2);
            }
        }
    }

    /* renamed from: c */
    public final void m28619c(g0 g0Var, boolean z, long j) {
        StringBuilder m8728C = C22128a.m8728C("--> ");
        m8728C.append(g0Var.c);
        m8728C.append(StringConstant.SPACE);
        m8728C.append(g0Var.b);
        m8728C.append(" time spent: ");
        m8728C.append(j);
        m8728C.append("ms");
        if (z) {
            m28620b(m8728C, g0Var.d);
        }
        C18479b.m14875a(m8728C.toString());
    }

    /* renamed from: d */
    public final void m28618d(String str, a0 a0Var, k0 k0Var, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("<-- ");
        sb.append(str);
        sb.append(StringConstant.SPACE);
        sb.append(a0Var);
        sb.append(" status code: ");
        sb.append(k0Var.e);
        if (z) {
            m28620b(sb, k0Var.g);
            try {
                l0 l0Var = k0Var.h;
                if (l0Var != null) {
                    h q = l0Var.q();
                    q.U((long) RecyclerView.FOREVER_NS);
                    f m = q.m();
                    c0 l = l0Var.l();
                    Charset forName = Charset.forName(StringConstant.UTF8);
                    Charset charset = forName;
                    if (l != null) {
                        charset = l.a(forName);
                    }
                    sb.append("\n    ");
                    sb.append(m.b().q0(charset));
                }
            } catch (IOException | UnsupportedCharsetException e) {
            }
        }
        C18479b.m14875a(sb.toString());
    }
}
