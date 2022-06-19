package androidx.core.app;

import android.view.FrameMetrics;
import android.view.Window;
import androidx.core.app.C0183g;
/* loaded from: classes-dex2jar.jar:androidx/core/app/g$a$a.class */
class g$a$a implements Window.OnFrameMetricsAvailableListener {

    /* renamed from: a */
    final /* synthetic */ C0183g.a f1222a;

    g$a$a(C0183g.a aVar) {
        this.f1222a = aVar;
    }

    @Override // android.view.Window.OnFrameMetricsAvailableListener
    public void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
        C0183g.a aVar = this.f1222a;
        if ((aVar.a & 1) != 0) {
            aVar.c(aVar.b[0], frameMetrics.getMetric(8));
        }
        C0183g.a aVar2 = this.f1222a;
        if ((aVar2.a & 2) != 0) {
            aVar2.c(aVar2.b[1], frameMetrics.getMetric(1));
        }
        C0183g.a aVar3 = this.f1222a;
        if ((aVar3.a & 4) != 0) {
            aVar3.c(aVar3.b[2], frameMetrics.getMetric(3));
        }
        C0183g.a aVar4 = this.f1222a;
        if ((aVar4.a & 8) != 0) {
            aVar4.c(aVar4.b[3], frameMetrics.getMetric(4));
        }
        C0183g.a aVar5 = this.f1222a;
        if ((aVar5.a & 16) != 0) {
            aVar5.c(aVar5.b[4], frameMetrics.getMetric(5));
        }
        C0183g.a aVar6 = this.f1222a;
        if ((aVar6.a & 64) != 0) {
            aVar6.c(aVar6.b[6], frameMetrics.getMetric(7));
        }
        C0183g.a aVar7 = this.f1222a;
        if ((aVar7.a & 32) != 0) {
            aVar7.c(aVar7.b[5], frameMetrics.getMetric(6));
        }
        C0183g.a aVar8 = this.f1222a;
        if ((aVar8.a & 128) != 0) {
            aVar8.c(aVar8.b[7], frameMetrics.getMetric(0));
        }
        C0183g.a aVar9 = this.f1222a;
        if ((aVar9.a & 256) != 0) {
            aVar9.c(aVar9.b[8], frameMetrics.getMetric(2));
        }
    }
}
