package p131c.p135b.p136a.p143d.a$d.p145c;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import com.applovin.impl.mediation.p484a.p485a.AbstractC6975c;
import com.applovin.impl.mediation.p484a.p485a.C6977d;
import com.applovin.impl.mediation.p484a.p486c.p488b.ActivityC6984a;
import com.applovin.mediation.adapter.MaxAdapter;
import java.util.ArrayList;
import java.util.List;
import p131c.p135b.p136a.p143d.C2117a;
import p131c.p135b.p136a.p143d.a$d.AbstractView$OnClickListenerC2131b;
import p131c.p135b.p136a.p148e.p153y.C2387f;
import p131c.p135b.p156c.C2449a;
import p131c.p135b.p156c.C2450b;
/* renamed from: c.b.a.d.a$d.c.a */
/* loaded from: classes-dex2jar.jar:c/b/a/d/a$d/c/a.class */
public class C2132a extends AbstractView$OnClickListenerC2131b {

    /* renamed from: d */
    public final AbstractC6975c f8173d = new C2117a.C2119b.C2125f("INTEGRATIONS");

    /* renamed from: e */
    public final AbstractC6975c f8174e = new C2117a.C2119b.C2125f("PERMISSIONS");

    /* renamed from: f */
    public final AbstractC6975c f8175f = new C2117a.C2119b.C2125f("CONFIGURATION");

    /* renamed from: g */
    public final AbstractC6975c f8176g = new C2117a.C2119b.C2125f("DEPENDENCIES");

    /* renamed from: h */
    public final AbstractC6975c f8177h = new C2117a.C2119b.C2125f("");

    /* renamed from: i */
    public SpannedString f8178i;

    /* renamed from: j */
    public AbstractC2133a f8179j;

    /* renamed from: c.b.a.d.a$d.c.a$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/a$d/c/a$a.class */
    public interface AbstractC2133a {
        /* renamed from: a */
        void mo19138a(String str);
    }

    public C2132a(C6977d dVar, Context context) {
        super(context);
        if (dVar.m19175a() == C6977d.EnumC6978a.INVALID_INTEGRATION) {
            SpannableString spannableString = new SpannableString("Tap for more information");
            spannableString.setSpan(new AbsoluteSizeSpan(12, true), 0, spannableString.length(), 33);
            this.f8178i = new SpannedString(spannableString);
        } else {
            this.f8178i = new SpannedString("");
        }
        this.f8172c.add(this.f8173d);
        this.f8172c.add(m31007a(dVar));
        this.f8172c.add(m31003b(dVar));
        this.f8172c.add(m31000c(dVar));
        this.f8172c.addAll(m31006a(dVar.m19161p()));
        this.f8172c.addAll(m31010a(dVar.m19159s()));
        this.f8172c.addAll(m31002b(dVar.m19160r()));
        this.f8172c.add(this.f8177h);
    }

    /* renamed from: a */
    public final int m31005a(boolean z) {
        return z ? C2450b.applovin_ic_check_mark : C2450b.applovin_ic_x_mark;
    }

    /* renamed from: a */
    public AbstractC6975c m31007a(C6977d dVar) {
        ActivityC6984a.C6986b.C6988b l = ActivityC6984a.C6986b.m19133l();
        l.m19128a("SDK");
        l.m19125b(dVar.m19165h());
        l.m19129a(TextUtils.isEmpty(dVar.m19165h()) ? AbstractC6975c.EnumC6976a.DETAIL : AbstractC6975c.EnumC6976a.RIGHT_DETAIL);
        if (TextUtils.isEmpty(dVar.m19165h())) {
            l.m19131a(m31005a(dVar.m19169d()));
            l.m19126b(m31001b(dVar.m19169d()));
        }
        return l.m19132a();
    }

