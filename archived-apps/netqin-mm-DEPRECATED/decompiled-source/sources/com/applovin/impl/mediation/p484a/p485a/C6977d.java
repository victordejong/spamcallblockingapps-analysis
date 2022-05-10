package com.applovin.impl.mediation.p484a.p485a;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p135b.p136a.p143d.C2117a;
import p131c.p135b.p136a.p143d.p147e.C2168c;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2390i;
/* renamed from: com.applovin.impl.mediation.a.a.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/a/d.class */
public class C6977d implements AppLovinCommunicatorSubscriber, Comparable<C6977d> {

    /* renamed from: a */
    public final EnumC6978a f21429a;

    /* renamed from: b */
    public int f21430b;

    /* renamed from: c */
    public final boolean f21431c;

    /* renamed from: d */
    public final boolean f21432d;

    /* renamed from: e */
    public final boolean f21433e;

    /* renamed from: f */
    public final boolean f21434f;

    /* renamed from: g */
    public final String f21435g;

    /* renamed from: h */
    public final String f21436h;

    /* renamed from: i */
    public final String f21437i;

    /* renamed from: j */
    public final String f21438j;

    /* renamed from: k */
    public final String f21439k;

    /* renamed from: l */
    public final String f21440l;

    /* renamed from: m */
    public final int f21441m;

    /* renamed from: n */
    public final List<C2117a.C2119b.C2124e> f21442n;

    /* renamed from: o */
    public final List<C2117a.C2119b.C2121b> f21443o;

    /* renamed from: p */
    public final C2117a.C2119b.C2123d f21444p;

    /* renamed from: com.applovin.impl.mediation.a.a.d$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/a/d$a.class */
    public enum EnumC6978a {
        MISSING("MISSING"),
        INCOMPLETE_INTEGRATION("INCOMPLETE INTEGRATION"),
        INVALID_INTEGRATION("INVALID INTEGRATION"),
        COMPLETE("COMPLETE");
        

        /* renamed from: e */
        public final String f21450e;

        EnumC6978a(String str) {
            this.f21450e = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public String m19156a() {
            return this.f21450e;
        }
    }

    public C6977d(JSONObject jSONObject, C2341l lVar) {
        String str;
        String str2;
        Object th;
        this.f21435g = C2390i.m29913b(jSONObject, "name", "", lVar);
        this.f21436h = C2390i.m29913b(jSONObject, "display_name", "", lVar);
        this.f21437i = C2390i.m29913b(jSONObject, "adapter_class", "", lVar);
        this.f21440l = C2390i.m29913b(jSONObject, "latest_adapter_version", "", lVar);
        JSONObject b = C2390i.m29911b(jSONObject, "configuration", new JSONObject(), lVar);
        this.f21442n = m19172a(b, lVar);
        this.f21443o = m19170b(b, lVar);
        this.f21444p = new C2117a.C2119b.C2123d(b, lVar);
        this.f21431c = AbstractC2426r.m29773e(C2390i.m29913b(jSONObject, "existence_class", "", lVar));
        Collections.emptyList();
        MaxAdapter a = C2168c.m30806a(this.f21437i, lVar);
        if (a != null) {
            this.f21432d = true;
            try {
                str = a.getAdapterVersion();
                try {
                    str2 = a.getSdkVersion();
                } catch (Throwable th2) {
                    th = th2;
                    str2 = "";
                }
            } catch (Throwable th3) {
                th = th3;
                str = "";
                str2 = str;
            }
            try {
                m19173a(a);
            } catch (Throwable th4) {
                th = th4;
                C2374t.m30034j("MediatedNetwork", "Failed to load adapter for network " + this.f21435g + ". Please check that you have a compatible network SDK integrated. Error: " + th);
                this.f21439k = str;
                this.f21438j = str2;
                this.f21434f = AbstractC2426r.m29773e(C2390i.m29913b(C2390i.m29911b(jSONObject, "alternative_network", (JSONObject) null, lVar), "adapter_class", "", lVar));
                this.f21429a = m19157v();
                this.f21433e = !str.equals(this.f21440l);
                Context d = lVar.m30264d();
                Resources resources = d.getResources();
                this.f21441m = resources.getIdentifier("applovin_ic_mediation_" + this.f21435g.toLowerCase(), "drawable", d.getPackageName());
                this.f21430b = MaxAdapter.InitializationStatus.INITIALIZED_UNKNOWN.getCode();
                AppLovinCommunicator.getInstance(lVar.m30264d()).subscribe(this, "adapter_initialization_status");
            }
        } else {
            this.f21432d = false;
            str = "";
            str2 = str;
        }
        this.f21439k = str;
        this.f21438j = str2;
        this.f21434f = AbstractC2426r.m29773e(C2390i.m29913b(C2390i.m29911b(jSONObject, "alternative_network", (JSONObject) null, lVar), "adapter_class", "", lVar));
        this.f21429a = m19157v();
        this.f21433e = !str.equals(this.f21440l);
        Context d2 = lVar.m30264d();
        Resources resources2 = d2.getResources();
        this.f21441m = resources2.getIdentifier("applovin_ic_mediation_" + this.f21435g.toLowerCase(), "drawable", d2.getPackageName());
        this.f21430b = MaxAdapter.InitializationStatus.INITIALIZED_UNKNOWN.getCode();
        AppLovinCommunicator.getInstance(lVar.m30264d()).subscribe(this, "adapter_initialization_status");
    }

