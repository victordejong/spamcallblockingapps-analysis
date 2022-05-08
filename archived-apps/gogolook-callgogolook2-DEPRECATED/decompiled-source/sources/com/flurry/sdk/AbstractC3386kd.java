package com.flurry.sdk;

import com.flurry.sdk.C3395ke;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: com.flurry.sdk.kd */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kd.class */
public abstract class AbstractC3386kd {

    /* renamed from: b */
    public final String f5820b;

    /* renamed from: e */
    public C3399kf f5823e;

    /* renamed from: c */
    public String f5821c = "defaultDataKey_";

    /* renamed from: d */
    public Set<String> f5822d = new HashSet();

    /* renamed from: a */
    public AbstractC3344jl<C3309iq> f5819a = new AbstractC3344jl<C3309iq>() { // from class: com.flurry.sdk.kd.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3309iq iqVar) {
            C3309iq iqVar2 = iqVar;
            String str = AbstractC3386kd.this.f5820b;
            C3356jq.m32615a(4, str, "onNetworkStateChanged : isNetworkEnable = " + iqVar2.f5613a);
            if (iqVar2.f5613a) {
                AbstractC3386kd.this.m32548b();
            }
        }
    };

    public AbstractC3386kd(final String str, String str2) {
        this.f5820b = str2;
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.NetworkStateEvent", this.f5819a);
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.kd.2
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                AbstractC3386kd.this.f5823e = new C3399kf(str);
            }
        });
    }

    /* renamed from: a */
    public final void m32551a(final String str) {
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.kd.8
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                if (!AbstractC3386kd.this.f5822d.remove(str)) {
                    String str2 = AbstractC3386kd.this.f5820b;
                    C3356jq.m32615a(6, str2, "Internal error. Block with id = " + str + " was not in progress state");
                }
            }
        });
    }

    /* renamed from: a */
    public void mo32550a(final String str, final String str2, int i) {
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.kd.7
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                if (!AbstractC3386kd.this.f5823e.m32541a(str, str2)) {
                    String str3 = AbstractC3386kd.this.f5820b;
                    C3356jq.m32615a(6, str3, "Internal error. Block wasn't deleted with id = " + str);
                }
                if (!AbstractC3386kd.this.f5822d.remove(str)) {
                    String str4 = AbstractC3386kd.this.f5820b;
                    C3356jq.m32615a(6, str4, "Internal error. Block with id = " + str + " was not in progress state");
                }
            }
        });
    }

    /* renamed from: a */
    public abstract void mo32549a(byte[] bArr, String str, String str2);

    /* renamed from: b */
    public final void m32548b() {
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.kd.4
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                AbstractC3386kd kdVar = AbstractC3386kd.this;
                if (!C3310ir.m32715a().f5616b) {
                    C3356jq.m32615a(5, kdVar.f5820b, "Reports were not sent! No Internet connection!");
                    return;
                }
                ArrayList<String> arrayList = new ArrayList(kdVar.f5823e.f5842c.keySet());
                if (arrayList.isEmpty()) {
                    C3356jq.m32615a(4, kdVar.f5820b, "No more reports to send.");
                    return;
                }
                for (String str : arrayList) {
                    if (kdVar.m32546c()) {
                        List<String> a = kdVar.f5823e.m32542a(str);
                        String str2 = kdVar.f5820b;
                        C3356jq.m32615a(4, str2, "Number of not sent blocks = " + a.size());
                        for (String str3 : a) {
                            if (!kdVar.f5822d.contains(str3)) {
                                if (kdVar.m32546c()) {
                                    C3395ke keVar = (C3395ke) new C3342jj(C3331jb.m32681a().f5679a.getFileStreamPath(C3395ke.m32545a(str3)), ".yflurrydatasenderblock.", 1, new AbstractC3422ko<C3395ke>(kdVar) { // from class: com.flurry.sdk.kd.6
                                        @Override // com.flurry.sdk.AbstractC3422ko
                                        /* renamed from: a */
                                        public final AbstractC3417kl<C3395ke> mo32339a(int i) {
                                            return new C3395ke.C3396a();
                                        }
                                    }).m32641a();
                                    if (keVar == null) {
                                        C3356jq.m32615a(6, kdVar.f5820b, "Internal ERROR! Cannot read!");
                                        kdVar.f5823e.m32541a(str3, str);
                                    } else {
                                        byte[] bArr = keVar.f5838b;
                                        if (bArr == null || bArr.length == 0) {
                                            C3356jq.m32615a(6, kdVar.f5820b, "Internal ERROR! Report is empty!");
                                            kdVar.f5823e.m32541a(str3, str);
                                        } else {
                                            String str4 = kdVar.f5820b;
                                            C3356jq.m32615a(5, str4, "Reading block info " + str3);
                                            kdVar.f5822d.add(str3);
                                            kdVar.mo32549a(bArr, str3, str);
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        return;
                    }
                }
            }
        });
    }

    /* renamed from: b */
    public final void m32547b(final byte[] bArr, final String str, final String str2) {
        if (bArr == null || bArr.length == 0) {
            C3356jq.m32615a(6, this.f5820b, "Report that has to be sent is EMPTY or NULL");
            return;
        }
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.kd.3
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                AbstractC3386kd kdVar = AbstractC3386kd.this;
                byte[] bArr2 = bArr;
                String str3 = kdVar.f5821c + str + "_" + str2;
                C3395ke keVar = new C3395ke(bArr2);
                String str4 = keVar.f5837a;
                new C3342jj(C3331jb.m32681a().f5679a.getFileStreamPath(C3395ke.m32545a(str4)), ".yflurrydatasenderblock.", 1, new AbstractC3422ko<C3395ke>(kdVar) { // from class: com.flurry.sdk.kd.5
                    @Override // com.flurry.sdk.AbstractC3422ko
                    /* renamed from: a */
                    public final AbstractC3417kl<C3395ke> mo32339a(int i) {
                        return new C3395ke.C3396a();
                    }
                }).m32640a(keVar);
                C3356jq.m32615a(5, kdVar.f5820b, "Saving Block File " + str4 + " at " + C3331jb.m32681a().f5679a.getFileStreamPath(C3395ke.m32545a(str4)));
                kdVar.f5823e.m32543a(keVar, str3);
            }
        });
        m32548b();
    }

    /* renamed from: c */
    public final boolean m32546c() {
        return this.f5822d.size() <= 5;
    }
}
