package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Base64;
import android.view.View;
import android.widget.Toast;
import com.mopub.common.AdReport;
import com.mopub.common.Preconditions;
import com.mopub.common.util.DateAndTime;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import java.io.ByteArrayOutputStream;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdAlertReporter.class */
public class AdAlertReporter {

    /* renamed from: a */
    public final String f33976a = new SimpleDateFormat(AdReport.DATE_FORMAT_PATTERN, Locale.US).format(DateAndTime.now());

    /* renamed from: b */
    public final View f33977b;

    /* renamed from: c */
    public final Context f33978c;

    /* renamed from: d */
    public Intent f33979d;

    /* renamed from: e */
    public String f33980e;

    /* renamed from: f */
    public String f33981f;

    public AdAlertReporter(Context context, View view, AdReport adReport) {
        Preconditions.checkNotNull(context);
        this.f33977b = view;
        this.f33978c = context;
        m4484b();
        String a = m4486a(m4483c());
        this.f33980e = "";
        this.f33981f = "";
        if (adReport != null) {
            this.f33980e = adReport.toString();
            this.f33981f = adReport.getResponseString();
        }
        m4487a();
        m4485a(this.f33980e, this.f33981f, a);
    }

    /* renamed from: a */
    public final String m4486a(Bitmap bitmap) {
        String encodeToString;
        if (bitmap != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.JPEG, 25, byteArrayOutputStream);
                encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
            } catch (Exception e) {
            }
            return encodeToString;
        }
        encodeToString = null;
        return encodeToString;
    }

    /* renamed from: a */
    public final void m4487a() {
        Intent intent = this.f33979d;
        intent.putExtra("android.intent.extra.SUBJECT", "New creative violation report - " + this.f33976a);
    }

    /* renamed from: a */
    public final void m4485a(String... strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("Thank you for taking the time to tell us about your ad experience.\n\nPlease share with us how the ad experience was poor:\n\n");
        sb.append("\n=================\n");
        for (int i = 0; i < strArr.length; i++) {
            sb.append(strArr[i]);
            if (i != strArr.length - 1) {
                sb.append("\n=================\n");
            }
        }
        this.f33979d.putExtra("android.intent.extra.TEXT", sb.toString());
    }

    /* renamed from: b */
    public final void m4484b() {
        Intent intent = new Intent("android.intent.action.SENDTO");
        this.f33979d = intent;
        intent.setData(Uri.parse("mailto:creative-review@mopub.com"));
    }

    /* renamed from: c */
    public final Bitmap m4483c() {
        View view = this.f33977b;
        Bitmap bitmap = null;
        if (view != null) {
            if (view.getRootView() == null) {
                bitmap = null;
            } else {
                View rootView = this.f33977b.getRootView();
                boolean isDrawingCacheEnabled = rootView.isDrawingCacheEnabled();
                rootView.setDrawingCacheEnabled(true);
                Bitmap drawingCache = rootView.getDrawingCache();
                if (drawingCache == null) {
                    return null;
                }
                bitmap = Bitmap.createBitmap(drawingCache);
                rootView.setDrawingCacheEnabled(isDrawingCacheEnabled);
            }
        }
        return bitmap;
    }

    public void send() {
        try {
            Intents.startActivity(this.f33978c, this.f33979d);
        } catch (IntentNotResolvableException e) {
            Context applicationContext = this.f33978c.getApplicationContext();
            if (applicationContext != null) {
                Toast.makeText(applicationContext, "No email client available", 0).show();
            }
        }
    }
}
