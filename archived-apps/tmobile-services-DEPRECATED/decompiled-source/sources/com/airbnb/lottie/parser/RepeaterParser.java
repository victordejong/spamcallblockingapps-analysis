package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.Repeater;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/RepeaterParser.class */
public class RepeaterParser {

    /* renamed from: a */
    private static JsonReader.Options f6325a = JsonReader.Options.m15804a("nm", "c", "o", "tr", "hd");

    private RepeaterParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Repeater m15819a(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        String str = null;
        AnimatableFloatValue animatableFloatValue = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableTransform animatableTransform = null;
        boolean z = false;
        while (jsonReader.mo15785k()) {
            int J = jsonReader.mo15801J(f6325a);
            if (J == 0) {
                str = jsonReader.mo15779q();
            } else if (J == 1) {
                animatableFloatValue = AnimatableValueParser.m15868f(jsonReader, lottieComposition, false);
            } else if (J == 2) {
                animatableFloatValue2 = AnimatableValueParser.m15868f(jsonReader, lottieComposition, false);
            } else if (J == 3) {
                animatableTransform = AnimatableTransformParser.m15874g(jsonReader, lottieComposition);
            } else if (J != 4) {
                jsonReader.mo15799L();
            } else {
                z = jsonReader.mo15784l();
            }
        }
        return new Repeater(str, animatableFloatValue, animatableFloatValue2, animatableTransform, z);
    }
}
