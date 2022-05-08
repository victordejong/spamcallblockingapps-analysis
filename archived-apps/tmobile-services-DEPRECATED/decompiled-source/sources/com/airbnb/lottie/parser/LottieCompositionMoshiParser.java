package com.airbnb.lottie.parser;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/LottieCompositionMoshiParser.class */
public class LottieCompositionMoshiParser {

    /* renamed from: a */
    private static final JsonReader.Options f6316a = JsonReader.Options.m15804a("w", "h", "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");

    /* renamed from: b */
    static JsonReader.Options f6317b = JsonReader.Options.m15804a(Name.MARK, "layers", "w", "h", "p", "u");

    /* renamed from: c */
    private static final JsonReader.Options f6318c = JsonReader.Options.m15804a("list");

    /* renamed from: d */
    private static final JsonReader.Options f6319d = JsonReader.Options.m15804a("cm", "tm", "dr");

    /* renamed from: a */
    public static LottieComposition m15832a(JsonReader jsonReader) throws IOException {
        float e = Utils.m15693e();
        LongSparseArray<Layer> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        SparseArrayCompat<FontCharacter> sparseArrayCompat = new SparseArrayCompat<>();
        LottieComposition lottieComposition = new LottieComposition();
        jsonReader.mo15792d();
        int i = 0;
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        int i2 = 0;
        while (jsonReader.mo15785k()) {
            switch (jsonReader.mo15801J(f6316a)) {
                case 0:
                    i = jsonReader.mo15782o();
                    break;
                case 1:
                    i2 = jsonReader.mo15782o();
                    break;
                case 2:
                    f = (float) jsonReader.mo15783m();
                    break;
                case 3:
                    f2 = ((float) jsonReader.mo15783m()) - 0.01f;
                    break;
                case 4:
                    f3 = (float) jsonReader.mo15783m();
                    break;
                case 5:
                    String[] split = jsonReader.mo15779q().split("\\.");
                    if (Utils.m15688j(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]), 4, 4, 0)) {
                        break;
                    } else {
                        lottieComposition.m16346a("Lottie only supports bodymovin >= 4.4.0");
                        break;
                    }
                case 6:
                    m15828e(jsonReader, lottieComposition, arrayList, longSparseArray);
                    break;
                case 7:
                    m15831b(jsonReader, lottieComposition, hashMap, hashMap2);
                    break;
                case 8:
                    m15829d(jsonReader, hashMap3);
                    break;
                case 9:
                    m15830c(jsonReader, lottieComposition, sparseArrayCompat);
                    break;
                case 10:
                    m15827f(jsonReader, lottieComposition, arrayList2);
                    break;
                default:
                    jsonReader.mo15800K();
                    jsonReader.mo15799L();
                    break;
            }
        }
        lottieComposition.m16329r(new Rect(0, 0, (int) (i * e), (int) (i2 * e)), f, f2, f3, arrayList, longSparseArray, hashMap, hashMap2, sparseArrayCompat, hashMap3, arrayList2);
        return lottieComposition;
    }

    /* renamed from: b */
    private static void m15831b(JsonReader jsonReader, LottieComposition lottieComposition, Map<String, List<Layer>> map, Map<String, LottieImageAsset> map2) throws IOException {
        jsonReader.mo15794b();
        while (jsonReader.mo15785k()) {
            ArrayList arrayList = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            jsonReader.mo15792d();
            String str = null;
            String str2 = null;
            String str3 = null;
            int i = 0;
            int i2 = 0;
            while (jsonReader.mo15785k()) {
                int J = jsonReader.mo15801J(f6317b);
                if (J == 0) {
                    str = jsonReader.mo15779q();
                } else if (J == 1) {
                    jsonReader.mo15794b();
                    while (jsonReader.mo15785k()) {
                        Layer b = LayerParser.m15833b(jsonReader, lottieComposition);
                        longSparseArray.m21040n(b.m15937b(), b);
                        arrayList.add(b);
                    }
                    jsonReader.mo15790e();
                } else if (J == 2) {
                    i = jsonReader.mo15782o();
                } else if (J == 3) {
                    i2 = jsonReader.mo15782o();
                } else if (J == 4) {
                    str2 = jsonReader.mo15779q();
                } else if (J != 5) {
                    jsonReader.mo15800K();
                    jsonReader.mo15799L();
                } else {
                    str3 = jsonReader.mo15779q();
                }
            }
            jsonReader.mo15788h();
            if (str2 != null) {
                LottieImageAsset lottieImageAsset = new LottieImageAsset(i, i2, str, str2, str3);
                map2.put(lottieImageAsset.m16221d(), lottieImageAsset);
            } else {
                map.put(str, arrayList);
            }
        }
        jsonReader.mo15790e();
    }

    /* renamed from: c */
    private static void m15830c(JsonReader jsonReader, LottieComposition lottieComposition, SparseArrayCompat<FontCharacter> sparseArrayCompat) throws IOException {
        jsonReader.mo15794b();
        while (jsonReader.mo15785k()) {
            FontCharacter a = FontCharacterParser.m15857a(jsonReader, lottieComposition);
            sparseArrayCompat.m20995m(a.hashCode(), a);
        }
        jsonReader.mo15790e();
    }

    /* renamed from: d */
    private static void m15829d(JsonReader jsonReader, Map<String, Font> map) throws IOException {
        jsonReader.mo15792d();
        while (jsonReader.mo15785k()) {
            if (jsonReader.mo15801J(f6318c) != 0) {
                jsonReader.mo15800K();
                jsonReader.mo15799L();
            } else {
                jsonReader.mo15794b();
                while (jsonReader.mo15785k()) {
                    Font a = FontParser.m15856a(jsonReader);
                    map.put(a.m16094b(), a);
                }
                jsonReader.mo15790e();
            }
        }
        jsonReader.mo15788h();
    }

    /* renamed from: e */
    private static void m15828e(JsonReader jsonReader, LottieComposition lottieComposition, List<Layer> list, LongSparseArray<Layer> longSparseArray) throws IOException {
        jsonReader.mo15794b();
        int i = 0;
        while (jsonReader.mo15785k()) {
            Layer b = LayerParser.m15833b(jsonReader, lottieComposition);
            int i2 = i;
            if (b.m15935d() == Layer.LayerType.IMAGE) {
                i2 = i + 1;
            }
            list.add(b);
            longSparseArray.m21040n(b.m15937b(), b);
            i = i2;
            if (i2 > 4) {
                Logger.m15736c("You have " + i2 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                i = i2;
            }
        }
        jsonReader.mo15790e();
    }

    /* renamed from: f */
    private static void m15827f(JsonReader jsonReader, LottieComposition lottieComposition, List<Marker> list) throws IOException {
        jsonReader.mo15794b();
        while (jsonReader.mo15785k()) {
            String str = null;
            jsonReader.mo15792d();
            float f = 0.0f;
            float f2 = 0.0f;
            while (jsonReader.mo15785k()) {
                int J = jsonReader.mo15801J(f6319d);
                if (J == 0) {
                    str = jsonReader.mo15779q();
                } else if (J == 1) {
                    f = (float) jsonReader.mo15783m();
                } else if (J != 2) {
                    jsonReader.mo15800K();
                    jsonReader.mo15799L();
                } else {
                    f2 = (float) jsonReader.mo15783m();
                }
            }
            jsonReader.mo15788h();
            list.add(new Marker(str, f, f2));
        }
        jsonReader.mo15790e();
    }
}
