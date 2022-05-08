package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
/* renamed from: com.google.android.gms.internal.ads.gx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gx.class */
final class C1913gx implements SensorEventListener {

    /* renamed from: a */
    private final SensorManager f8522a;

    /* renamed from: c */
    private final Display f8524c;

    /* renamed from: f */
    private float[] f8527f;

    /* renamed from: g */
    private Handler f8528g;

    /* renamed from: h */
    private AbstractC1915gz f8529h;

    /* renamed from: d */
    private final float[] f8525d = new float[9];

    /* renamed from: e */
    private final float[] f8526e = new float[9];

    /* renamed from: b */
    private final Object f8523b = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1913gx(Context context) {
        this.f8522a = (SensorManager) context.getSystemService("sensor");
        this.f8524c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    /* renamed from: a */
    private final void m4719a(int i, int i2) {
        float[] fArr = this.f8526e;
        float f = fArr[i];
        fArr[i] = fArr[i2];
        fArr[i2] = f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m4720a() {
        if (this.f8528g == null) {
            Sensor defaultSensor = this.f8522a.getDefaultSensor(11);
            if (defaultSensor == null) {
                zzavs.zzex("No Sensor of TYPE_ROTATION_VECTOR");
                return;
            }
            HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
            handlerThread.start();
            this.f8528g = new zzddu(handlerThread.getLooper());
            if (!this.f8522a.registerListener(this, defaultSensor, 0, this.f8528g)) {
                zzavs.zzex("SensorManager.registerListener failed.");
                m4716b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m4718a(AbstractC1915gz gzVar) {
        this.f8529h = gzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m4717a(float[] fArr) {
        synchronized (this.f8523b) {
            if (this.f8527f == null) {
                return false;
            }
            System.arraycopy(this.f8527f, 0, fArr, 0, this.f8527f.length);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m4716b() {
        if (this.f8528g != null) {
            this.f8522a.unregisterListener(this);
            this.f8528g.post(new RunnableC1917ha());
            this.f8528g = null;
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] != 0.0f || fArr[1] != 0.0f || fArr[2] != 0.0f) {
            synchronized (this.f8523b) {
                if (this.f8527f == null) {
                    this.f8527f = new float[9];
                }
            }
            SensorManager.getRotationMatrixFromVector(this.f8525d, fArr);
            int rotation = this.f8524c.getRotation();
            if (rotation == 1) {
                SensorManager.remapCoordinateSystem(this.f8525d, 2, 129, this.f8526e);
            } else if (rotation == 2) {
                SensorManager.remapCoordinateSystem(this.f8525d, 129, 130, this.f8526e);
            } else if (rotation != 3) {
                System.arraycopy(this.f8525d, 0, this.f8526e, 0, 9);
            } else {
                SensorManager.remapCoordinateSystem(this.f8525d, 130, 1, this.f8526e);
            }
            m4719a(1, 3);
            m4719a(2, 6);
            m4719a(5, 7);
            synchronized (this.f8523b) {
                System.arraycopy(this.f8526e, 0, this.f8527f, 0, 9);
            }
            AbstractC1915gz gzVar = this.f8529h;
            if (gzVar != null) {
                gzVar.zztq();
            }
        }
    }
}
