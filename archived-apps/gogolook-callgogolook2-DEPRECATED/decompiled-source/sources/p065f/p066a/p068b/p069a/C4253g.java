package p065f.p066a.p068b.p069a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.SparseArray;
import gogolook.callgogolook2.R$xml;
import p065f.p066a.p068b.p069a.C4247e;
/* renamed from: f.a.b.a.g */
/* loaded from: classes-dex2jar.jar:f/a/b/a/g.class */
public class C4253g implements AbstractC4246d {

    /* renamed from: c */
    public final Context f10303c;

    /* renamed from: d */
    public final SparseArray<Bundle> f10304d = new SparseArray<>();

    /* renamed from: f.a.b.a.g$a */
    /* loaded from: classes-dex2jar.jar:f/a/b/a/g$a.class */
    public class C4254a implements C4247e.AbstractC4248a {

        /* renamed from: a */
        public final /* synthetic */ Bundle f10305a;

        public C4254a(C4253g gVar, Bundle bundle) {
            this.f10305a = bundle;
        }

        @Override // p065f.p066a.p068b.p069a.C4247e.AbstractC4248a
        /* renamed from: a */
        public void mo29227a(String str, String str2, String str3) {
            try {
                if ("int".equals(str)) {
                    this.f10305a.putInt(str2, Integer.parseInt(str3));
                } else if ("bool".equals(str)) {
                    this.f10305a.putBoolean(str2, Boolean.parseBoolean(str3));
                } else if ("string".equals(str)) {
                    this.f10305a.putString(str2, str3);
                }
            } catch (NumberFormatException e) {
                String str4 = "Load carrier value from resources: invalid " + str2 + "," + str3 + "," + str;
            }
        }
    }

    public C4253g(Context context) {
        this.f10303c = context;
    }

    /* renamed from: c */
    public static void m29228c(int i, Bundle bundle) {
        try {
            Bundle carrierConfigValues = C4266q.m29165b(i).getCarrierConfigValues();
            if (carrierConfigValues != null) {
                bundle.putAll(carrierConfigValues);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public final void m29230a(int i, Bundle bundle) {
        XmlResourceParser xml;
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        try {
            xml = C4266q.m29164b(this.f10303c, i).getResources().getXml(R$xml.mms_config);
            xmlResourceParser2 = xml;
            xmlResourceParser = xml;
            new C4247e(xml, new C4254a(this, bundle)).m29175b();
        } catch (Resources.NotFoundException e) {
            if (xmlResourceParser == null) {
                return;
            }
        } catch (Throwable th) {
            if (xmlResourceParser2 != null) {
                xmlResourceParser2.close();
            }
            throw th;
        }
        if (xml != null) {
            xmlResourceParser = xml;
            xmlResourceParser.close();
        }
    }

    /* renamed from: b */
    public final void m29229b(int i, Bundle bundle) {
        m29230a(i, bundle);
        if (C4266q.m29170a()) {
            m29228c(i, bundle);
        }
    }

    @Override // p065f.p066a.p068b.p069a.AbstractC4246d
    public Bundle get(int i) {
        Bundle bundle;
        boolean z;
        int a = C4266q.m29169a(i);
        synchronized (this) {
            bundle = this.f10304d.get(a);
            if (bundle == null) {
                bundle = new Bundle();
                this.f10304d.put(a, bundle);
                m29229b(a, bundle);
                z = true;
            } else {
                z = false;
            }
        }
        if (z) {
            String str = "Carrier configs loaded: " + bundle;
        }
        return bundle;
    }
}
