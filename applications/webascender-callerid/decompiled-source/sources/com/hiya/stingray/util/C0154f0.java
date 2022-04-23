package com.hiya.stingray.util;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.widget.ImageView;
import com.hiya.stingray.t.b0;
import com.hiya.stingray.t.d0;
import com.hiya.stingray.ui.common.n;
import com.hiya.stingray.ui.common.o;
import com.hiya.stingray.ui.x.a;
import com.squareup.picasso.AbstractC0238e;
import com.squareup.picasso.C0261x;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import org.joda.time.g;
import org.joda.time.l;
/* renamed from: com.hiya.stingray.util.f0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/f0.class */
public final class C0154f0 {
    /* renamed from: a */
    public static o m929a(Context context, n nVar) {
        return m928b(context, nVar, 2131165410);
    }

    /* renamed from: b */
    public static o m928b(Context context, n nVar, int i) {
        o oVar = new o(context, (int) context.getResources().getDimension(i), nVar);
        oVar.h(false);
        return oVar;
    }

    /* renamed from: c */
    public static int m927c(int i) {
        return Math.round(i * Resources.getSystem().getDisplayMetrics().density);
    }

    /* renamed from: d */
    static String m926d(String str, String str2) {
        String[] split = str.split(",");
        StringBuilder sb = new StringBuilder();
        for (String str3 : split) {
            if (str3 != null && !str3.contains(str2)) {
                if (sb.length() > 0) {
                    sb.append(",");
                    if (str3.charAt(0) != ' ') {
                        sb.append(" ");
                    }
                }
                sb.append(str3);
            }
        }
        return sb.toString();
    }

    /* renamed from: e */
    public static String m925e(Resources resources, String str) {
        if (str == null) {
            return "";
        }
        String string = resources.getString(2131821570);
        if (str.equalsIgnoreCase(string)) {
            return str;
        }
        String str2 = str;
        if (Locale.US.equals(Locale.getDefault())) {
            str2 = m926d(str, string);
        }
        return str2;
    }

    /* renamed from: f */
    public static String m924f(Context context, long j) {
        l lVar = new l(Calendar.getInstance());
        int p = g.n(new l(j), lVar).p();
        if (p == g.g.p()) {
            return context.getString(2131821558);
        }
        g gVar = g.h;
        return p == gVar.p() ? context.getString(2131821601) : (p <= gVar.p() || p >= 5) ? context.getString(2131821116) : lVar.m(p).h().c();
    }

    /* renamed from: g */
    public static void m923g(String str, ImageView imageView, int i) {
        m922h(str, imageView, i, null, null);
    }

    /* renamed from: h */
    public static void m922h(String str, ImageView imageView, int i, Picasso picasso, AbstractC0238e eVar) {
        int dimensionPixelSize = imageView.getContext().getResources().getDimensionPixelSize(i);
        Picasso picasso2 = picasso;
        if (picasso == null) {
            picasso2 = Picasso.get();
        }
        C0261x load = picasso2.load(Uri.parse(str));
        load.m637a();
        load.m621q(dimensionPixelSize, dimensionPixelSize);
        load.m619s(new a());
        load.m630h(imageView, eVar);
    }

    /* renamed from: i */
    public static boolean m921i(b0 b0Var) {
        return (b0Var == b0.NOT_BLOCKED || b0Var == b0.CALL_SCREENER_BLOCKED || b0Var == b0.WHITE_LISTED) ? false : true;
    }

    /* renamed from: j */
    public static List<n.c> m920j(Context context, List<d0> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            long s = list.get(i).s();
            n.c cVar = new n.c(i, m924f(context, s));
            if (i == 0) {
                arrayList.add(cVar);
            } else if (!((n.c) arrayList.get(arrayList.size() - 1)).c().toString().equalsIgnoreCase(m924f(context, s))) {
                arrayList.add(cVar);
            }
        }
        return arrayList;
    }
}
