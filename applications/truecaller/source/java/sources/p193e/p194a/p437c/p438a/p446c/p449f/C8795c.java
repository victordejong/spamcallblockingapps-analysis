package p193e.p194a.p437c.p438a.p446c.p449f;

import android.content.Context;
import androidx.fragment.app.FragmentManager;
import com.truecaller.insights.utils.HideTrxTempState;
import java.util.Objects;
import n3.b.a.h;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p438a.p446c.p447a.C8770a;
import p193e.p194a.p437c.p438a.p446c.p455i.C8868a;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import s1.s;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.c.a.c.f.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/c.class */
public final /* synthetic */ class C8795c extends j implements l<Context, s> {
    public C8795c(C8793b c8793b) {
        super(1, c8793b, C8793b.class, "secondaryAction", "secondaryAction(Landroid/content/Context;)V", 0);
    }

    /* renamed from: d */
    public Object m28061d(Object obj) {
        Context context = (Context) obj;
        s1.z.c.l.e(context, "p1");
        C8793b c8793b = (C8793b) ((b) this).b;
        if (!c8793b.f26830e.mo26882C0()) {
            h m15606i = C17891a1.C17902k.m15606i(context);
            Objects.requireNonNull(m15606i, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
            FragmentManager supportFragmentManager = m15606i.getSupportFragmentManager();
            s1.z.c.l.d(supportFragmentManager, "(context.activity() as A…y).supportFragmentManager");
            Objects.requireNonNull(C8770a.f26773g);
            new C8770a().show(supportFragmentManager, C8770a.f26772f);
            c8793b.f26830e.mo26823q(true);
        }
        if (c8793b.f26830e.mo26881D().isDefault()) {
            if (c8793b.f26830e.mo26834k0()) {
                c8793b.f26830e.mo26869M(HideTrxTempState.SHOWN);
                AbstractC10060c abstractC10060c = c8793b.f26832g;
                C8868a c8868a = C8868a.f27022i;
                abstractC10060c.mo26757a(C8868a.f27015b);
            } else {
                c8793b.f26830e.mo26869M(HideTrxTempState.HIDDEN);
                AbstractC10060c abstractC10060c2 = c8793b.f26832g;
                C8868a c8868a2 = C8868a.f27022i;
                abstractC10060c2.mo26757a(C8868a.f27014a);
            }
        } else if (c8793b.f26830e.mo26881D().isShown()) {
            AbstractC10060c abstractC10060c3 = c8793b.f26832g;
            C8868a c8868a3 = C8868a.f27022i;
            abstractC10060c3.mo26757a(C8868a.f27014a);
            c8793b.f26830e.mo26869M(HideTrxTempState.HIDDEN);
        } else {
            AbstractC10060c abstractC10060c4 = c8793b.f26832g;
            C8868a c8868a4 = C8868a.f27022i;
            abstractC10060c4.mo26757a(C8868a.f27015b);
            c8793b.f26830e.mo26869M(HideTrxTempState.SHOWN);
        }
        return s.a;
    }
}
