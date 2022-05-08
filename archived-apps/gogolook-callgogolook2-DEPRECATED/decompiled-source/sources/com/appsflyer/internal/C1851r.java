package com.appsflyer.internal;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.appsflyer.internal.r */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/r.class */
public final class C1851r implements SensorEventListener {
    @NonNull

    /* renamed from: ı */
    public final String f1888;

    /* renamed from: Ɩ */
    public long f1889;

    /* renamed from: ǃ */
    public final int f1890;

    /* renamed from: ɩ */
    public final float[][] f1891 = new float[2];

    /* renamed from: Ι */
    public final long[] f1892 = new long[2];
    @NonNull

    /* renamed from: ι */
    public final String f1893;

    /* renamed from: І */
    public final int f1894;

    /* renamed from: і */
    public double f1895;

    /* JADX WARN: Type inference failed for: r1v1, types: [float[], float[][]] */
    public C1851r(int i, @Nullable String str, @Nullable String str2) {
        this.f1890 = i;
        this.f1888 = str == null ? "" : str;
        this.f1893 = str2 == null ? "" : str2;
        this.f1894 = ((((i + 31) * 31) + this.f1888.hashCode()) * 31) + this.f1893.hashCode();
    }

    /* renamed from: ı */
    public static double m36122(@NonNull float[] fArr, @NonNull float[] fArr2) {
        int min = Math.min(fArr.length, fArr2.length);
        double d = 0.0d;
        for (int i = 0; i < min; i++) {
            d += StrictMath.pow(fArr[i] - fArr2[i], 2.0d);
        }
        return Math.sqrt(d);
    }

    /* renamed from: ǃ */
    private boolean m36121() {
        return this.f1891[0] != null;
    }

    @NonNull
    /* renamed from: ɩ */
    public static List<Float> m36120(@NonNull float[] fArr) {
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f : fArr) {
            arrayList.add(Float.valueOf(f));
        }
        return arrayList;
    }

    /* renamed from: Ι */
    private boolean m36119(int i, @NonNull String str, @NonNull String str2) {
        return this.f1890 == i && this.f1888.equals(str) && this.f1893.equals(str2);
    }

    /* renamed from: Ι */
    public static boolean m36118(Sensor sensor) {
        return (sensor == null || sensor.getName() == null || sensor.getVendor() == null) ? false : true;
    }

    @NonNull
    /* renamed from: ι */
    private Map<String, Object> m36117() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(7);
        concurrentHashMap.put("sT", Integer.valueOf(this.f1890));
        concurrentHashMap.put("sN", this.f1888);
        concurrentHashMap.put("sV", this.f1893);
        float[] fArr = this.f1891[0];
        if (fArr != null) {
            concurrentHashMap.put("sVS", m36120(fArr));
        }
        float[] fArr2 = this.f1891[1];
        if (fArr2 != null) {
            concurrentHashMap.put("sVE", m36120(fArr2));
        }
        return concurrentHashMap;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1851r)) {
            return false;
        }
        C1851r rVar = (C1851r) obj;
        return m36119(rVar.f1890, rVar.f1888, rVar.f1893);
    }

    public final int hashCode() {
        return this.f1894;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent != null && sensorEvent.values != null && m36118(sensorEvent.sensor)) {
            int type = sensorEvent.sensor.getType();
            String name = sensorEvent.sensor.getName();
            String vendor = sensorEvent.sensor.getVendor();
            long j = sensorEvent.timestamp;
            float[] fArr = sensorEvent.values;
            if (m36119(type, name, vendor)) {
                long currentTimeMillis = System.currentTimeMillis();
                float[][] fArr2 = this.f1891;
                float[] fArr3 = fArr2[0];
                if (fArr3 == null) {
                    fArr2[0] = Arrays.copyOf(fArr, fArr.length);
                    this.f1892[0] = currentTimeMillis;
                    return;
                }
                float[] fArr4 = fArr2[1];
                if (fArr4 == null) {
                    float[] copyOf = Arrays.copyOf(fArr, fArr.length);
                    this.f1891[1] = copyOf;
                    this.f1892[1] = currentTimeMillis;
                    this.f1895 = m36122(fArr3, copyOf);
                } else if (50000000 <= j - this.f1889) {
                    this.f1889 = j;
                    if (Arrays.equals(fArr4, fArr)) {
                        this.f1892[1] = currentTimeMillis;
                        return;
                    }
                    double d = m36122(fArr3, fArr);
                    if (d > this.f1895) {
                        this.f1891[1] = Arrays.copyOf(fArr, fArr.length);
                        this.f1892[1] = currentTimeMillis;
                        this.f1895 = d;
                    }
                }
            }
        }
    }

    /* renamed from: ı */
    public final void m36123(@NonNull Map<C1851r, Map<String, Object>> map, boolean z) {
        if (m36121()) {
            map.put(this, m36117());
            if (z) {
                int length = this.f1891.length;
                for (int i = 0; i < length; i++) {
                    this.f1891[i] = null;
                }
                int length2 = this.f1892.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    this.f1892[i2] = 0;
                }
                this.f1895 = 0.0d;
                this.f1889 = 0L;
            }
        } else if (!map.containsKey(this)) {
            map.put(this, m36117());
        }
    }
}
