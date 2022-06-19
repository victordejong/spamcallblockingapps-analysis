package com.appsflyer.internal;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* renamed from: com.appsflyer.internal.r */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/r.class */
public final class C0680r implements SensorEventListener {

    /* renamed from: ı */
    long f3066;

    /* renamed from: Ɩ */
    private final String f3067;

    /* renamed from: ǃ */
    final float[][] f3068 = new float[2];

    /* renamed from: ɩ */
    final long[] f3069 = new long[2];

    /* renamed from: Ι */
    private final int f3070;

    /* renamed from: ι */
    double f3071;

    /* renamed from: І */
    private final int f3072;

    /* renamed from: і */
    private final String f3073;

    /* renamed from: Ӏ */
    private final Executor f3074;

    /* JADX WARN: Type inference failed for: r1v1, types: [float[], float[][]] */
    public C0680r(Sensor sensor, Executor executor) {
        this.f3074 = executor;
        int type = sensor.getType();
        this.f3070 = type;
        String name = sensor.getName();
        String str = name == null ? "" : name;
        this.f3073 = str;
        String vendor = sensor.getVendor();
        vendor = vendor == null ? "" : vendor;
        this.f3067 = vendor;
        this.f3072 = ((((type + 31) * 31) + str.hashCode()) * 31) + vendor.hashCode();
    }

    /* renamed from: ǃ */
    private boolean m4031() {
        return this.f3068[0] != null;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [double] */
    /* renamed from: ɩ */
    static double m4029(float[] fArr, float[] fArr2) {
        int min = Math.min(fArr.length, fArr2.length);
        char c = 0;
        for (int i = 0; i < min; i++) {
            c += StrictMath.pow(fArr[i] - fArr2[i], 2.0d);
        }
        return Math.sqrt(c);
    }

    /* renamed from: Ι */
    private static List<Float> m4026(float[] fArr) {
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f : fArr) {
            arrayList.add(Float.valueOf(f));
        }
        return arrayList;
    }

    /* renamed from: Ι */
    public static boolean m4027(Sensor sensor) {
        return (sensor == null || sensor.getName() == null || sensor.getVendor() == null) ? false : true;
    }

    /* renamed from: ι */
    private Map<String, Object> m4025() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(7);
        concurrentHashMap.put("sT", Integer.valueOf(this.f3070));
        concurrentHashMap.put("sN", this.f3073);
        concurrentHashMap.put("sV", this.f3067);
        float[] fArr = this.f3068[0];
        if (fArr != null) {
            concurrentHashMap.put("sVS", m4026(fArr));
        }
        float[] fArr2 = this.f3068[1];
        if (fArr2 != null) {
            concurrentHashMap.put("sVE", m4026(fArr2));
        }
        return concurrentHashMap;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0680r)) {
            return false;
        }
        C0680r c0680r = (C0680r) obj;
        return m4028(c0680r.f3070, c0680r.f3073, c0680r.f3067);
    }

    public final int hashCode() {
        return this.f3072;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(final SensorEvent sensorEvent) {
        this.f3074.execute(new Runnable() { // from class: com.appsflyer.internal.r.2
            @Override // java.lang.Runnable
            public final void run() {
                SensorEvent sensorEvent2 = sensorEvent;
                if (sensorEvent2 == null || sensorEvent2.values == null || !C0680r.m4027(sensorEvent2.sensor)) {
                    return;
                }
                C0680r c0680r = C0680r.this;
                int type = sensorEvent.sensor.getType();
                String name = sensorEvent.sensor.getName();
                String vendor = sensorEvent.sensor.getVendor();
                SensorEvent sensorEvent3 = sensorEvent;
                long j = sensorEvent3.timestamp;
                float[] fArr = sensorEvent3.values;
                if (!c0680r.m4028(type, name, vendor)) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                float[][] fArr2 = c0680r.f3068;
                float[] fArr3 = fArr2[0];
                if (fArr3 == null) {
                    fArr2[0] = Arrays.copyOf(fArr, fArr.length);
                    c0680r.f3069[0] = currentTimeMillis;
                    return;
                }
                float[] fArr4 = fArr2[1];
                if (fArr4 == null) {
                    float[] copyOf = Arrays.copyOf(fArr, fArr.length);
                    c0680r.f3068[1] = copyOf;
                    c0680r.f3069[1] = currentTimeMillis;
                    c0680r.f3071 = C0680r.m4029(fArr3, copyOf);
                } else if (50000000 > j - c0680r.f3066) {
                } else {
                    c0680r.f3066 = j;
                    if (Arrays.equals(fArr4, fArr)) {
                        c0680r.f3069[1] = currentTimeMillis;
                        return;
                    }
                    double m4029 = C0680r.m4029(fArr3, fArr);
                    if (m4029 <= c0680r.f3071) {
                        return;
                    }
                    c0680r.f3068[1] = Arrays.copyOf(fArr, fArr.length);
                    c0680r.f3069[1] = currentTimeMillis;
                    c0680r.f3071 = m4029;
                }
            }
        });
    }

    /* renamed from: ǃ */
    public final void m4030(Map<C0680r, Map<String, Object>> map, boolean z) {
        if (!m4031()) {
            if (map.containsKey(this)) {
                return;
            }
            map.put(this, m4025());
            return;
        }
        map.put(this, m4025());
        if (!z) {
            return;
        }
        int length = this.f3068.length;
        for (int i = 0; i < length; i++) {
            this.f3068[i] = null;
        }
        int length2 = this.f3069.length;
        for (int i2 = 0; i2 < length2; i2++) {
            this.f3069[i2] = 0;
        }
        this.f3071 = 0.0d;
        this.f3066 = 0L;
    }

    /* renamed from: Ι */
    final boolean m4028(int i, String str, String str2) {
        return this.f3070 == i && this.f3073.equals(str) && this.f3067.equals(str2);
    }
}
