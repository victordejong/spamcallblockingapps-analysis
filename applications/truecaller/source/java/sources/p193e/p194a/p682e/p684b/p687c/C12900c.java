package p193e.p194a.p682e.p684b.p687c;

import android.content.Context;
import android.content.Intent;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p1114o5.C19063n1;
import s1.z.c.l;
/* renamed from: e.a.e.b.c.c */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/c/c.class */
public final class C12900c {

    /* renamed from: a */
    public final Context f37486a;

    @Inject
    public C12900c(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f37486a = context;
    }

    /* renamed from: a */
    public final Intent m22468a(Uri uri, C19063n1.AbstractC19064a abstractC19064a, int i) {
        l.e(abstractC19064a, "ringtoneType");
        Context context = this.f37486a;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19064a, "ringtoneType");
        Intent intent = new Intent("android.intent.action.RINGTONE_PICKER");
        intent.putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", true);
        intent.putExtra("android.intent.extra.ringtone.SHOW_SILENT", abstractC19064a.f53245e);
        intent.putExtra("android.intent.extra.ringtone.TYPE", abstractC19064a.f53244d);
        intent.putExtra("android.intent.extra.ringtone.TITLE", context.getString(i));
        intent.putExtra("android.intent.extra.ringtone.DEFAULT_URI", uri);
        Uri actualDefaultRingtoneUri = RingtoneManager.getActualDefaultRingtoneUri(context, abstractC19064a.f53244d);
        Uri uri2 = uri;
        if (l.a(abstractC19064a, C19063n1.AbstractC19064a.C19067c.f53248f)) {
            uri2 = uri;
            if (actualDefaultRingtoneUri != null) {
                uri2 = actualDefaultRingtoneUri;
            }
        }
        intent.putExtra("android.intent.extra.ringtone.EXISTING_URI", uri2);
        return intent;
    }

    /* renamed from: b */
    public final String m22467b(Uri uri) {
        Context context = this.f37486a;
        l.e(context, AnalyticsConstants.CONTEXT);
        boolean z = true;
        if (uri != null) {
            Ringtone ringtone = RingtoneManager.getRingtone(context, uri);
            z = true;
            if (ringtone != null) {
                String title = ringtone.getTitle(context);
                C19063n1.AbstractC19064a.C19066b c19066b = C19063n1.AbstractC19064a.C19066b.f53247f;
                C19063n1.AbstractC19064a.C19067c c19067c = C19063n1.AbstractC19064a.C19067c.f53248f;
                C19063n1.AbstractC19064a.C19065a c19065a = C19063n1.AbstractC19064a.C19065a.f53246f;
                int i = 0;
                while (true) {
                    if (i >= 3) {
                        z = false;
                        break;
                    } else if (l.a(new C19063n1.AbstractC19064a[]{c19066b, c19067c, c19065a}[i].f53243c, title)) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        return z ? "TruecallerMessage" : "other";
    }
}
