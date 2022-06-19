package p193e.p194a.p372b0.p430q;

import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.common.C3656R;
import com.truecaller.log.AssertionUtil;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p578p.C10480a;
import w3.c.a.a.a.h;
/* renamed from: e.a.b0.q.t */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/t.class */
public class C8613t {

    /* renamed from: a */
    public static final String[] f26465a = {"android.intent.extra.TEXT", "sms_body"};

    /* renamed from: a */
    public static ArrayList<Uri> m28211a(Intent intent) {
        Uri uri;
        ArrayList<Uri> arrayList = new ArrayList<>();
        ClipData clipData = intent.getClipData();
        if (clipData != null) {
            for (int i = 0; i < clipData.getItemCount(); i++) {
                Uri uri2 = clipData.getItemAt(i).getUri();
                if (uri2 != null) {
                    arrayList.add(uri2);
                }
            }
        }
        if ("android.intent.action.SEND_MULTIPLE".equals(intent.getAction())) {
            ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("android.intent.extra.STREAM");
            if (parcelableArrayListExtra != null) {
                Iterator it = parcelableArrayListExtra.iterator();
                while (it.hasNext()) {
                    Uri uri3 = (Uri) it.next();
                    if (!arrayList.contains(uri3)) {
                        arrayList.add(uri3);
                    }
                }
            }
        } else if ("android.intent.action.SEND".equals(intent.getAction()) && (uri = (Uri) intent.getParcelableExtra("android.intent.extra.STREAM")) != null && !arrayList.contains(uri)) {
            arrayList.add(uri);
        }
        ArrayList<Uri> arrayList2 = arrayList;
        if (arrayList.isEmpty()) {
            arrayList2 = null;
        }
        return arrayList2;
    }

    /* renamed from: b */
    public static String m28210b(Intent intent) {
        Uri data;
        String[] v;
        StringBuilder sb = new StringBuilder();
        for (String str : f26465a) {
            String stringExtra = intent.getStringExtra(str);
            if (!h.j(stringExtra)) {
                if (sb.length() > 0) {
                    sb.append(StringConstant.NEW_LINE);
                }
                sb.append(stringExtra);
            }
        }
        String sb2 = sb.toString();
        if (!sb2.isEmpty()) {
            return sb2;
        }
        if ((!"android.intent.action.SENDTO".equals(intent.getAction()) && !"android.intent.action.VIEW".equals(intent.getAction())) || (data = intent.getData()) == null) {
            return null;
        }
        String encodedQuery = data.getEncodedQuery();
        if (TextUtils.isEmpty(encodedQuery)) {
            return null;
        }
        for (String str2 : h.v(encodedQuery, '&')) {
            if (str2.startsWith("body=")) {
                try {
                    return URLDecoder.decode(str2.substring(5), StringConstant.UTF8);
                } catch (UnsupportedEncodingException e) {
                }
            }
        }
        return null;
    }

    /* renamed from: c */
    public static Intent m28209c(String str) {
        return new Intent("android.intent.action.DIAL", Uri.parse(C22128a.m8543z2("tel:", str)));
    }

    /* renamed from: d */
    public static Intent m28208d(String str) {
        StringBuilder m8728C = C22128a.m8728C("geo:0,0?q=");
        m8728C.append(Uri.encode(str));
        return new Intent("android.intent.action.VIEW", Uri.parse(m8728C.toString()));
    }

    /* renamed from: e */
    public static Intent m28207e(Context context, int i, int i2, Intent intent) {
        Intent intent2 = new Intent();
        intent2.putExtra("android.intent.extra.shortcut.NAME", context.getString(i));
        intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(context, i2));
        intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
        intent2.putExtra("duplicate", false);
        return intent2;
    }

    /* renamed from: f */
    public static Intent m28206f(Uri uri) {
        return new Intent("android.intent.action.VIEW", uri);
    }

    /* renamed from: g */
    public static Intent m28205g(String str) {
        return m28206f(Uri.parse(str));
    }

    /* renamed from: h */
    public static void m28204h(Intent intent, Intent intent2) {
        ClipData clipData = intent.getClipData();
        if (clipData == null || clipData.getItemCount() <= 0) {
            return;
        }
        intent2.setClipData(clipData);
        intent2.addFlags(1);
    }

    /* renamed from: i */
    public static boolean m28203i(Context context, String str) {
        return TextUtils.isEmpty(str) || m28198n(context, m28205g(str));
    }

    /* renamed from: j */
    public static boolean m28202j(Context context, String str, Bundle bundle) {
        boolean z;
        if (!TextUtils.isEmpty(str)) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setFlags(268435456);
            intent.putExtras(bundle);
            if (!m28198n(context, intent)) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    /* renamed from: k */
    public static void m28201k(Context context, ActivityNotFoundException activityNotFoundException) {
        C10480a.m26061I1(activityNotFoundException);
        Toast.makeText(context, C3656R.string.StrAppNotFound, 0).show();
    }

    /* renamed from: l */
    public static boolean m28200l(Fragment fragment, Intent intent, int i) {
        Throwable e;
        try {
            if (!fragment.isAdded()) {
                return false;
            }
            fragment.startActivityForResult(intent, i);
            return true;
        } catch (ActivityNotFoundException e2) {
            Context context = fragment.getContext();
            if (context == null) {
                return false;
            }
            m28201k(context, e2);
            return false;
        } catch (IllegalStateException e3) {
            e = e3;
            AssertionUtil.reportThrowableButNeverCrash(e);
            return false;
        } catch (SecurityException e4) {
            e = e4;
            AssertionUtil.reportThrowableButNeverCrash(e);
            return false;
        }
    }

    /* renamed from: m */
    public static boolean m28199m(Context context, String str) {
        return m28198n(context, new Intent("android.intent.action.SENDTO", Uri.fromParts("mailto", str, null)));
    }

    /* renamed from: n */
    public static boolean m28198n(Context context, Intent intent) {
        try {
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            m28201k(context, e);
            return false;
        }
    }

    /* renamed from: o */
    public static boolean m28197o(Fragment fragment, Intent intent) {
        boolean z;
        try {
            fragment.startActivity(intent);
            z = true;
        } catch (ActivityNotFoundException e) {
            Context context = fragment.getContext();
            if (context != null) {
                C10480a.m26061I1(e);
                Toast.makeText(context, C3656R.string.StrAppNotFound, 0).show();
            }
            z = false;
        }
        return z;
    }
}
