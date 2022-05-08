package p459j.p460a.p569u0;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.StringTokenizer;
import p081h.p119d.p120a.C5769g;
import p081h.p119d.p120a.C5776l;
import p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b;
import p081h.p119d.p120a.p145w.AbstractC6057f;
import p081h.p119d.p120a.p145w.p147j.AbstractC6082k;
import p459j.p460a.p549o0.C13297a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p587d5.C13978e;
/* renamed from: j.a.u0.c */
/* loaded from: classes3-dex2jar.jar:j/a/u0/c.class */
public class C13659c {

    /* renamed from: j.a.u0.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/c$a.class */
    public static final class C13660a implements AbstractC6057f<String, AbstractC5979b> {

        /* renamed from: a */
        public final /* synthetic */ ImageView f30616a;

        /* renamed from: b */
        public final /* synthetic */ View f30617b;

        /* renamed from: c */
        public final /* synthetic */ Runnable f30618c;

        public C13660a(ImageView imageView, View view, Runnable runnable) {
            this.f30616a = imageView;
            this.f30617b = view;
            this.f30618c = runnable;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo3711a(AbstractC5979b bVar, String str, AbstractC6082k<AbstractC5979b> kVar, boolean z, boolean z2) {
            this.f30616a.setBackgroundDrawable(null);
            View view = this.f30617b;
            if (view != null) {
                view.setVisibility(8);
            }
            Runnable runnable = this.f30618c;
            if (runnable == null) {
                return false;
            }
            runnable.run();
            return false;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo3713a(Exception exc, String str, AbstractC6082k<AbstractC5979b> kVar, boolean z) {
            return false;
        }
    }

    /* renamed from: a */
    public static float m3726a(Context context) {
        float currentTimeMillis = ((float) (System.currentTimeMillis() - C14217x3.m2138h())) / 8.64E7f;
        String str = "Get installed days = " + currentTimeMillis;
        return currentTimeMillis;
    }

    /* renamed from: a */
    public static int m3721a(Context context, String str) {
        if (!m3718a(str)) {
            return 0;
        }
        String trim = str.trim();
        return context.getResources().getIdentifier(trim.substring(1, trim.length() - 1).trim(), "drawable", context.getPackageName());
    }

    /* renamed from: a */
    public static List<String> m3727a() {
        ArrayList arrayList = new ArrayList();
        String b = C13915b3.m3056b("prefs_template_ab_testing_keys", (String) null);
        if (!C14217x3.m2160b(b)) {
            StringTokenizer stringTokenizer = new StringTokenizer(b, ",");
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                if (!C14217x3.m2160b(nextToken)) {
                    arrayList.add(nextToken);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m3725a(Context context, ImageView imageView, String str, View view) {
        m3724a(context, imageView, str, view, null);
    }

    /* renamed from: a */
    public static void m3724a(@NonNull Context context, @NonNull ImageView imageView, @Nullable String str, @Nullable View view, @Nullable Runnable runnable) {
        if (C14191v.m2254c(context) && !C14217x3.m2160b(str)) {
            if (m3718a(str)) {
                int a = m3721a(context, str);
                if (a != 0) {
                    imageView.setImageResource(a);
                    return;
                }
                return;
            }
            if (view != null) {
                view.setVisibility(0);
                view.bringToFront();
            }
            int m = C14217x3.m2124m();
            C5769g<String> a2 = C5776l.m24470c(context).m24450a(str);
            a2.mo24495b(m, m);
            a2.mo24501a((AbstractC6057f<? super String, AbstractC5979b>) new C13660a(imageView, view, runnable));
            a2.mo24518a(imageView);
        }
    }

    /* renamed from: a */
    public static void m3723a(Context context, TextView textView, String str) {
        m3722a(context, textView, str, (String) null);
    }

    /* renamed from: a */
    public static void m3722a(Context context, TextView textView, @Nullable String str, @Nullable String str2) {
        if (!C14217x3.m2160b(str) && textView != null) {
            String trim = str.trim();
            if (!trim.startsWith(CssParser.BLOCK_START) || !trim.endsWith(CssParser.BLOCK_END)) {
                textView.setText(str);
            } else {
                int identifier = context.getResources().getIdentifier(trim.substring(1, trim.length() - 1).trim(), "string", context.getPackageName());
                if (identifier != 0) {
                    textView.setText(C14206w4.m2225a(identifier));
                }
            }
            if (!C14217x3.m2160b(str2)) {
                Log.e("DisplayRuleUtils", "colorValue = " + str2);
                try {
                    textView.setTextColor(Color.parseColor(str2));
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                    Log.e("DisplayRuleUtils", e.getMessage() + ", colorValue = " + str2);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m3720a(@NonNull Context context, @NonNull String str, @Nullable String str2) {
        Intent a = C13297a.m4312a(context, Uri.parse(str), null, str2, 0);
        if (a != null) {
            a.setFlags(268435456);
            try {
                context.startActivity(a);
            } catch (ActivityNotFoundException e) {
                C13973d4.m2952a(e);
            }
        }
    }

    /* renamed from: a */
    public static void m3719a(@NonNull C13673f fVar) {
        String str = "prefs_total_for_" + fVar.f30649c;
        C13915b3.m3048d(str, C13915b3.m3066a(str, 0) + 1);
        C13915b3.m3057b("prefs_template_last_seen_time_" + fVar.f30649c, System.currentTimeMillis());
    }

    /* renamed from: a */
    public static void m3717a(List<C13673f> list) {
        if (!C14217x3.m2173a(list)) {
            StringBuilder sb = new StringBuilder();
            for (C13673f fVar : list) {
                if (!C14217x3.m2160b(fVar.f30670x) && TextUtils.isEmpty(C13640c.m3745d().m3744d(fVar.f30670x))) {
                    sb.append(fVar.f30670x);
                    sb.append(',');
                }
            }
            String sb2 = sb.toString();
            if (!C14217x3.m2160b(sb2)) {
                C13915b3.m3044e("prefs_template_ab_testing_keys", sb2);
            }
        }
    }

    /* renamed from: a */
    public static boolean m3718a(String str) {
        if (C14217x3.m2160b(str)) {
            return false;
        }
        String trim = str.trim();
        boolean z = false;
        if (trim.startsWith(CssParser.BLOCK_START)) {
            z = false;
            if (trim.endsWith(CssParser.BLOCK_END)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public static void m3715b(@NonNull C13673f fVar) {
        C13978e.f31386a.m9459a("prefs_total_for_" + fVar.f30649c, (String) 0);
    }

    /* renamed from: b */
    public static boolean m3716b(Context context) {
        String valueOf = String.valueOf(C14017g4.m2807q());
        boolean z = false;
        if (!valueOf.equals("0")) {
            List asList = Arrays.asList(C13915b3.m3056b("VersionCodeRecord", "").split(","));
            z = false;
            if (asList.contains(valueOf)) {
                z = false;
                if (asList.size() == 2) {
                    z = true;
                }
            }
        }
        return z;
    }
}
