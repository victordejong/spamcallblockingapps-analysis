package p131c.p161d.p170b.p188c.p199e1;

import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import java.util.Locale;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2897r;
/* renamed from: c.d.b.c.e1.d */
/* loaded from: classes-dex2jar.jar:c/d/b/c/e1/d.class */
public class C2792d implements AbstractC2803n {

    /* renamed from: a */
    public final Resources f10152a;

    public C2792d(Resources resources) {
        C2877e.m28737a(resources);
        this.f10152a = resources;
    }

    /* renamed from: i */
    public static int m29001i(Format format) {
        int f = C2897r.m28584f(format.f21952i);
        if (f != -1) {
            return f;
        }
        if (C2897r.m28582h(format.f21949f) != null) {
            return 2;
        }
        if (C2897r.m28589a(format.f21949f) != null) {
            return 1;
        }
        if (format.f21957n == -1 && format.f21958o == -1) {
            return (format.f21965v == -1 && format.f21966w == -1) ? -1 : 1;
        }
        return 2;
    }

    @Override // p131c.p161d.p170b.p188c.p199e1.AbstractC2803n
    /* renamed from: a */
    public String mo28993a(Format format) {
        int i = m29001i(format);
        String a = i == 2 ? m29009a(m29002h(format), m29003g(format), m29007c(format)) : i == 1 ? m29009a(m29005e(format), m29008b(format), m29007c(format)) : m29005e(format);
        String str = a;
        if (a.length() == 0) {
            str = this.f10152a.getString(C2798j.exo_track_unknown);
        }
        return str;
    }

    /* renamed from: a */
    public final String m29009a(String... strArr) {
        String str = "";
        for (String str2 : strArr) {
            str = str;
            if (str2.length() > 0) {
                str = TextUtils.isEmpty(str) ? str2 : this.f10152a.getString(C2798j.exo_item_list, str, str2);
            }
        }
        return str;
    }

    /* renamed from: b */
    public final String m29008b(Format format) {
        int i = format.f21965v;
        return (i == -1 || i < 1) ? "" : i != 1 ? i != 2 ? (i == 6 || i == 7) ? this.f10152a.getString(C2798j.exo_track_surround_5_point_1) : i != 8 ? this.f10152a.getString(C2798j.exo_track_surround) : this.f10152a.getString(C2798j.exo_track_surround_7_point_1) : this.f10152a.getString(C2798j.exo_track_stereo) : this.f10152a.getString(C2798j.exo_track_mono);
    }

    /* renamed from: c */
    public final String m29007c(Format format) {
        int i = format.f21948e;
        return i == -1 ? "" : this.f10152a.getString(C2798j.exo_track_bitrate, Float.valueOf(i / 1000000.0f));
    }

    /* renamed from: d */
    public final String m29006d(Format format) {
        return TextUtils.isEmpty(format.f21945b) ? "" : format.f21945b;
    }

    /* renamed from: e */
    public final String m29005e(Format format) {
        String a = m29009a(m29004f(format), m29002h(format));
        String str = a;
        if (TextUtils.isEmpty(a)) {
            str = m29006d(format);
        }
        return str;
    }

    /* renamed from: f */
    public final String m29004f(Format format) {
        String str = format.f21940A;
        if (TextUtils.isEmpty(str) || "und".equals(str)) {
            return "";
        }
        return (C2885h0.f10477a >= 21 ? Locale.forLanguageTag(str) : new Locale(str)).getDisplayName();
    }

    /* renamed from: g */
    public final String m29003g(Format format) {
        int i = format.f21957n;
        int i2 = format.f21958o;
        return (i == -1 || i2 == -1) ? "" : this.f10152a.getString(C2798j.exo_track_resolution, Integer.valueOf(i), Integer.valueOf(i2));
    }

    /* renamed from: h */
    public final String m29002h(Format format) {
        String string = (format.f21947d & 2) != 0 ? this.f10152a.getString(C2798j.exo_track_role_alternate) : "";
        String str = string;
        if ((format.f21947d & 4) != 0) {
            str = m29009a(string, this.f10152a.getString(C2798j.exo_track_role_supplementary));
        }
        String str2 = str;
        if ((format.f21947d & 8) != 0) {
            str2 = m29009a(str, this.f10152a.getString(C2798j.exo_track_role_commentary));
        }
        String str3 = str2;
        if ((format.f21947d & 1088) != 0) {
            str3 = m29009a(str2, this.f10152a.getString(C2798j.exo_track_role_closed_captions));
        }
        return str3;
    }
}
