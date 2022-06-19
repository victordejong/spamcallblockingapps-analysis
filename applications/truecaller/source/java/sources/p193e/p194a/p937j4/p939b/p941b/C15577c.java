package p193e.p194a.p937j4.p939b.p941b;

import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.log.AssertionUtil;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.j4.b.b.c */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/b/c.class */
public class C15577c implements AbstractC15578d {

    /* renamed from: a */
    public long f44043a = 0;

    /* renamed from: b */
    public int f44044b = 0;

    /* renamed from: c */
    public String f44045c = "";

    /* renamed from: d */
    public String f44046d = "";
    @Deprecated

    /* renamed from: e */
    public String f44047e = "";

    /* renamed from: f */
    public String f44048f = "";

    /* renamed from: g */
    public String f44049g = "";

    /* renamed from: h */
    public String f44050h = "";

    /* renamed from: i */
    public String f44051i = "";

    /* renamed from: j */
    public String f44052j = "";

    /* renamed from: k */
    public String f44053k = "";

    /* renamed from: l */
    public String f44054l = "";

    /* renamed from: m */
    public String f44055m = "";

    /* renamed from: n */
    public int f44056n = -1;

    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    @Override // p193e.p194a.p937j4.p939b.p941b.AbstractC15578d
    /* renamed from: a */
    public void mo18612a(String str) {
        char c;
        String[] split = str.split("§", -1);
        if (split.length < 9) {
            l.e("meta_deserialize_string", RemoteMessageConst.Notification.TAG);
            l.e(str, RemoteMessageConst.MessageBody.MSG);
        }
        int i = 0;
        try {
            c = Long.parseLong(split[0]);
        } catch (NumberFormatException e) {
            C10480a.m26061I1(e);
            c = 0;
        }
        this.f44043a = c;
        this.f44045c = split[1];
        this.f44046d = split[2];
        String str2 = split[3];
        String str3 = split[4];
        this.f44051i = split[5];
        this.f44052j = split[6];
        this.f44053k = split[7];
        this.f44055m = split[8];
        if (split.length > 9) {
            this.f44047e = split[9];
            try {
                i = Integer.parseInt(split[10]);
            } catch (NumberFormatException e2) {
                C10480a.m26061I1(e2);
            }
            this.f44044b = i;
        }
        if (split.length > 10) {
            this.f44054l = split[11];
        }
        if (split.length > 13) {
            this.f44048f = split[12];
            this.f44049g = split[13];
            this.f44050h = split[14];
        }
        this.f44056n = -1;
        if (split.length <= 18 || TextUtils.isEmpty(split[18])) {
            return;
        }
        try {
            this.f44056n = Integer.parseInt(split[18]);
        } catch (NumberFormatException e3) {
            AssertionUtil.reportThrowableButNeverCrash(e3);
        }
    }

    @Override // p193e.p194a.p937j4.p939b.p941b.AbstractC15578d
    /* renamed from: b */
    public String mo18611b() {
        StringBuilder sb = new StringBuilder(512);
        sb.append(this.f44043a);
        sb.append("§");
        sb.append(this.f44045c);
        sb.append("§");
        C22128a.m8666T0(sb, this.f44046d, "§", "§", "§");
        sb.append(this.f44051i);
        sb.append("§");
        sb.append(this.f44052j);
        sb.append("§");
        sb.append(this.f44053k);
        sb.append("§");
        sb.append(this.f44055m);
        sb.append("§");
        sb.append(this.f44047e);
        sb.append("§");
        sb.append(this.f44044b);
        sb.append("§");
        sb.append(this.f44054l);
        sb.append("§");
        sb.append(this.f44048f);
        sb.append("§");
        sb.append(this.f44049g);
        sb.append("§");
        C22128a.m8666T0(sb, this.f44050h, "§", "§", "§");
        sb.append("§");
        sb.append(this.f44056n);
        return sb.toString();
    }
}
