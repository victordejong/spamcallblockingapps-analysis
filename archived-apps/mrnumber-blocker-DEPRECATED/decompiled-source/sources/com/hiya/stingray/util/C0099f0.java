package com.hiya.stingray.util;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.widget.ImageView;
import com.hiya.stingray.s.b0;
import com.hiya.stingray.s.d0;
import com.hiya.stingray.ui.common.n;
import com.hiya.stingray.ui.common.o;
import com.hiya.stingray.ui.x.a;
import com.squareup.picasso.AbstractC0183e;
import com.squareup.picasso.C0207x;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import org.joda.time.g;
import org.joda.time.l;
/* renamed from: com.hiya.stingray.util.f0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/f0.class */
public final class C0099f0 {
    /* renamed from: a */
    public static o m1008a(Context context, n nVar) {
        return m1007b(context, nVar, 2131165398);
    }

    /* renamed from: b */
    public static o m1007b(Context context, n nVar, int i) {
        o oVar = new o(context, (int) context.getResources().getDimension(i), nVar);
        oVar.h(false);
        return oVar;
    }

    /* renamed from: c */
    public static int m1006c(int i) {
        return Math.round(i * Resources.getSystem().getDisplayMetrics().density);
    }

    /* renamed from: d */
    static String m1005d(String str, String str2) {
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
    public static String m1004e(Resources resources, String str) {
        if (str == null) {
            return "";
        }
        String string = resources.getString(2131821530);
        if (str.equalsIgnoreCase(string)) {
            return str;
        }
        String str2 = str;
        if (Locale.US.equals(Locale.getDefault())) {
            str2 = m1005d(str, string);
        }
        return str2;
    }

    /* renamed from: f */
    public static String m1003f(Context context, long j) {
        l lVar = new l(Calendar.getInstance());
        int p = g.n(new l(j), lVar).p();
        if (p == g.g.p()) {
            return context.getString(2131821518);
        }
        g gVar = g.h;
        return p == gVar.p() ? context.getString(2131821561) : (p <= gVar.p() || p >= 5) ? context.getString(2131821077) : lVar.m(p).h().c();
    }

    /* renamed from: g */
    public static void m1002g(String str, ImageView imageView, int i) {
        m1001h(str, imageView, i, null, null);
    }

    /* renamed from: h */
    public static void m1001h(String str, ImageView imageView, int i, Picasso picasso, AbstractC0183e eVar) {
        int dimensionPixelSize = imageView.getContext().getResources().getDimensionPixelSize(i);
        Picasso picasso2 = picasso;
        if (picasso == null) {
            picasso2 = Picasso.get();
        }
        C0207x load = picasso2.load(Uri.parse(str));
        load.m716a();
        load.m704m(dimensionPixelSize, dimensionPixelSize);
        load.m702o(new a());
        load.m709h(imageView, eVar);
    }

    /* renamed from: i */
    public static boolean m1000i(b0 b0Var) {
        return (b0Var == b0.NOT_BLOCKED || b0Var == b0.CALL_SCREENER_BLOCKED || b0Var == b0.WHITE_LISTED) ? false : true;
    }

    /* renamed from: j */
    public static List<n.c> m999j(Context context, List<d0> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            long s = list.get(i).s();
            n.c cVar = new n.c(i, m1003f(context, s));
            if (i == 0) {
                arrayList.add(cVar);
            } else if (!((n.c) arrayList.get(arrayList.size() - 1)).c().toString().equalsIgnoreCase(m1003f(context, s))) {
                arrayList.add(cVar);
            }
        }
        return arrayList;
    }
}
