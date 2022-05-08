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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawi.class */
public class zzawi extends zzawh {
    public zzawi() {
        super((byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzawh
    public final String getDefaultUserAgent(Context context) {
        zzayf zzxc = zzayf.zzxc();
        if (TextUtils.isEmpty(zzxc.f11526a)) {
            zzxc.f11526a = (String) (ClientLibraryUtils.isPackageSide() ? zzayc.zza(context, new CallableC1877fo(context)) : zzayc.zza(context, new CallableC1878fp(GooglePlayServicesUtilLight.getRemoteContext(context), context)));
        }
        return zzxc.f11526a;
    }

    @Override // com.google.android.gms.internal.ads.zzawh
    public final int zza(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "wifi_on", 0);
    }

    @Override // com.google.android.gms.internal.ads.zzawh
    public final Drawable zza(Context context, Bitmap bitmap, boolean z, float f) {
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

    @Override // com.google.android.gms.internal.ads.zzawh
    public final boolean zza(Context context, WebSettings webSettings) {
        super.zza(context, webSettings);
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzawh
    public final int zzb(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "airplane_mode_on", 0);
    }

    @Override // com.google.android.gms.internal.ads.zzawh
    public final void zzbc(Context context) {
        zzayf zzxc = zzayf.zzxc();
        zzavs.zzed("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(zzxc.f11526a)) {
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (ClientLibraryUtils.isPackageSide() || remoteContext == null) {
                SharedPreferences.Editor putString = context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(context));
                if (remoteContext == null) {
                    putString.apply();
                } else {
                    SharedPreferencesUtils.publishWorldReadableSharedPreferences(context, putString, "admob_user_agent");
                }
            }
            zzxc.f11526a = defaultUserAgent;
        }
        zzavs.zzed("User agent is updated.");
    }
}
