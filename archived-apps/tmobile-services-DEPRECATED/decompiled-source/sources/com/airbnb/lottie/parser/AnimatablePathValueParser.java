package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatablePathValue;
import com.airbnb.lottie.model.animatable.AnimatableSplitDimensionPathValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/AnimatablePathValueParser.class */
public class AnimatablePathValueParser {

    /* renamed from: a */
    private static JsonReader.Options f6285a = JsonReader.Options.m15804a("k", "x", "y");

    private AnimatablePathValueParser() {
    }

    /* renamed from: a */
    public static AnimatablePathValue m15884a(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.mo15802B() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.mo15794b();
            while (jsonReader.mo15785k()) {
                arrayList.add(PathKeyframeParser.m15824a(jsonReader, lottieComposition));
            }
            jsonReader.mo15790e();
            KeyframesParser.m15835b(arrayList);
        } else {
            arrayList.add(new Keyframe(JsonUtils.m15845e(jsonReader, Utils.m15693e())));
        }
        return new AnimatablePathValue(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static AnimatableValue<PointF, PointF> m15883b(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        jsonReader.mo15792d();
        AnimatablePathValue animatablePathValue = null;
        AnimatableFloatValue animatableFloatValue = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        boolean z = false;
        while (jsonReader.mo15802B() != JsonReader.Token.END_OBJECT) {
            int J = jsonReader.mo15801J(f6285a);
            if (J == 0) {
                animatablePathValue = m15884a(jsonReader, lottieComposition);
            } else if (J != 1) {
                if (J != 2) {
                    jsonReader.mo15800K();
                    jsonReader.mo15799L();
                } else if (jsonReader.mo15802B() == JsonReader.Token.STRING) {
                    jsonReader.mo15799L();
                    z = true;
                } else {
                    animatableFloatValue2 = AnimatableValueParser.m15869e(jsonReader, lottieComposition);
                }
            } else if (jsonReader.mo15802B() == JsonReader.Token.STRING) {
                jsonReader.mo15799L();
                z = true;
            } else {
                animatableFloatValue = AnimatableValueParser.m15869e(jsonReader, lottieComposition);
            }
        }
        jsonReader.mo15788h();
        if (z) {
            lottieComposition.m16346a("Lottie doesn't support expressions.");
        }
        return animatablePathValue != null ? animatablePathValue : new AnimatableSplitDimensionPathValue(animatableFloatValue, animatableFloatValue2);
    }
}
