package com.airbnb.lottie.parser;

import android.graphics.Color;
import androidx.annotation.IntRange;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.MiscUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/GradientColorParser.class */
public class GradientColorParser implements ValueParser<GradientColor> {

    /* renamed from: a */
    private int f6299a;

    public GradientColorParser(int i) {
        this.f6299a = i;
    }

    /* renamed from: b */
    private void m15855b(GradientColor gradientColor, List<Float> list) {
        int i = this.f6299a * 4;
        if (list.size() > i) {
            int size = (list.size() - i) / 2;
            double[] dArr = new double[size];
            double[] dArr2 = new double[size];
            int i2 = 0;
            while (i < list.size()) {
                if (i % 2 == 0) {
                    dArr[i2] = list.get(i).floatValue();
                } else {
                    dArr2[i2] = list.get(i).floatValue();
                    i2++;
                }
                i++;
            }
            for (int i3 = 0; i3 < gradientColor.m16053c(); i3++) {
                int i4 = gradientColor.m16055a()[i3];
                gradientColor.m16055a()[i3] = Color.argb(m15854c(gradientColor.m16054b()[i3], dArr, dArr2), Color.red(i4), Color.green(i4), Color.blue(i4));
            }
        }
    }

    @IntRange
    /* renamed from: c */
    private int m15854c(double d, double[] dArr, double[] dArr2) {
        double d2;
        int i = 1;
        while (true) {
            if (i >= dArr.length) {
                d2 = dArr2[dArr2.length - 1];
                break;
            }
            int i2 = i - 1;
            double d3 = dArr[i2];
            double d4 = dArr[i];
            if (dArr[i] >= d) {
                d2 = MiscUtils.m15701j(dArr2[i2], dArr2[i], MiscUtils.m15709b((d - d3) / (d4 - d3), 0.0d, 1.0d));
                break;
            }
            i++;
        }
        return (int) (d2 * 255.0d);
    }

    /* renamed from: d */
    public GradientColor mo15811a(JsonReader jsonReader, float f) throws IOException {
        ArrayList arrayList = new ArrayList();
        boolean z = jsonReader.mo15802B() == JsonReader.Token.BEGIN_ARRAY;
        if (z) {
            jsonReader.mo15794b();
        }
        while (jsonReader.mo15785k()) {
            arrayList.add(Float.valueOf((float) jsonReader.mo15783m()));
        }
        if (z) {
            jsonReader.mo15790e();
        }
        if (this.f6299a == -1) {
            this.f6299a = arrayList.size() / 4;
        }
        int i = this.f6299a;
        float[] fArr = new float[i];
        int[] iArr = new int[i];
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < this.f6299a * 4; i4++) {
            int i5 = i4 / 4;
            double floatValue = arrayList.get(i4).floatValue();
            int i6 = i4 % 4;
            if (i6 == 0) {
                fArr[i5] = (float) floatValue;
            } else if (i6 == 1) {
                i2 = (int) (floatValue * 255.0d);
            } else if (i6 == 2) {
                i3 = (int) (floatValue * 255.0d);
            } else if (i6 == 3) {
                iArr[i5] = Color.argb(255, i2, i3, (int) (floatValue * 255.0d));
            }
        }
        GradientColor gradientColor = new GradientColor(fArr, iArr);
        m15855b(gradientColor, arrayList);
        return gradientColor;
    }
}
