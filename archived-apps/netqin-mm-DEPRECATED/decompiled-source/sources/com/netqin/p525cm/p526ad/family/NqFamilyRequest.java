package com.netqin.p525cm.p526ad.family;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p417j.C6614a;
/* renamed from: com.netqin.cm.ad.family.NqFamilyRequest */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/family/NqFamilyRequest.class */
public class NqFamilyRequest extends AbstractC6508d<Pair<String, String>> {

    /* renamed from: w */
    public static final String[] f35225w = {"com.security.wifi.boost", "com.lexing.greenbattery", "com.easyx.coolermaster", "com.cxzh.antivirus", "com.netqin.aotkiller", "com.nqmobile.antivirus20"};

    /* renamed from: t */
    public final List<String> f35226t = new ArrayList();

    /* renamed from: u */
    public final List<Pair<String, String>> f35227u = new ArrayList();

    /* renamed from: v */
    public final String f35228v;

    public NqFamilyRequest(String str) {
        super("FM", str);
        setAdType(1);
        this.f35228v = str;
        Collections.addAll(this.f35226t, f35225w);
    }

    /* renamed from: g */
    public final void m3657g() {
        for (String str : this.f35226t) {
            if (!C6614a.m20368a(C6489a.m20718b(), str)) {
                this.f35227u.add(Pair.create(this.f35228v, str));
            }
        }
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean needNetwork() {
        return false;
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean performLoad(int i) {
        m3657g();
        if (this.f35227u.isEmpty()) {
            m20620a("network_failure", (Object) null);
            return true;
        }
        m20622a("network_success", (AbstractC6514f) m20619a(this.f35227u));
        return true;
    }
}
