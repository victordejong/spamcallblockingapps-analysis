package p065f.p066a.p068b.p069a;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
/* renamed from: f.a.b.a.h */
/* loaded from: classes-dex2jar.jar:f/a/b/a/h.class */
public class C4255h implements AbstractC4265p {

    /* renamed from: a */
    public Context f10306a;

    /* renamed from: b */
    public boolean f10307b;

    /* renamed from: c */
    public String f10308c;

    /* renamed from: d */
    public String f10309d;

    public C4255h(Context context) {
        this.f10306a = context;
    }

    @Override // p065f.p066a.p068b.p069a.AbstractC4265p
    /* renamed from: a */
    public String mo8198a() {
        m29226c();
        return this.f10308c;
    }

    @Override // p065f.p066a.p068b.p069a.AbstractC4265p
    /* renamed from: b */
    public String mo8197b() {
        m29226c();
        return this.f10309d;
    }

    /* renamed from: c */
    public final void m29226c() {
        if (!this.f10307b) {
            boolean z = false;
            synchronized (this) {
                if (!this.f10307b) {
                    m29225d();
                    this.f10307b = true;
                    z = true;
                }
            }
            if (z) {
                String str = "Loaded user agent info: UA=" + this.f10308c + ", UAProfUrl=" + this.f10309d;
            }
        }
    }

    /* renamed from: d */
    public final void m29225d() {
        if (C4266q.m29166b()) {
            TelephonyManager telephonyManager = (TelephonyManager) this.f10306a.getSystemService("phone");
            this.f10308c = telephonyManager.getMmsUserAgent();
            this.f10309d = telephonyManager.getMmsUAProfUrl();
        }
        if (TextUtils.isEmpty(this.f10308c)) {
            this.f10308c = "Android MmsLib/1.0";
        }
        if (TextUtils.isEmpty(this.f10309d)) {
            this.f10309d = "http://www.gstatic.com/android/sms/mms_ua_profile.xml";
        }
    }
}