    /* renamed from: a */
    public int compareTo(C6977d dVar) {
        return this.f21436h.compareToIgnoreCase(dVar.f21436h);
    }

    /* renamed from: a */
    public EnumC6978a m19175a() {
        return this.f21429a;
    }

    /* renamed from: a */
    public final List<MaxAdFormat> m19173a(MaxAdapter maxAdapter) {
        ArrayList arrayList = new ArrayList(5);
        if (maxAdapter instanceof MaxInterstitialAdapter) {
            arrayList.add(MaxAdFormat.INTERSTITIAL);
        }
        if (maxAdapter instanceof MaxRewardedAdapter) {
            arrayList.add(MaxAdFormat.REWARDED);
        }
        if (maxAdapter instanceof MaxAdViewAdapter) {
            arrayList.add(MaxAdFormat.BANNER);
            arrayList.add(MaxAdFormat.LEADER);
            arrayList.add(MaxAdFormat.MREC);
        }
        return arrayList;
    }

    /* renamed from: a */
    public final List<C2117a.C2119b.C2124e> m19172a(JSONObject jSONObject, C2341l lVar) {
        ArrayList arrayList = new ArrayList();
        JSONObject b = C2390i.m29911b(jSONObject, "permissions", new JSONObject(), lVar);
        Iterator<String> keys = b.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                arrayList.add(new C2117a.C2119b.C2124e(next, b.getString(next), lVar.m30264d()));
            } catch (JSONException e) {
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public int m19171b() {
        return this.f21430b;
    }

    /* renamed from: b */
    public final List<C2117a.C2119b.C2121b> m19170b(JSONObject jSONObject, C2341l lVar) {
        ArrayList arrayList = new ArrayList();
        JSONArray b = C2390i.m29912b(jSONObject, "dependencies", new JSONArray(), lVar);
        for (int i = 0; i < b.length(); i++) {
            JSONObject a = C2390i.m29934a(b, i, (JSONObject) null, lVar);
            if (a != null) {
                arrayList.add(new C2117a.C2119b.C2121b(a, lVar));
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public boolean m19169d() {
        return this.f21431c;
    }

    /* renamed from: e */
    public boolean m19168e() {
        return this.f21432d;
    }

    /* renamed from: f */
    public boolean m19167f() {
        return this.f21433e;
    }

    /* renamed from: g */
    public String m19166g() {
        return this.f21436h;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "MediatedNetwork";
    }

    /* renamed from: h */
    public String m19165h() {
        return this.f21438j;
    }

    /* renamed from: i */
    public String m19164i() {
        return this.f21439k;
    }

    /* renamed from: l */
    public String m19163l() {
        return this.f21440l;
    }

    /* renamed from: o */
    public int m19162o() {
        return this.f21441m;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if (this.f21437i.equals(appLovinCommunicatorMessage.getMessageData().getString("adapter_class", ""))) {
            this.f21430b = appLovinCommunicatorMessage.getMessageData().getInt("init_status", 0);
        }
    }

    /* renamed from: p */
    public List<C2117a.C2119b.C2124e> m19161p() {
        return this.f21442n;
    }

    /* renamed from: r */
    public List<C2117a.C2119b.C2121b> m19160r() {
        return this.f21443o;
    }

    /* renamed from: s */
    public final C2117a.C2119b.C2123d m19159s() {
        return this.f21444p;
    }

    public String toString() {
        return "MediatedNetwork{name=" + this.f21435g + ", displayName=" + this.f21436h + ", sdkAvailable=" + this.f21431c + ", sdkVersion=" + this.f21438j + ", adapterAvailable=" + this.f21432d + ", adapterVersion=" + this.f21439k + "}";
    }

    /* renamed from: u */
    public final String m19158u() {
        StringBuilder sb = new StringBuilder();
        sb.append("\n------------------ ");
        sb.append(this.f21435g);
        sb.append(" ------------------");
        sb.append("\nStatus  - ");
        sb.append(this.f21429a.m19156a());
        sb.append("\nSDK     - ");
        sb.append((!this.f21431c || TextUtils.isEmpty(this.f21438j)) ? "UNAVAILABLE" : this.f21438j);
        sb.append("\nAdapter - ");
        String str = "UNAVAILABLE";
        if (this.f21432d) {
            str = "UNAVAILABLE";
            if (!TextUtils.isEmpty(this.f21439k)) {
                str = this.f21439k;
            }
        }
        sb.append(str);
        if (this.f21444p.m30981a() && !this.f21444p.m30980b()) {
            sb.append("\n* ");
            sb.append(this.f21444p.m30979c());
        }
        for (C2117a.C2119b.C2124e eVar : m19161p()) {
            if (!eVar.m30976c()) {
                sb.append("\n* MISSING ");
                sb.append(eVar.m30978a());
                sb.append(": ");
                sb.append(eVar.m30977b());
            }
        }
        for (C2117a.C2119b.C2121b bVar : m19160r()) {
            if (!bVar.m30984c()) {
                sb.append("\n* MISSING ");
                sb.append(bVar.m30986a());
                sb.append(": ");
                sb.append(bVar.m30985b());
            }
        }
        return sb.toString();
    }

    /* renamed from: v */
    public final EnumC6978a m19157v() {
        if (!(this.f21431c || this.f21432d)) {
            return EnumC6978a.MISSING;
        }
        for (C2117a.C2119b.C2124e eVar : this.f21442n) {
            if (!eVar.m30976c()) {
                return EnumC6978a.INVALID_INTEGRATION;
            }
        }
        for (C2117a.C2119b.C2121b bVar : this.f21443o) {
            if (!bVar.m30984c()) {
                return EnumC6978a.INVALID_INTEGRATION;
            }
        }
        if (this.f21444p.m30981a() && !this.f21444p.m30980b()) {
            return EnumC6978a.INVALID_INTEGRATION;
        }
        if (this.f21431c) {
            if (this.f21432d) {
                return EnumC6978a.COMPLETE;
            }
            if (this.f21434f) {
                return EnumC6978a.MISSING;
            }
        }
        return EnumC6978a.INCOMPLETE_INTEGRATION;
    }
}
