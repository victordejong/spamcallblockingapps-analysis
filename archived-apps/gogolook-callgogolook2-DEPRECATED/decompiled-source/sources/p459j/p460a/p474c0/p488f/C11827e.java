package p459j.p460a.p474c0.p488f;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import p065f.p066a.p068b.p069a.AbstractC4265p;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12218u0;
/* renamed from: j.a.c0.f.e */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/e.class */
public class C11827e implements AbstractC4265p {

    /* renamed from: a */
    public Context f26522a;

    /* renamed from: b */
    public boolean f26523b;

    /* renamed from: c */
    public String f26524c;

    /* renamed from: d */
    public String f26525d;

    public C11827e(Context context) {
        this.f26522a = context;
    }

    @Override // p065f.p066a.p068b.p069a.AbstractC4265p
    /* renamed from: a */
    public String mo8198a() {
        m8196c();
        return this.f26524c;
    }

    @Override // p065f.p066a.p068b.p069a.AbstractC4265p
    /* renamed from: b */
    public String mo8197b() {
        m8196c();
        return this.f26525d;
    }

    /* renamed from: c */
    public final void m8196c() {
        if (!this.f26523b) {
            boolean z = false;
            synchronized (this) {
                if (!this.f26523b) {
                    m8195d();
                    this.f26523b = true;
                    z = true;
                }
            }
            if (z) {
                C12153d0.m6985c("MessagingApp", "Loaded user agent info: UA=" + this.f26524c + ", UAProfUrl=" + this.f26525d);
            }
        }
    }

    /* renamed from: d */
    public final void m8195d() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f26522a.getSystemService("phone");
        this.f26524c = telephonyManager.getMmsUserAgent();
        this.f26525d = telephonyManager.getMmsUAProfUrl();
        if (TextUtils.isEmpty(this.f26524c)) {
            String a = C12218u0.m6736a(this.f26522a).m6737a();
            this.f26524c = "Bugle/" + a;
        }
        if (TextUtils.isEmpty(this.f26525d)) {
            AbstractC12170i.m6941a().mo6917a("bugle_mms_uaprofurl", "http://www.gstatic.com/android/sms/mms_ua_profile.xml");
            this.f26525d = "http://www.gstatic.com/android/sms/mms_ua_profile.xml";
        }
    }
}
