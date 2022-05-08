package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import androidx.annotation.FloatRange;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.MiscUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/ShapeData.class */
public class ShapeData {

    /* renamed from: a */
    private final List<CubicCurveData> f6161a;

    /* renamed from: b */
    private PointF f6162b;

    /* renamed from: c */
    private boolean f6163c;

    public ShapeData() {
        this.f6161a = new ArrayList();
    }

    public ShapeData(PointF pointF, boolean z, List<CubicCurveData> list) {
        this.f6162b = pointF;
        this.f6163c = z;
        this.f6161a = new ArrayList(list);
    }

    /* renamed from: e */
    private void m15999e(float f, float f2) {
        if (this.f6162b == null) {
            this.f6162b = new PointF();
        }
        this.f6162b.set(f, f2);
    }

    /* renamed from: a */
    public List<CubicCurveData> m16003a() {
        return this.f6161a;
    }

    /* renamed from: b */
    public PointF m16002b() {
        return this.f6162b;
    }

    /* renamed from: c */
    public void m16001c(ShapeData shapeData, ShapeData shapeData2, @FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (this.f6162b == null) {
            this.f6162b = new PointF();
        }
        this.f6163c = shapeData.m16000d() || shapeData2.m16000d();
        if (shapeData.m16003a().size() != shapeData2.m16003a().size()) {
            Logger.m15736c("Curves must have the same number of control points. Shape 1: " + shapeData.m16003a().size() + "\tShape 2: " + shapeData2.m16003a().size());
        }
        int min = Math.min(shapeData.m16003a().size(), shapeData2.m16003a().size());
        if (this.f6161a.size() < min) {
            for (int size = this.f6161a.size(); size < min; size++) {
                this.f6161a.add(new CubicCurveData());
            }
        } else if (this.f6161a.size() > min) {
            for (int size2 = this.f6161a.size() - 1; size2 >= min; size2--) {
                List<CubicCurveData> list = this.f6161a;
                list.remove(list.size() - 1);
            }
        }
        PointF b = shapeData.m16002b();
        PointF b2 = shapeData2.m16002b();
        m15999e(MiscUtils.m15700k(b.x, b2.x, f), MiscUtils.m15700k(b.y, b2.y, f));
        for (int size3 = this.f6161a.size() - 1; size3 >= 0; size3--) {
            CubicCurveData cubicCurveData = shapeData.m16003a().get(size3);
            CubicCurveData cubicCurveData2 = shapeData2.m16003a().get(size3);
            PointF a = cubicCurveData.m16101a();
            PointF b3 = cubicCurveData.m16100b();
            PointF c = cubicCurveData.m16099c();
            PointF a2 = cubicCurveData2.m16101a();
            PointF b4 = cubicCurveData2.m16100b();
            PointF c2 = cubicCurveData2.m16099c();
            this.f6161a.get(size3).m16098d(MiscUtils.m15700k(a.x, a2.x, f), MiscUtils.m15700k(a.y, a2.y, f));
            this.f6161a.get(size3).m16097e(MiscUtils.m15700k(b3.x, b4.x, f), MiscUtils.m15700k(b3.y, b4.y, f));
            this.f6161a.get(size3).m16096f(MiscUtils.m15700k(c.x, c2.x, f), MiscUtils.m15700k(c.y, c2.y, f));
        }
    }

    /* renamed from: d */
    public boolean m16000d() {
        return this.f6163c;
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.f6161a.size() + "closed=" + this.f6163c + '}';
    }
}
