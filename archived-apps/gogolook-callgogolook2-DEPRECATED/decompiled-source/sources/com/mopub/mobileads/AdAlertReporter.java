package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Base64;
import android.view.View;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
    public final String f8372a = new SimpleDateFormat("M/d/yy hh:mm:ss a z", Locale.US).format(DateAndTime.now());

    /* renamed from: b */
    public final View f8373b;
    @NonNull

    /* renamed from: c */
    public final Context f8374c;

    /* renamed from: d */
    public Intent f8375d;

    /* renamed from: e */
    public String f8376e;

    /* renamed from: f */
    public String f8377f;

    public AdAlertReporter(@NonNull Context context, View view, @Nullable AdReport adReport) {
        Preconditions.checkNotNull(context);
        this.f8373b = view;
        this.f8374c = context;
        m30630b();
        String a = m30632a(m30629c());
        this.f8376e = "";
        this.f8377f = "";
        if (adReport != null) {
            this.f8376e = adReport.toString();
            this.f8377f = adReport.getResponseString();
        }
        m30633a();
        m30631a(this.f8376e, this.f8377f, a);
    }

    /* renamed from: a */
    public final String m30632a(Bitmap bitmap) {
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
    public final void m30633a() {
        Intent intent = this.f8375d;
        intent.putExtra("android.intent.extra.SUBJECT", "New creative violation report - " + this.f8372a);
    }

    /* renamed from: a */
    public final void m30631a(String... strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("Thank you for taking the time to tell us about your ad experience.\n\nPlease share with us how the ad experience was poor:\n\n");
        sb.append("\n=================\n");
        for (int i = 0; i < strArr.length; i++) {
            sb.append(strArr[i]);
            if (i != strArr.length - 1) {
                sb.append("\n=================\n");
            }
        }
        this.f8375d.putExtra("android.intent.extra.TEXT", sb.toString());
    }

    /* renamed from: b */
    public final void m30630b() {
        this.f8375d = new Intent("android.intent.action.SENDTO");
        this.f8375d.setData(Uri.parse("mailto:creative-review@mopub.com"));
    }

    /* renamed from: c */
    public final Bitmap m30629c() {
        View view = this.f8373b;
        Bitmap bitmap = null;
        if (view != null) {
            if (view.getRootView() == null) {
                bitmap = null;
            } else {
                View rootView = this.f8373b.getRootView();
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
            Intents.startActivity(this.f8374c, this.f8375d);
        } catch (IntentNotResolvableException e) {
            Context applicationContext = this.f8374c.getApplicationContext();
            if (applicationContext != null) {
                Toast.makeText(applicationContext, "No email client available", 0).show();
            }
        }
    }
}
