package com.hiya.stingray.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.telephony.SmsManager;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.google.common.base.m;
import com.google.common.base.r;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.t.d0;
import com.hiya.stingray.t.n;
import com.hiya.stingray.t.n0;
import com.hiya.stingray.t.q0;
import com.hiya.stingray.ui.LauncherActivity;
import com.hiya.stingray.ui.common.SinglePanelFragmentActivity;
import com.hiya.stingray.ui.setting.WebViewLinkFragment;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
import com.hiya.stingray.util.p011i0.C0166c;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Map;
import r.a.a;
/* renamed from: com.hiya.stingray.util.u */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/u.class */
public class C0182u {
    /* renamed from: a */
    public static void m842a(Context context, d0 d0Var, C0140a0 a0Var, String str) {
        if (q0.PREMIUM == d0Var.n().g().c()) {
            a0Var.m981d(new C0166c());
        } else {
            m841b(context, str);
        }
    }

    /* renamed from: b */
    public static void m841b(Context context, String str) {
        Intent intent = new Intent("android.intent.action.CALL");
        intent.addFlags(268435456);
        intent.setData(Uri.parse("tel:" + str));
        m828o(context, intent, 2131821568);
    }

    /* renamed from: c */
    public static void m840c(Context context, String str, String str2) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TEXT", str2);
        context.startActivity(Intent.createChooser(intent, context.getResources().getString(2131821592)));
    }

    /* renamed from: d */
    public static void m839d(String str, Context context) {
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setFlags(268435456);
        intent.setData(Uri.parse("smsto:" + Uri.encode(str)));
        m828o(context, intent, 2131821557);
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0140 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m838e(android.content.Context r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hiya.stingray.util.C0182u.m838e(android.content.Context, java.lang.String):java.lang.String");
    }

    /* renamed from: f */
    private static File m837f(Context context, n0 n0Var) {
        File file = new File(context.getExternalFilesDir(null), String.format("%s.vcf", n0Var.h()));
        try {
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write("BEGIN:VCARD\r\n");
            fileWriter.write("VERSION:3.0\r\n");
            fileWriter.write(String.format("FN:%s\r\n", n0Var.h()));
            if (!r.b(n0Var.j())) {
                fileWriter.write(String.format("PHOTO;TYPE=JPEG;ENCODING=B:,%s\r\n", m838e(context, n0Var.j())));
            }
            for (Map.Entry entry : n0Var.i().entrySet()) {
                fileWriter.write(String.format("TEL;TYPE=%s,VOICE:%s\r\n", entry.getValue().toString(), C0186y.m817b(entry.getKey().toString())));
            }
            for (n nVar : n0Var.c()) {
                if (!r.b(nVar.f())) {
                    fileWriter.write(String.format("ADR;TYPE=WORK:;;%s;;\r\n", nVar.f()));
                } else {
                    fileWriter.write(String.format("ADR;TYPE=WORK:;;%s;%s;%s;;\r\n", nVar.h(), nVar.d(), nVar.g()));
                }
            }
            fileWriter.write("END:VCARD\r\n");
            fileWriter.close();
        } catch (IOException e) {
            a.f(e, "Failed to write contactInfo into vcf file format: " + e.getLocalizedMessage(), new Object[0]);
        }
        return file;
    }

    /* renamed from: g */
    public static void m836g(Context context, d0 d0Var, int i, String str, e1 e1Var) {
        AbstractC0156c.C0157a aVar = new AbstractC0156c.C0157a();
        aVar.m896l("notification");
        aVar.m895m("notification_open");
        Intent intent = new Intent(context, LauncherActivity.class);
        intent.putExtra("launch_action_by_user", "notification");
        if (i <= 1) {
            aVar.m900h("view_contact_details");
            intent.putExtra("CONTACT_DETAIL_FROM_NOTIFICATION", (Parcelable) d0Var);
        } else {
            aVar.m900h("view_call_log");
            intent.putExtra("SCROLL_TO_TOP", "");
        }
        e1Var.c("user_prompt_action", aVar.m907a());
        intent.addFlags(335544320);
        context.startActivity(intent);
    }

    /* renamed from: h */
    public static void m835h(String str, String str2, Context context) {
        Intent intent = new Intent("android.intent.action.INSERT");
        intent.setType("vnd.android.cursor.dir/contact");
        intent.setFlags(268435456);
        intent.putExtra("name", str);
        intent.putExtra("phone", str2);
        m828o(context, intent, 2131821566);
    }

    /* renamed from: i */
    public static void m834i(Context context, String str) {
        m.d(!r.b(str));
        context.startActivity(SinglePanelFragmentActivity.O(context, WebViewLinkFragment.f1(str), WebViewLinkFragment.class));
    }

    /* renamed from: j */
    public static void m833j(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=" + str));
        intent.setPackage("com.google.android.apps.maps");
        intent.addFlags(268435456);
        m828o(context, intent, 2131821567);
    }

    /* renamed from: k */
    public static void m832k(Context context) {
        Intent intent;
        if (Build.VERSION.SDK_INT >= 26) {
            intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS").addFlags(268435456).putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
        } else {
            intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").addFlags(268435456);
            intent.setData(Uri.fromParts("package", context.getPackageName(), null));
        }
        context.startActivity(intent);
    }

    /* renamed from: l */
    public static void m831l(String str, String str2) {
        m.d(!r.b(str));
        m.d(!r.b(str2));
        SmsManager.getDefault().sendTextMessage(str, null, str2, null, null);
    }

    /* renamed from: m */
    public static void m830m(Context context, n0 n0Var) {
        Uri uri;
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/x-vcard");
        if (Build.VERSION.SDK_INT > 23) {
            uri = FileProvider.e(context, context.getApplicationContext().getPackageName() + ".fileprovider", m837f(context, n0Var));
        } else {
            uri = Uri.fromFile(m837f(context, n0Var));
        }
        intent.putExtra("android.intent.extra.STREAM", uri);
        m829n(context, intent);
    }

    /* renamed from: n */
    private static void m829n(Context context, Intent intent) {
        m828o(context, intent, -1);
    }

    /* renamed from: o */
    private static void m828o(Context context, Intent intent, int i) {
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            context.startActivity(intent);
        } else if (i == -1) {
            a.a("Error starting intent action: %s", new Object[]{intent.getAction()});
        } else {
            Toast.makeText(context, context.getString(i), 0).show();
        }
    }
}
