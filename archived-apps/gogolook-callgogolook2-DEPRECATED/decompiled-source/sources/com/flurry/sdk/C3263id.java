package com.flurry.sdk;

import android.content.Context;
import android.widget.Toast;
import com.flurry.sdk.C3363jx;
import com.flurry.sdk.C3368jz;
import com.flurry.sdk.C3438kv;
import java.util.Arrays;
/* renamed from: com.flurry.sdk.id */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/id.class */
public class C3263id extends AbstractC3386kd implements C3438kv.AbstractC3439a {

    /* renamed from: a */
    public static final String f5476a = "id";

    /* renamed from: f */
    public String f5477f;

    /* renamed from: g */
    public boolean f5478g;

    public C3263id() {
        this((byte) 0);
    }

    public C3263id(byte b) {
        super("Analytics", C3263id.class.getSimpleName());
        this.f5821c = "AnalyticsData_";
        C3437ku a = C3437ku.m32494a();
        this.f5478g = ((Boolean) a.m32493a("UseHttps")).booleanValue();
        a.m32492a("UseHttps", (C3438kv.AbstractC3439a) this);
        String str = f5476a;
        C3356jq.m32615a(4, str, "initSettings, UseHttps = " + this.f5478g);
        String str2 = (String) a.m32493a("ReportUrl");
        a.m32492a("ReportUrl", (C3438kv.AbstractC3439a) this);
        m32782b(str2);
        String str3 = f5476a;
        C3356jq.m32615a(4, str3, "initSettings, ReportUrl = " + str2);
        m32548b();
    }

    @Override // com.flurry.sdk.C3438kv.AbstractC3439a
    /* renamed from: a */
    public final void mo32423a(String str, Object obj) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode != -239660092) {
            if (hashCode == 1650629499 && str.equals("ReportUrl")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals("UseHttps")) {
                c = 0;
            }
            c = 65535;
        }
        if (c == 0) {
            this.f5478g = ((Boolean) obj).booleanValue();
            String str2 = f5476a;
            C3356jq.m32615a(4, str2, "onSettingUpdate, UseHttps = " + this.f5478g);
        } else if (c != 1) {
            C3356jq.m32615a(6, f5476a, "onSettingUpdate internal error!");
        } else {
            String str3 = (String) obj;
            m32782b(str3);
            String str4 = f5476a;
            C3356jq.m32615a(4, str4, "onSettingUpdate, ReportUrl = " + str3);
        }
    }

    @Override // com.flurry.sdk.AbstractC3386kd
    /* renamed from: a */
    public final void mo32550a(String str, String str2, final int i) {
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(this) { // from class: com.flurry.sdk.id.2
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                if (i == 200) {
                    C3180gq.m32933a();
                    C3272ih b = C3180gq.m32926b();
                    if (b != null) {
                        b.f5532j = true;
                    }
                }
            }
        });
        super.mo32550a(str, str2, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.flurry.sdk.AbstractC3386kd
    /* renamed from: a */
    public final void mo32549a(byte[] bArr, final String str, final String str2) {
        String str3 = this.f5477f;
        if (str3 == null) {
            str3 = this.f5478g ? "https://data.flurry.com/aap.do" : "http://data.flurry.com/aap.do";
        }
        String str4 = f5476a;
        C3356jq.m32615a(4, str4, "FlurryDataSender: start upload data " + Arrays.toString(bArr) + " with id = " + str + " to " + str3);
        C3363jx jxVar = new C3363jx();
        jxVar.f5766g = str3;
        jxVar.f5941u = 100000;
        jxVar.f5767h = C3368jz.EnumC3371a.kPost;
        jxVar.m32581a("Content-Type", "application/octet-stream");
        jxVar.f5753c = new C3411kh();
        jxVar.f5752b = bArr;
        jxVar.f5751a = new C3363jx.AbstractC3365a<byte[], Void>() { // from class: com.flurry.sdk.id.1
            @Override // com.flurry.sdk.C3363jx.AbstractC3365a
            /* renamed from: a */
            public final /* synthetic */ void mo32321a(C3363jx<byte[], Void> jxVar2, Void r8) {
                final int i = jxVar2.f5776q;
                if (i > 0) {
                    C3356jq.m32602e(C3263id.f5476a, "Analytics report sent.");
                    String str5 = C3263id.f5476a;
                    C3356jq.m32615a(3, str5, "FlurryDataSender: report " + str + " sent. HTTP response: " + i);
                    if (C3356jq.m32608c() <= 3 && C3356jq.m32605d()) {
                        C3331jb.m32681a().m32678a(new Runnable(this) { // from class: com.flurry.sdk.id.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                Context context = C3331jb.m32681a().f5679a;
                                Toast.makeText(context, "SD HTTP Response Code: " + i, 0).show();
                            }
                        });
                    }
                    C3263id.this.mo32550a(str, str2, i);
                    C3263id.this.m32548b();
                    return;
                }
                C3263id.this.m32551a(str);
            }
        };
        C3323iz.m32690a().m32623a((Object) this, (C3263id) jxVar);
    }

    /* renamed from: b */
    public final void m32782b(String str) {
        if (str != null && !str.endsWith(".do")) {
            C3356jq.m32615a(5, f5476a, "overriding analytics agent report URL without an endpoint, are you sure?");
        }
        this.f5477f = str;
    }
}
