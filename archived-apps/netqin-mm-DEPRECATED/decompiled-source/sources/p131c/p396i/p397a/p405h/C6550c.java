package p131c.p396i.p397a.p405h;

import android.text.TextUtils;
import com.library.p518ad.core.AdInfo;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import p131c.p396i.p397a.p417j.C6614a;
import p131c.p396i.p397a.p417j.C6615b;
/* renamed from: c.i.a.h.c */
/* loaded from: classes2-dex2jar.jar:c/i/a/h/c.class */
public class C6550c {

    /* renamed from: l */
    public static DateFormat f20313l = new SimpleDateFormat("yyyyMMddHHmmss");

    /* renamed from: a */
    public String f20314a;

    /* renamed from: b */
    public String f20315b;

    /* renamed from: c */
    public int f20316c;

    /* renamed from: d */
    public String f20317d;

    /* renamed from: e */
    public String f20318e;

    /* renamed from: f */
    public int f20319f;

    /* renamed from: g */
    public String f20320g;

    /* renamed from: h */
    public int f20321h;

    /* renamed from: i */
    public String f20322i;

    /* renamed from: j */
    public String f20323j;

    /* renamed from: k */
    public String f20324k;

    public C6550c(AdInfo adInfo, int i, String str) {
        this.f20315b = "";
        this.f20316c = -1;
        this.f20317d = "";
        this.f20318e = "";
        this.f20320g = "";
        this.f20322i = "";
        this.f20323j = "";
        if (adInfo != null) {
            this.f20315b = adInfo.getPlaceId();
            this.f20316c = adInfo.getAdType();
            this.f20317d = adInfo.getAdSource();
            this.f20318e = adInfo.getUnitId();
            this.f20322i = adInfo.getAdSyId();
            this.f20323j = adInfo.getTestType();
        }
        this.f20314a = f20313l.format(new Date());
        this.f20319f = i;
        this.f20320g = str;
        this.f20321h = C6614a.m20369a() ? 1 : 0;
    }

    /* renamed from: a */
    public final List m20531a() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f20314a);
        arrayList.add(this.f20315b);
        arrayList.add(Integer.valueOf(this.f20316c));
        arrayList.add(this.f20317d);
        String str = this.f20318e;
        String str2 = str;
        if ("FM".equals(this.f20317d)) {
            str2 = str;
            if (!TextUtils.isEmpty(this.f20318e)) {
                str2 = C6615b.m20362a(this.f20318e);
            }
        }
        arrayList.add(str2);
        arrayList.add(Integer.valueOf(this.f20321h));
        return arrayList;
    }

    public String toString() {
        String str = this.f20324k;
        if (!(str == null || str.isEmpty())) {
            return this.f20324k;
        }
        List a = m20531a();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < a.size(); i++) {
            Object obj = a.get(i);
            if (obj == null) {
                sb.append("");
            } else {
                sb.append(URLEncoder.encode(obj.toString()));
            }
            if (i < a.size() - 1) {
                sb.append(":");
            }
        }
        sb.append("$");
        sb.append(this.f20319f);
        sb.append(":");
        sb.append(this.f20320g);
        sb.append(":");
        sb.append(URLEncoder.encode(this.f20322i));
        sb.append(":");
        sb.append(URLEncoder.encode(this.f20323j));
        sb.append("#");
        return sb.toString();
    }
}
