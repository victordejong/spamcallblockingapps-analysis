package com.airbnb.lottie.manager;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.ImageAssetDelegate;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/manager/ImageAssetManager.class */
public class ImageAssetManager {

    /* renamed from: e */
    private static final Object f6051e = new Object();

    /* renamed from: a */
    private final Context f6052a;

    /* renamed from: b */
    private String f6053b;
    @Nullable

    /* renamed from: c */
    private ImageAssetDelegate f6054c;

    /* renamed from: d */
    private final Map<String, LottieImageAsset> f6055d;

    public ImageAssetManager(Drawable.Callback callback, String str, ImageAssetDelegate imageAssetDelegate, Map<String, LottieImageAsset> map) {
        this.f6053b = str;
        if (!TextUtils.isEmpty(str)) {
            String str2 = this.f6053b;
            if (str2.charAt(str2.length() - 1) != '/') {
                this.f6053b += '/';
            }
        }
        if (!(callback instanceof View)) {
            Logger.m15736c("LottieDrawable must be inside of a view for images to work.");
            this.f6055d = new HashMap();
            this.f6052a = null;
            return;
        }
        this.f6052a = ((View) callback).getContext();
        this.f6055d = map;
        m16102d(imageAssetDelegate);
    }

    /* renamed from: c */
    private Bitmap m16103c(String str, @Nullable Bitmap bitmap) {
        synchronized (f6051e) {
            this.f6055d.get(str).m16219f(bitmap);
        }
        return bitmap;
    }

    @Nullable
    /* renamed from: a */
    public Bitmap m16105a(String str) {
        LottieImageAsset lottieImageAsset = this.f6055d.get(str);
        if (lottieImageAsset == null) {
            return null;
        }
        Bitmap a = lottieImageAsset.m16224a();
        if (a != null) {
            return a;
        }
        ImageAssetDelegate imageAssetDelegate = this.f6054c;
        if (imageAssetDelegate != null) {
            Bitmap a2 = imageAssetDelegate.m16373a(lottieImageAsset);
            if (a2 != null) {
                m16103c(str, a2);
            }
            return a2;
        }
        String b = lottieImageAsset.m16223b();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (!b.startsWith("data:") || b.indexOf("base64,") <= 0) {
            try {
                if (!TextUtils.isEmpty(this.f6053b)) {
                    AssetManager assets = this.f6052a.getAssets();
                    Bitmap l = Utils.m15686l(BitmapFactory.decodeStream(assets.open(this.f6053b + b), null, options), lottieImageAsset.m16220e(), lottieImageAsset.m16222c());
                    m16103c(str, l);
                    return l;
                }
                throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
            } catch (IOException e) {
                Logger.m15735d("Unable to open asset.", e);
                return null;
            }
        } else {
            try {
                byte[] decode = Base64.decode(b.substring(b.indexOf(44) + 1), 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
                m16103c(str, decodeByteArray);
                return decodeByteArray;
            } catch (IllegalArgumentException e2) {
                Logger.m15735d("data URL did not have correct base64 format.", e2);
                return null;
            }
        }
    }

    /* renamed from: b */
    public boolean m16104b(Context context) {
        return (context == null && this.f6052a == null) || this.f6052a.equals(context);
    }

    /* renamed from: d */
    public void m16102d(@Nullable ImageAssetDelegate imageAssetDelegate) {
        this.f6054c = imageAssetDelegate;
    }
}
