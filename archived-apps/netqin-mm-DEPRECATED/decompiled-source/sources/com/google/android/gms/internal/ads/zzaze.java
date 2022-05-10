package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.SharedPreferencesUtils;
import p131c.p161d.p170b.p224d.p252g.p253a.CallableC3534f6;
import p131c.p161d.p170b.p224d.p252g.p253a.CallableC3571g6;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaze.class */
public class zzaze extends zzazd {
    public zzaze() {
        super();
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: a */
    public final int mo16043a(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "wifi_on", 0);
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: a */
    public final Drawable mo16041a(Context context, Bitmap bitmap, boolean z, float f) {
        if (!z || f <= 0.0f || f > 25.0f) {
            return new BitmapDrawable(context.getResources(), bitmap);
        }
        try {
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), false);
            Bitmap createBitmap = Bitmap.createBitmap(createScaledBitmap);
            RenderScript create = RenderScript.create(context);
            ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
            Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
            Allocation createFromBitmap2 = Allocation.createFromBitmap(create, createBitmap);
            create2.setRadius(f);
            create2.setInput(createFromBitmap);
            create2.forEach(createFromBitmap2);
            createFromBitmap2.copyTo(createBitmap);
            return new BitmapDrawable(context.getResources(), createBitmap);
        } catch (RuntimeException e) {
            return new BitmapDrawable(context.getResources(), bitmap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: a */
    public final String mo16042a(Context context) {
        zzbbb a = zzbbb.m15920a();
        if (TextUtils.isEmpty(a.f24729a)) {
            a.f24729a = ClientLibraryUtils.m17107a() ? (String) zzbay.m15929a(context, new CallableC3534f6(a, context)) : (String) zzbay.m15929a(context, new CallableC3571g6(a, GooglePlayServicesUtilLight.getRemoteContext(context), context));
        }
        return a.f24729a;
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: a */
    public final boolean mo16040a(Context context, WebSettings webSettings) {
        super.mo16040a(context, webSettings);
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: b */
    public final int mo16039b(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "airplane_mode_on", 0);
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: b */
    public final void mo16038b(Context context) {
        zzbbb a = zzbbb.m15920a();
        zzayp.m16153g("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(a.f24729a)) {
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (ClientLibraryUtils.m17107a() || remoteContext == null) {
                SharedPreferences.Editor putString = context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(context));
                if (remoteContext == null) {
                    putString.apply();
                } else {
                    SharedPreferencesUtils.m17050a(context, putString, "admob_user_agent");
                    throw null;
                }
            }
            a.f24729a = defaultUserAgent;
        }
        zzayp.m16153g("User agent is updated.");
    }
}
