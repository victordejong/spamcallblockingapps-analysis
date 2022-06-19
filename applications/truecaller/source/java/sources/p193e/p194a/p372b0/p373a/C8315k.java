package p193e.p194a.p372b0.p373a;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import io.agora.rtc.Constants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.b0.a.k */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/k.class */
public final class C8315k {

    /* renamed from: a */
    public C8317b f25602a;

    /* renamed from: b */
    public final SensorManager f25603b;

    /* renamed from: e.a.b0.a.k$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/k$a.class */
    public static final class C8316a {

        /* renamed from: a */
        public final float f25604a;

        /* renamed from: b */
        public final float f25605b;

        /* renamed from: c */
        public final float f25606c;

        public C8316a(float f, float f2, float f3) {
            this.f25604a = f;
            this.f25605b = f2;
            this.f25606c = f3;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C8316a)) {
                    return false;
                }
                C8316a c8316a = (C8316a) obj;
                return Float.compare(this.f25604a, c8316a.f25604a) == 0 && Float.compare(this.f25605b, c8316a.f25605b) == 0 && Float.compare(this.f25606c, c8316a.f25606c) == 0;
            }
            return true;
        }

        public int hashCode() {
            int floatToIntBits = Float.floatToIntBits(this.f25604a);
            return Float.floatToIntBits(this.f25606c) + ((Float.floatToIntBits(this.f25605b) + (floatToIntBits * 31)) * 31);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Data(azimuth=");
            m8728C.append(this.f25604a);
            m8728C.append(", pitch=");
            m8728C.append(this.f25605b);
            m8728C.append(", roll=");
            m8728C.append(this.f25606c);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.b0.a.k$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/k$b.class */
    public static final class C8317b implements SensorEventListener {

        /* renamed from: a */
        public final float[] f25607a = new float[3];

        /* renamed from: b */
        public final float[] f25608b = new float[3];

        /* renamed from: c */
        public final float[] f25609c = new float[3];

        /* renamed from: d */
        public final float[] f25610d = new float[9];

        /* renamed from: e */
        public final float[] f25611e = new float[9];

        /* renamed from: f */
        public final float[] f25612f = new float[9];

        /* renamed from: g */
        public boolean f25613g;

        /* renamed from: h */
        public boolean f25614h;

        /* renamed from: i */
        public boolean f25615i;

        /* renamed from: j */
        public final l<C8316a, s> f25616j;

        /* JADX WARN: Multi-variable type inference failed */
        public C8317b(l<? super C8316a, s> lVar) {
            s1.z.c.l.e(lVar, "subscriber");
            this.f25616j = lVar;
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
            s1.z.c.l.e(sensor, "sensor");
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            s1.z.c.l.e(sensorEvent, "event");
            Sensor sensor = sensorEvent.sensor;
            s1.z.c.l.d(sensor, "event.sensor");
            int type = sensor.getType();
            if (type != 1) {
                if (type == 2) {
                    float[] fArr = this.f25608b;
                    float[] fArr2 = sensorEvent.values;
                    fArr[0] = fArr2[0];
                    fArr[1] = fArr2[1];
                    fArr[2] = fArr2[2];
                    this.f25615i = true;
                } else if (type != 9) {
                    return;
                } else {
                    float[] fArr3 = this.f25607a;
                    float[] fArr4 = sensorEvent.values;
                    fArr3[0] = fArr4[0];
                    fArr3[1] = fArr4[1];
                    fArr3[2] = fArr4[2];
                    this.f25613g = true;
                }
            } else if (!this.f25613g) {
                float[] fArr5 = this.f25607a;
                float[] fArr6 = sensorEvent.values;
                fArr5[0] = fArr6[0];
                fArr5[1] = fArr6[1];
                fArr5[2] = fArr6[2];
                this.f25614h = true;
            }
            if ((this.f25613g || this.f25614h) && this.f25615i) {
                SensorManager.getRotationMatrix(this.f25610d, this.f25611e, this.f25607a, this.f25608b);
                SensorManager.remapCoordinateSystem(this.f25610d, 2, Constants.ERR_WATERMARK_READ, this.f25612f);
                SensorManager.getOrientation(this.f25612f, this.f25609c);
                l<C8316a, s> lVar = this.f25616j;
                float[] fArr7 = this.f25609c;
                lVar.d(new C8316a(fArr7[0], fArr7[1], fArr7[2]));
            }
        }
    }

    public C8315k(SensorManager sensorManager) {
        s1.z.c.l.e(sensorManager, "sensorManager");
        this.f25603b = sensorManager;
    }
}
