package com.airbnb.lottie.manager;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.FontAssetDelegate;
import com.airbnb.lottie.model.MutablePair;
import com.airbnb.lottie.utils.Logger;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/manager/FontAssetManager.class */
public class FontAssetManager {

    /* renamed from: d */
    private final AssetManager f6048d;
    @Nullable

    /* renamed from: e */
    private FontAssetDelegate f6049e;

    /* renamed from: a */
    private final MutablePair<String> f6045a = new MutablePair<>();

    /* renamed from: b */
    private final Map<MutablePair<String>, Typeface> f6046b = new HashMap();

    /* renamed from: c */
    private final Map<String, Typeface> f6047c = new HashMap();

    /* renamed from: f */
    private String f6050f = ".ttf";

    public FontAssetManager(Drawable.Callback callback, @Nullable FontAssetDelegate fontAssetDelegate) {
        this.f6049e = fontAssetDelegate;
        if (!(callback instanceof View)) {
            Logger.m15736c("LottieDrawable must be inside of a view for images to work.");
            this.f6048d = null;
            return;
        }
        this.f6048d = ((View) callback).getContext().getAssets();
    }

    /* renamed from: a */
    private Typeface m16109a(String str) {
        Typeface typeface = this.f6047c.get(str);
        if (typeface != null) {
            return typeface;
        }
        Typeface typeface2 = null;
        FontAssetDelegate fontAssetDelegate = this.f6049e;
        if (fontAssetDelegate != null) {
            typeface2 = fontAssetDelegate.m16375a(str);
        }
        FontAssetDelegate fontAssetDelegate2 = this.f6049e;
        Typeface typeface3 = typeface2;
        if (fontAssetDelegate2 != null) {
            typeface3 = typeface2;
            if (typeface2 == null) {
                String b = fontAssetDelegate2.m16374b(str);
                typeface3 = typeface2;
                if (b != null) {
                    typeface3 = Typeface.createFromAsset(this.f6048d, b);
                }
            }
        }
        Typeface typeface4 = typeface3;
        if (typeface3 == null) {
            typeface4 = Typeface.createFromAsset(this.f6048d, "fonts/" + str + this.f6050f);
        }
        this.f6047c.put(str, typeface4);
        return typeface4;
    }

    /* renamed from: d */
    private Typeface m16106d(Typeface typeface, String str) {
        boolean contains = str.contains("Italic");
        boolean contains2 = str.contains("Bold");
        int i = (!contains || !contains2) ? contains ? 2 : contains2 ? 1 : 0 : 3;
        return typeface.getStyle() == i ? typeface : Typeface.create(typeface, i);
    }

    /* renamed from: b */
    public Typeface m16108b(String str, String str2) {
        this.f6045a.m16075b(str, str2);
        Typeface typeface = this.f6046b.get(this.f6045a);
        if (typeface != null) {
            return typeface;
        }
        Typeface d = m16106d(m16109a(str), str2);
        this.f6046b.put(this.f6045a, d);
        return d;
    }

    /* renamed from: c */
    public void m16107c(@Nullable FontAssetDelegate fontAssetDelegate) {
        this.f6049e = fontAssetDelegate;
    }
}
