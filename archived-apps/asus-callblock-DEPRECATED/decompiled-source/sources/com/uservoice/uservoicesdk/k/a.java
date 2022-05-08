package com.uservoice.uservoicesdk.k;

import android.util.Log;
import b.c;
import b.e;
import com.asus.updatesdk.BuildConfig;
import com.b.a.i;
import com.b.a.p;
import com.b.a.q;
import com.b.a.r;
import com.b.a.t;
import com.b.a.u;
import com.b.a.v;
import com.b.a.w;
import com.b.a.x;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/k/a.class */
public final class a implements q {

    /* renamed from: b  reason: collision with root package name */
    private static final Charset f4709b = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    public volatile int f4710a;
    private final b c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.uservoice.uservoicesdk.k.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/k/a$a.class */
    public static final class EnumC0147a extends Enum<EnumC0147a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f4711a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f4712b = 2;
        public static final int c = 3;
        public static final int d = 4;
        private static final /* synthetic */ int[] e = {f4711a, f4712b, c, d};
    }

    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/k/a$b.class */
    public interface b {

        /* renamed from: b  reason: collision with root package name */
        public static final b f4713b = new b() { // from class: com.uservoice.uservoicesdk.k.a.b.1
            @Override // com.uservoice.uservoicesdk.k.a.b
            public final void a(String str) {
                Log.d("xxx", str);
            }
        };

        void a(String str);
    }

    public a() {
        this(b.f4713b);
    }

    public a(b bVar) {
        this.f4710a = EnumC0147a.f4711a;
        this.c = bVar;
    }

    private static String a(t tVar) {
        return tVar == t.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1";
    }

    @Override // com.b.a.q
    public final w a(q.a aVar) {
        i a2;
        w wVar;
        p pVar;
        String str;
        p pVar2;
        boolean z = true;
        int i = this.f4710a;
        u b2 = aVar.b();
        if (i == EnumC0147a.f4711a) {
            wVar = aVar.a(b2);
        } else {
            boolean z2 = i == EnumC0147a.d;
            boolean z3 = z2 || i == EnumC0147a.c;
            v vVar = b2.d;
            if (vVar == null) {
                z = false;
            }
            String str2 = "--> " + b2.f3345b + ' ' + b2.f3344a + ' ' + a(aVar.a() != null ? a2.g : t.HTTP_1_1);
            String str3 = str2;
            if (!z3) {
                str3 = str2;
                if (z) {
                    str3 = str2 + " (" + vVar.b() + "-byte body)";
                }
            }
            this.c.a(str3);
            if (z3) {
                int length = b2.c.f3336a.length / 2;
                for (int i2 = 0; i2 < length; i2++) {
                    this.c.a(pVar2.a(i2) + ": " + pVar2.b(i2));
                }
                String str4 = "--> END " + b2.f3345b;
                if (z2 && z) {
                    c cVar = new c();
                    vVar.a(cVar);
                    Charset charset = f4709b;
                    r a3 = vVar.a();
                    if (a3 != null) {
                        a3.a(f4709b);
                    }
                    this.c.a(BuildConfig.FLAVOR);
                    this.c.a(cVar.a(charset));
                    str4 = str4 + " (" + vVar.b() + "-byte body)";
                }
                this.c.a(str4);
            }
            long nanoTime = System.nanoTime();
            w a4 = aVar.a(b2);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
            x xVar = a4.g;
            this.c.a("<-- " + a(a4.f3351b) + ' ' + a4.c + ' ' + a4.d + " (" + millis + "ms" + (!z3 ? ", " + xVar.b() + "-byte body" : BuildConfig.FLAVOR) + ')');
            if (z3) {
                int length2 = a4.f.f3336a.length / 2;
                for (int i3 = 0; i3 < length2; i3++) {
                    this.c.a(pVar.a(i3) + ": " + pVar.b(i3));
                }
                if (z2) {
                    e c = xVar.c();
                    c.b(Long.MAX_VALUE);
                    c b3 = c.b();
                    Charset charset2 = f4709b;
                    r a5 = xVar.a();
                    if (a5 != null) {
                        charset2 = a5.a(f4709b);
                    }
                    if (xVar.b() != 0) {
                        this.c.a(BuildConfig.FLAVOR);
                        this.c.a(b3.clone().a(charset2));
                    }
                    str = "<-- END HTTP (" + b3.f318b + "-byte body)";
                } else {
                    str = "<-- END HTTP";
                }
                this.c.a(str);
            }
            wVar = a4;
        }
        return wVar;
    }
}
