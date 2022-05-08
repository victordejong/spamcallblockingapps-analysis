package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/PathParser.class */
public class PathParser implements ValueParser<PointF> {

    /* renamed from: a */
    public static final PathParser f6321a = new PathParser();

    private PathParser() {
    }

    /* renamed from: b */
    public PointF mo15811a(JsonReader jsonReader, float f) throws IOException {
        return JsonUtils.m15845e(jsonReader, f);
    }
}
