package p193e.p194a.p997k3.p1000l;

import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Number;
import e.m.f.a.e;
import e.m.f.a.j;
import e.m.f.a.o;
import java.util.Arrays;
import java.util.Locale;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p997k3.AbstractC16458h;
import s1.z.c.l;
/* renamed from: e.a.k3.l.g */
/* loaded from: classes8-dex2jar.jar:e/a/k3/l/g.class */
public final class C16499g implements AbstractC16498f {

    /* renamed from: a */
    public volatile long f46387a;

    /* renamed from: b */
    public volatile long f46388b;

    /* renamed from: c */
    public String f46389c;

    /* renamed from: d */
    public String f46390d;

    /* renamed from: e */
    public final TelephonyManager f46391e;

    /* renamed from: f */
    public final AbstractC19223c0 f46392f;

    /* renamed from: g */
    public final AbstractC16458h f46393g;

    public C16499g(TelephonyManager telephonyManager, AbstractC19223c0 abstractC19223c0, AbstractC16458h abstractC16458h) {
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC16458h, "numberTypeLabelProvider");
        this.f46391e = telephonyManager;
        this.f46392f = abstractC19223c0;
        this.f46393g = abstractC16458h;
    }

    @Override // p193e.p194a.p997k3.p1000l.AbstractC16498f
    /* renamed from: a */
    public Number mo17319a(String... strArr) {
        String str;
        String str2;
        String str3;
        l.e(strArr, "networkNumbers");
        if (strArr.length == 0) {
            return null;
        }
        j q = j.q();
        int length = strArr.length;
        int i = 0;
        String str4 = null;
        while (true) {
            String str5 = str4;
            if (i >= length) {
                Number number = null;
                if (str5 != null) {
                    if (this.f46391e == null) {
                        str = null;
                    } else {
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        long j = this.f46387a;
                        str = this.f46389c;
                        long j2 = C16500h.f46394a;
                        if (elapsedRealtime - j >= j2) {
                            synchronized (this) {
                                long j3 = this.f46387a;
                                str = this.f46389c;
                                if (elapsedRealtime - j3 >= j2) {
                                    str = C19231g0.m13804M(this.f46391e.getNetworkCountryIso(), Locale.ENGLISH);
                                    this.f46389c = str;
                                    this.f46387a = SystemClock.elapsedRealtime();
                                }
                            }
                        }
                    }
                    if (this.f46391e == null) {
                        str2 = null;
                    } else {
                        long elapsedRealtime2 = SystemClock.elapsedRealtime();
                        long j4 = this.f46388b;
                        str2 = this.f46390d;
                        long j5 = C16500h.f46394a;
                        if (elapsedRealtime2 - j4 >= j5) {
                            synchronized (this) {
                                long j6 = this.f46388b;
                                str2 = this.f46390d;
                                if (elapsedRealtime2 - j6 >= j5) {
                                    str2 = C19231g0.m13804M(this.f46391e.getSimCountryIso(), Locale.ENGLISH);
                                    this.f46390d = str2;
                                    this.f46388b = SystemClock.elapsedRealtime();
                                }
                            }
                        }
                    }
                    String str6 = str;
                    if (TextUtils.isEmpty(str)) {
                        str6 = str2;
                    }
                    number = new Number(str5, str6);
                    number.m35464w(number.m35473l());
                }
                return number;
            }
            String str7 = strArr[i];
            if (str7 == null || str7.length() == 0) {
                str3 = str5;
            } else {
                str3 = str5;
                if (str5 == null) {
                    str3 = str7;
                }
                try {
                    q.R(str7, (String) null);
                    Number number2 = new Number(str7, null);
                    number2.m35464w(number2.m35473l());
                    return number2;
                } catch (e e) {
                }
            }
            i++;
            str4 = str3;
        }
    }

    @Override // p193e.p194a.p997k3.p1000l.AbstractC16498f
    /* renamed from: b */
    public Number mo17318b(String str) {
        Number number;
        l.e(str, "rawNumber");
        j q = j.q();
        try {
            o R = q.R(str, (String) null);
            number = null;
            if (q.H(R, q.z(R))) {
                l.d(R, "phoneNumber");
                number = new Number(str, q.y(R.b));
                ((ContactDto.Contact.PhoneNumber) number.mRow).rawNumberFormat = str;
            }
        } catch (e e) {
            number = null;
        }
        return number;
    }

    @Override // p193e.p194a.p997k3.p1000l.AbstractC16498f
    /* renamed from: c */
    public String mo17317c(Number number) {
        l.e(number, "number");
        return C17891a1.C17902k.m15593m0(number, this.f46392f, this.f46393g);
    }

    @Override // p193e.p194a.p997k3.p1000l.AbstractC16498f
    /* renamed from: d */
    public Number mo17316d(String... strArr) {
        l.e(strArr, "networkNumbers");
        Number mo17319a = mo17319a((String[]) Arrays.copyOf(strArr, strArr.length));
        if (mo17319a == null) {
            mo17319a = new Number();
        }
        return mo17319a;
    }
}