    /* renamed from: a */
    public List<AbstractC6975c> m31010a(C2117a.C2119b.C2123d dVar) {
        ArrayList arrayList = new ArrayList(2);
        if (dVar.m30981a()) {
            boolean b = dVar.m30980b();
            arrayList.add(this.f8175f);
            ActivityC6984a.C6986b.C6988b l = ActivityC6984a.C6986b.m19133l();
            l.m19128a("Cleartext Traffic");
            l.m19130a(b ? null : this.f8178i);
            l.m19124c(dVar.m30979c());
            l.m19131a(m31005a(b));
            l.m19126b(m31001b(b));
            l.m19127a(!b);
            arrayList.add(l.m19132a());
        }
        return arrayList;
    }

    /* renamed from: a */
    public List<AbstractC6975c> m31006a(List<C2117a.C2119b.C2124e> list) {
        ArrayList arrayList = new ArrayList(list.size() + 1);
        if (list.size() > 0) {
            arrayList.add(this.f8174e);
            for (C2117a.C2119b.C2124e eVar : list) {
                boolean c = eVar.m30976c();
                ActivityC6984a.C6986b.C6988b l = ActivityC6984a.C6986b.m19133l();
                l.m19128a(eVar.m30978a());
                l.m19130a(c ? null : this.f8178i);
                l.m19124c(eVar.m30977b());
                l.m19131a(m31005a(c));
                l.m19126b(m31001b(c));
                l.m19127a(!c);
                arrayList.add(l.m19132a());
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m31009a(AbstractC2133a aVar) {
        this.f8179j = aVar;
    }

    @Override // p131c.p135b.p136a.p143d.a$d.AbstractView$OnClickListenerC2131b
    /* renamed from: a */
    public void mo31008a(AbstractC6975c cVar) {
        if (this.f8179j != null && (cVar instanceof ActivityC6984a.C6986b)) {
            String k = ((ActivityC6984a.C6986b) cVar).m19134k();
            if (!TextUtils.isEmpty(k)) {
                this.f8179j.mo19138a(k);
            }
        }
    }

    /* renamed from: b */
    public final int m31001b(boolean z) {
        return C2387f.m29977a(z ? C2449a.applovin_sdk_checkmarkColor : C2449a.applovin_sdk_xmarkColor, this.f8171b);
    }

    /* renamed from: b */
    public AbstractC6975c m31003b(C6977d dVar) {
        ActivityC6984a.C6986b.C6988b l = ActivityC6984a.C6986b.m19133l();
        l.m19128a("Adapter");
        l.m19125b(dVar.m19164i());
        l.m19129a(TextUtils.isEmpty(dVar.m19164i()) ? AbstractC6975c.EnumC6976a.DETAIL : AbstractC6975c.EnumC6976a.RIGHT_DETAIL);
        if (TextUtils.isEmpty(dVar.m19164i())) {
            l.m19131a(m31005a(dVar.m19168e()));
            l.m19126b(m31001b(dVar.m19168e()));
        }
        return l.m19132a();
    }

    /* renamed from: b */
    public List<AbstractC6975c> m31002b(List<C2117a.C2119b.C2121b> list) {
        ArrayList arrayList = new ArrayList(list.size() + 1);
        if (list.size() > 0) {
            arrayList.add(this.f8176g);
            for (C2117a.C2119b.C2121b bVar : list) {
                boolean c = bVar.m30984c();
                ActivityC6984a.C6986b.C6988b l = ActivityC6984a.C6986b.m19133l();
                l.m19128a(bVar.m30986a());
                l.m19130a(c ? null : this.f8178i);
                l.m19124c(bVar.m30985b());
                l.m19131a(m31005a(c));
                l.m19126b(m31001b(c));
                l.m19127a(!c);
                arrayList.add(l.m19132a());
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final boolean m31004b(int i) {
        return (i == MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.getCode() || i == MaxAdapter.InitializationStatus.INITIALIZING.getCode()) ? false : true;
    }

    /* renamed from: c */
    public AbstractC6975c m31000c(C6977d dVar) {
        boolean b = m31004b(dVar.m19171b());
        ActivityC6984a.C6986b.C6988b l = ActivityC6984a.C6986b.m19133l();
        l.m19128a("Adapter Initialized");
        l.m19131a(m31005a(b));
        l.m19126b(m31001b(b));
        return l.m19132a();
    }

    public String toString() {
        return "MediatedNetworkListAdapter{listItems=" + this.f8172c + "}";
    }
}
