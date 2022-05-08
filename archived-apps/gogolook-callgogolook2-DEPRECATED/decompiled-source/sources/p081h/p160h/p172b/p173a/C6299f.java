package p081h.p160h.p172b.p173a;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import java.util.Hashtable;
/* renamed from: h.h.b.a.f */
/* loaded from: classes2-dex2jar.jar:h/h/b/a/f.class */
public class C6299f {

    /* renamed from: a */
    public static Hashtable<String, Typeface> f15606a = new Hashtable<>();

    /* renamed from: a */
    public static Typeface m23340a(Context context, String str) {
        Typeface typeface = f15606a.get(str);
        Typeface typeface2 = typeface;
        if (typeface == null) {
            try {
                AssetManager assets = context.getAssets();
                Typeface createFromAsset = Typeface.createFromAsset(assets, "fonts/" + str);
                typeface2 = createFromAsset;
                if (createFromAsset != null) {
                    f15606a.put(str, createFromAsset);
                    typeface2 = createFromAsset;
                }
            } catch (Exception e) {
                C6291a.m23382a("[UtilsFonts] getFont : " + e.toString());
                return null;
            }
        }
        Typeface typeface3 = typeface2;
        if (typeface2 == null) {
            typeface3 = Typeface.DEFAULT;
        }
        return typeface3;
    }
}
