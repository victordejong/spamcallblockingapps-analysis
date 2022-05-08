package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.PointF;
import androidx.annotation.ColorInt;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/JsonUtils.class */
class JsonUtils {

    /* renamed from: a */
    private static final JsonReader.Options f6306a = JsonReader.Options.m15804a("x", "y");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.airbnb.lottie.parser.JsonUtils$1 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/JsonUtils$1.class */
    public static /* synthetic */ class C06661 {

        /* renamed from: a */
        static final /* synthetic */ int[] f6307a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            f6307a = iArr;
            try {
                iArr[JsonReader.Token.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6307a[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6307a[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    private JsonUtils() {
    }

    /* renamed from: a */
    private static PointF m15849a(JsonReader jsonReader, float f) throws IOException {
        jsonReader.mo15794b();
        float m = (float) jsonReader.mo15783m();
        float m2 = (float) jsonReader.mo15783m();
        while (jsonReader.mo15802B() != JsonReader.Token.END_ARRAY) {
            jsonReader.mo15799L();
        }
        jsonReader.mo15790e();
        return new PointF(m * f, m2 * f);
    }

    /* renamed from: b */
    private static PointF m15848b(JsonReader jsonReader, float f) throws IOException {
        float m = (float) jsonReader.mo15783m();
        float m2 = (float) jsonReader.mo15783m();
        while (jsonReader.mo15785k()) {
            jsonReader.mo15799L();
        }
        return new PointF(m * f, m2 * f);
    }

    /* renamed from: c */
    private static PointF m15847c(JsonReader jsonReader, float f) throws IOException {
        jsonReader.mo15792d();
        float f2 = 0.0f;
        float f3 = 0.0f;
        while (jsonReader.mo15785k()) {
            int J = jsonReader.mo15801J(f6306a);
            if (J == 0) {
                f2 = m15843g(jsonReader);
            } else if (J != 1) {
                jsonReader.mo15800K();
                jsonReader.mo15799L();
            } else {
                f3 = m15843g(jsonReader);
            }
        }
        jsonReader.mo15788h();
        return new PointF(f2 * f, f3 * f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    /* renamed from: d */
    public static int m15846d(JsonReader jsonReader) throws IOException {
        jsonReader.mo15794b();
        int m = (int) (jsonReader.mo15783m() * 255.0d);
        int m2 = (int) (jsonReader.mo15783m() * 255.0d);
        int m3 = (int) (jsonReader.mo15783m() * 255.0d);
        while (jsonReader.mo15785k()) {
            jsonReader.mo15799L();
        }
        jsonReader.mo15790e();
        return Color.argb(255, m, m2, m3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static PointF m15845e(JsonReader jsonReader, float f) throws IOException {
        int i = C06661.f6307a[jsonReader.mo15802B().ordinal()];
        if (i == 1) {
            return m15848b(jsonReader, f);
        }
        if (i == 2) {
            return m15849a(jsonReader, f);
        }
        if (i == 3) {
            return m15847c(jsonReader, f);
        }
        throw new IllegalArgumentException("Unknown point starts with " + jsonReader.mo15802B());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static List<PointF> m15844f(JsonReader jsonReader, float f) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.mo15794b();
        while (jsonReader.mo15802B() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.mo15794b();
            arrayList.add(m15845e(jsonReader, f));
            jsonReader.mo15790e();
        }
        jsonReader.mo15790e();
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static float m15843g(JsonReader jsonReader) throws IOException {
        JsonReader.Token B = jsonReader.mo15802B();
        int i = C06661.f6307a[B.ordinal()];
        if (i == 1) {
            return (float) jsonReader.mo15783m();
        }
        if (i == 2) {
            jsonReader.mo15794b();
            float m = (float) jsonReader.mo15783m();
            while (jsonReader.mo15785k()) {
                jsonReader.mo15799L();
            }
            jsonReader.mo15790e();
            return m;
        }
        throw new IllegalArgumentException("Unknown value for token of type " + B);
    }
}
