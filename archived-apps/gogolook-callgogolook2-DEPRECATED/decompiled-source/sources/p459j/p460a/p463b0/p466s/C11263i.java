package p459j.p460a.p463b0.p466s;

import android.content.Context;
import androidx.annotation.WorkerThread;
import com.google.gson.Gson;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import p081h.p203i.p384e.p390x.C10173a;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: j.a.b0.s.i */
/* loaded from: classes2-dex2jar.jar:j/a/b0/s/i.class */
public class C11263i {

    /* renamed from: c */
    public static final Type f25289c = new C11264a().m13276b();

    /* renamed from: a */
    public String[] f25290a;

    /* renamed from: b */
    public List<C11261g> f25291b;

    /* renamed from: j.a.b0.s.i$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/i$a.class */
    public static final class C11264a extends C10173a<C11262h> {
    }

    /* renamed from: j.a.b0.s.i$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/i$b.class */
    public static class C11265b {

        /* renamed from: a */
        public static volatile C11263i f25292a = new C11263i(null);
    }

    public C11263i() {
        m9925b(MyApplication.m29013o());
    }

    public /* synthetic */ C11263i(C11264a aVar) {
        this();
    }

    /* renamed from: b */
    public static C11263i m9927b() {
        return C11265b.f25292a;
    }

    /* renamed from: a */
    public C11261g m9928a(String str) {
        C11261g gVar = null;
        if (C14217x3.m2173a(this.f25291b)) {
            return null;
        }
        Iterator<C11261g> it = this.f25291b.iterator();
        while (it.hasNext()) {
            gVar = it.next();
            if (gVar.f25287c.contains(str)) {
                break;
            }
        }
        return gVar;
    }

    @WorkerThread
    /* renamed from: a */
    public final String m9929a(Context context) throws JSONException, IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getAssets().open("carrier_info.json")));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return sb.toString();
            }
            sb.append(readLine);
            sb.append("\n");
        }
    }

    /* renamed from: a */
    public final boolean m9930a(int i) {
        return i >= 0 && i < this.f25291b.size();
    }

    /* renamed from: a */
    public String[] m9931a() {
        if (this.f25290a == null) {
            this.f25290a = new String[]{C14206w4.m2225a((int) R$string.ctc_ldc_vivo), C14206w4.m2225a((int) R$string.ctc_ldc_claro), C14206w4.m2225a((int) R$string.ctc_ldc_oi), C14206w4.m2225a((int) R$string.ctc_ldc_tim), C14206w4.m2225a((int) R$string.ctc_ldc_customized), C14206w4.m2225a((int) R$string.ctc_ldc_local_call)};
        }
        return this.f25290a;
    }

    @WorkerThread
    /* renamed from: b */
    public final C11262h m9924b(String str) {
        return (C11262h) new Gson().m30981a(str, f25289c);
    }

    /* renamed from: b */
    public String m9926b(int i) {
        return (C14217x3.m2173a(this.f25291b) || !m9930a(i)) ? "" : this.f25291b.get(i).f25285a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9925b(android.content.Context r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r4
            r2 = r5
            java.lang.String r1 = r1.m9929a(r2)     // Catch: IOException -> 0x000d, JSONException -> 0x0015
            j.a.b0.s.h r0 = r0.m9924b(r1)     // Catch: IOException -> 0x000d, JSONException -> 0x0015
            r5 = r0
            goto L_0x001c
        L_0x000d:
            r5 = move-exception
            r0 = r5
            r0.printStackTrace()
            goto L_0x001a
        L_0x0015:
            r5 = move-exception
            r0 = r5
            r0.printStackTrace()
        L_0x001a:
            r0 = 0
            r5 = r0
        L_0x001c:
            r0 = r5
            if (r0 == 0) goto L_0x0028
            r0 = r5
            java.util.ArrayList<j.a.b0.s.g> r0 = r0.f25288a
            r5 = r0
            goto L_0x0030
        L_0x0028:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r5 = r0
        L_0x0030:
            r0 = r4
            r1 = r5
            r0.f25291b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p466s.C11263i.m9925b(android.content.Context):void");
    }
}
