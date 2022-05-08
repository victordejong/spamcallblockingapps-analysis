package gogolook.callgogolook2.template;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u00072\u00020\u0001:\u0001\u0007B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014¨\u0006\b"}, m815d2 = {"Lgogolook/callgogolook2/template/ClickNotificationActivity;", "Landroid/app/Activity;", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/template/ClickNotificationActivity.class */
public final class ClickNotificationActivity extends Activity {

    /* renamed from: a */
    public static final C5253a f12942a = new C5253a(null);

    /* renamed from: gogolook.callgogolook2.template.ClickNotificationActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/template/ClickNotificationActivity$a.class */
    public static final class C5253a {
        public C5253a() {
        }

        public /* synthetic */ C5253a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final Intent m26018a(Context context, String str, String str2, String str3) {
            C15149k.m377b(context, "context");
            C15149k.m377b(str, "messageName");
            Intent putExtra = new Intent(context, ClickNotificationActivity.class).putExtra("message_name", str).putExtra("title", str2).putExtra("url", str3);
            C15149k.m383a((Object) putExtra, "Intent(context, ClickNot…  .putExtra(KEY_URL, url)");
            return putExtra;
        }
    }

    /* renamed from: a */
    public static final Intent m26019a(Context context, String str, String str2, String str3) {
        return f12942a.m26018a(context, str, str2, str3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0069, code lost:
        if (r7 != null) goto L_0x0074;
     */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r7) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            super.onCreate(r1)
            r0 = r6
            android.content.Intent r0 = r0.getIntent()
            java.lang.String r1 = "message_name"
            java.lang.String r0 = r0.getStringExtra(r1)
            r7 = r0
            java.lang.String r0 = ""
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0019
            goto L_0x001c
        L_0x0019:
            java.lang.String r0 = ""
            r7 = r0
        L_0x001c:
            r0 = r6
            android.content.Intent r0 = r0.getIntent()
            java.lang.String r1 = "title"
            java.lang.String r0 = r0.getStringExtra(r1)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x002d
            goto L_0x0030
        L_0x002d:
            java.lang.String r0 = ""
            r9 = r0
        L_0x0030:
            r0 = r6
            android.content.Intent r0 = r0.getIntent()
            java.lang.String r1 = "url"
            java.lang.String r0 = r0.getStringExtra(r1)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0043
            r0 = r10
            r8 = r0
        L_0x0043:
            r0 = r7
            boolean r0 = p626l.p631e0.C14966w.m724a(r0)
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0079
            r0 = 5
            r1 = r7
            p459j.p460a.p582w0.p590x4.C14287l.m1917a(r0, r1)
            r0 = r6
            r1 = r8
            android.net.Uri r1 = android.net.Uri.parse(r1)
            r2 = 0
            r3 = r9
            r4 = 0
            android.content.Intent r0 = p459j.p460a.p549o0.C13297a.m4312a(r0, r1, r2, r3, r4)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x006f
            r0 = r7
            r1 = 268435456(0x10000000, float:2.5243549E-29)
            android.content.Intent r0 = r0.setFlags(r1)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x006f
            goto L_0x0074
        L_0x006f:
            r0 = r6
            android.content.Intent r0 = p459j.p460a.p549o0.C13297a.m4313a(r0)
            r7 = r0
        L_0x0074:
            r0 = r6
            r1 = r7
            r0.startActivity(r1)
        L_0x0079:
            r0 = r6
            r0.finish()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.template.ClickNotificationActivity.onCreate(android.os.Bundle):void");
    }
}
