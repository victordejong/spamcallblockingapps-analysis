package p193e.p194a.p852i.p903g0;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.List;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.i.g0.a */
/* loaded from: classes3-dex2jar.jar:e/a/i/g0/a.class */
public final class C15192a {

    /* renamed from: a */
    public final String f43247a;

    /* renamed from: b */
    public final String f43248b;

    /* renamed from: c */
    public final long f43249c;

    /* renamed from: d */
    public final int f43250d;

    /* renamed from: e */
    public final int f43251e;

    /* renamed from: f */
    public final List<k<String, String>> f43252f;

    public C15192a(String str, String str2, long j, int i, int i2, List<k<String, String>> list) {
        l.e(str, "campaignId");
        l.e(str2, "number");
        l.e(list, RemoteMessageConst.DATA);
        this.f43247a = str;
        this.f43248b = str2;
        this.f43249c = j;
        this.f43250d = i;
        this.f43251e = i2;
        this.f43252f = list;
    }
}
