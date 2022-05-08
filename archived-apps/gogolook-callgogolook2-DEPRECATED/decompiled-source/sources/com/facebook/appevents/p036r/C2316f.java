package com.facebook.appevents.p036r;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
/* renamed from: com.facebook.appevents.r.f */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/f.class */
public class C2316f implements SensorEventListener {

    /* renamed from: a */
    public AbstractC2317a f2789a;

    /* renamed from: com.facebook.appevents.r.f$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/f$a.class */
    public interface AbstractC2317a {
        /* renamed from: a */
        void mo35188a();
    }

    /* renamed from: a */
    public void m35189a(AbstractC2317a aVar) {
        this.f2789a = aVar;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.f2789a != null) {
            float[] fArr = sensorEvent.values;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[2];
            double d = f / 9.80665f;
            double d2 = f2 / 9.80665f;
            double d3 = f3 / 9.80665f;
            if (Math.sqrt((d * d) + (d2 * d2) + (d3 * d3)) > 2.299999952316284d) {
                this.f2789a.mo35188a();
            }
        }
    }
}
