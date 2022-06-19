package com.appsflyer;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import com.appsflyer.internal.C0680r;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFSensorManager.class */
public final class AFSensorManager {
    public static volatile AFSensorManager sInstance;

    /* renamed from: Ɩ */
    private static final BitSet f2867;

    /* renamed from: ӏ */
    private static final Handler f2868 = new Handler(Looper.getMainLooper());

    /* renamed from: ı */
    boolean f2869;

    /* renamed from: ǃ */
    final Handler f2870;

    /* renamed from: ȷ */
    private boolean f2871;

    /* renamed from: ɨ */
    private final SensorManager f2872;

    /* renamed from: ɪ */
    private final Map<C0680r, C0680r> f2874;

    /* renamed from: ɾ */
    private final Map<C0680r, Map<String, Object>> f2876;

    /* renamed from: ɩ */
    final Object f2873 = new Object();

    /* renamed from: Ι */
    final Runnable f2878 = new Runnable() { // from class: com.appsflyer.AFSensorManager.5
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f2873) {
                final AFSensorManager aFSensorManager = AFSensorManager.this;
                aFSensorManager.f2881.execute(new Runnable() { // from class: com.appsflyer.AFSensorManager.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            for (Sensor sensor : aFSensorManager.f2872.getSensorList(-1)) {
                                if (AFSensorManager.m4124(sensor.getType())) {
                                    C0680r c0680r = new C0680r(sensor, aFSensorManager.f2881);
                                    if (!aFSensorManager.f2874.containsKey(c0680r)) {
                                        aFSensorManager.f2874.put(c0680r, c0680r);
                                    }
                                    aFSensorManager.f2872.registerListener((SensorEventListener) aFSensorManager.f2874.get(c0680r), sensor, 0);
                                }
                            }
                        } catch (Throwable th) {
                        }
                        aFSensorManager.f2871 = true;
                    }
                });
                AFSensorManager aFSensorManager2 = AFSensorManager.this;
                aFSensorManager2.f2870.postDelayed(aFSensorManager2.f2877, 100L);
                AFSensorManager.this.f2869 = true;
            }
        }
    };

    /* renamed from: ι */
    final Runnable f2879 = new Runnable() { // from class: com.appsflyer.AFSensorManager.1
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f2873) {
                AFSensorManager aFSensorManager = AFSensorManager.this;
                aFSensorManager.f2881.execute(new RunnableC06408());
            }
        }
    };

    /* renamed from: І */
    final Runnable f2880 = new Runnable() { // from class: com.appsflyer.AFSensorManager.3
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f2873) {
                AFSensorManager aFSensorManager = AFSensorManager.this;
                if (aFSensorManager.f2869) {
                    aFSensorManager.f2870.removeCallbacks(aFSensorManager.f2878);
                    AFSensorManager aFSensorManager2 = AFSensorManager.this;
                    aFSensorManager2.f2870.removeCallbacks(aFSensorManager2.f2879);
                    AFSensorManager aFSensorManager3 = AFSensorManager.this;
                    aFSensorManager3.f2881.execute(new RunnableC06408());
                    AFSensorManager.this.f2869 = false;
                }
            }
        }
    };

    /* renamed from: ɹ */
    int f2875 = 1;

    /* renamed from: Ӏ */
    long f2882 = 0;

    /* renamed from: ɿ */
    private final Runnable f2877 = new Runnable() { // from class: com.appsflyer.AFSensorManager.2
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f2873) {
                if (AFSensorManager.this.f2875 == 0) {
                    AFSensorManager.this.f2875 = 1;
                }
                AFSensorManager aFSensorManager = AFSensorManager.this;
                aFSensorManager.f2870.postDelayed(aFSensorManager.f2879, aFSensorManager.f2875 * 500);
            }
        }
    };

    /* renamed from: і */
    final Executor f2881 = Executors.newSingleThreadExecutor();

    /* renamed from: com.appsflyer.AFSensorManager$8 */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AFSensorManager$8.class */
    final class RunnableC06408 implements Runnable {
        RunnableC06408() {
            AFSensorManager.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (!AFSensorManager.this.f2874.isEmpty()) {
                    for (C0680r c0680r : AFSensorManager.this.f2874.values()) {
                        AFSensorManager.this.f2872.unregisterListener(c0680r);
                        c0680r.m4030(AFSensorManager.this.f2876, true);
                    }
                }
            } catch (Throwable th) {
            }
            AFSensorManager.this.f2875 = 0;
            AFSensorManager.this.f2871 = false;
        }
    }

    static {
        BitSet bitSet = new BitSet(6);
        f2867 = bitSet;
        bitSet.set(1);
        bitSet.set(2);
        bitSet.set(4);
    }

    private AFSensorManager(SensorManager sensorManager, Handler handler) {
        BitSet bitSet = f2867;
        this.f2874 = new HashMap(bitSet.size());
        this.f2876 = new ConcurrentHashMap(bitSet.size());
        this.f2872 = sensorManager;
        this.f2870 = handler;
    }

    /* renamed from: ı */
    static AFSensorManager m4133(Context context) {
        return sInstance != null ? sInstance : m4129((SensorManager) context.getApplicationContext().getSystemService("sensor"), f2868);
    }

    /* renamed from: ǃ */
    private static AFSensorManager m4129(SensorManager sensorManager, Handler handler) {
        if (sInstance == null) {
            synchronized (AFSensorManager.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new AFSensorManager(sensorManager, handler);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return sInstance;
    }

    /* renamed from: Ι */
    public static boolean m4124(int i) {
        return i >= 0 && f2867.get(i);
    }

    /* renamed from: Ι */
    final List<Map<String, Object>> m4125() {
        synchronized (this.f2873) {
            if (!this.f2874.isEmpty() && this.f2871) {
                for (C0680r c0680r : this.f2874.values()) {
                    c0680r.m4030(this.f2876, false);
                }
            }
            if (this.f2876.isEmpty()) {
                return new CopyOnWriteArrayList(Collections.emptyList());
            }
            return new CopyOnWriteArrayList(this.f2876.values());
        }
    }

    /* renamed from: ι */
    final List<Map<String, Object>> m4122() {
        for (C0680r c0680r : this.f2874.values()) {
            c0680r.m4030(this.f2876, true);
        }
        Map<C0680r, Map<String, Object>> map = this.f2876;
        return (map == null || map.isEmpty()) ? new CopyOnWriteArrayList(Collections.emptyList()) : new CopyOnWriteArrayList(this.f2876.values());
    }
}
