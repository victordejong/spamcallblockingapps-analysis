package p131c.p161d.p282e.p289l;

import android.os.Bundle;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p291f.AbstractC5202b;
/* renamed from: c.d.e.l.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/a.class */
public class C5187a implements AbstractC5143a.AbstractC5145b {

    /* renamed from: a */
    public AbstractC5202b f17846a;

    /* renamed from: b */
    public AbstractC5202b f17847b;

    /* renamed from: a */
    public static void m24325a(AbstractC5202b bVar, String str, Bundle bundle) {
        if (bVar != null) {
            bVar.mo24281a(str, bundle);
        }
    }

    @Override // p131c.p161d.p282e.p285j.p286a.AbstractC5143a.AbstractC5145b
    /* renamed from: a */
    public void mo23292a(int i, Bundle bundle) {
        String string;
        C5192b a = C5192b.m24319a();
        a.m24317a("Received Analytics message: " + i + " " + bundle);
        if (bundle != null && (string = bundle.getString("name")) != null) {
            Bundle bundle2 = bundle.getBundle("params");
            Bundle bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            m24324a(string, bundle3);
        }
    }

    /* renamed from: a */
    public void m24326a(AbstractC5202b bVar) {
        this.f17847b = bVar;
    }

    /* renamed from: a */
    public final void m24324a(String str, Bundle bundle) {
        m24325a("clx".equals(bundle.getString("_o")) ? this.f17846a : this.f17847b, str, bundle);
    }

    /* renamed from: b */
    public void m24323b(AbstractC5202b bVar) {
        this.f17846a = bVar;
    }
}
