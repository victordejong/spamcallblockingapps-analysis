package com.google.android.gms.gass;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.gass.internal.Program;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/AdShieldVm.class */
public class AdShieldVm implements AdShieldHandle {

    /* renamed from: a */
    private Program f7065a;

    /* renamed from: b */
    private final Context f7066b;

    /* renamed from: c */
    private final AdShield2Logger f7067c;

    /* renamed from: d */
    private Object f7068d;

    public AdShieldVm(Context context, AdShield2Logger adShield2Logger) {
        this.f7066b = context;
        this.f7067c = adShield2Logger;
    }

    /* renamed from: a */
    private final Object m5528a(Class<?> cls, Program program) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            return cls.getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.f7066b, "msa-r", program.getBytecodeFileContents(), null, new Bundle(), 2);
        } catch (IllegalAccessException e) {
            m5530a(AdShield2Logger.EVENTID_VM_CREATE_EXCEPTION, currentTimeMillis, e);
            return null;
        } catch (InstantiationException e2) {
            m5530a(AdShield2Logger.EVENTID_VM_CREATE_EXCEPTION, currentTimeMillis, e2);
            return null;
        } catch (NoSuchMethodException e3) {
            m5530a(AdShield2Logger.EVENTID_VM_CREATE_EXCEPTION, currentTimeMillis, e3);
            return null;
        } catch (InvocationTargetException e4) {
            m5530a(AdShield2Logger.EVENTID_VM_CREATE_EXCEPTION, currentTimeMillis, e4);
            return null;
        }
    }

    /* renamed from: a */
    private static String m5525a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 11);
    }

    /* renamed from: a */
    private final void m5530a(int i, long j, Exception exc) {
        m5529a(i, exc, j);
    }

    /* renamed from: a */
    private final void m5529a(int i, Exception exc, long j) {
        this.f7067c.logException(i, System.currentTimeMillis() - j, exc);
    }

    /* renamed from: a */
    private final void m5527a(Object obj) {
        synchronized (this) {
            if (this.f7068d != null) {
                close();
            }
            this.f7068d = obj;
        }
    }

    /* renamed from: a */
    private final byte[] m5526a(Map<String, Object> map) {
        long currentTimeMillis = System.currentTimeMillis();
        Object obj = this.f7068d;
        if (obj == null) {
            return null;
        }
        try {
            return (byte[]) obj.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.f7068d, null, map);
        } catch (IllegalAccessException e) {
            m5530a(AdShield2Logger.EVENTID_VM_SNAP_EXCEPTION, currentTimeMillis, e);
            return null;
        } catch (NoSuchMethodException e2) {
            m5530a(AdShield2Logger.EVENTID_VM_SNAP_EXCEPTION, currentTimeMillis, e2);
            return null;
        } catch (InvocationTargetException e3) {
            m5530a(AdShield2Logger.EVENTID_VM_SNAP_EXCEPTION, currentTimeMillis, e3);
            return null;
        }
    }

    /* renamed from: b */
    private final int m5524b(Object obj) {
        int intValue;
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                intValue = ((Integer) obj.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(obj, new Object[0])).intValue();
            } catch (Exception e) {
                m5530a(AdShield2Logger.EVENTID_VM_LAST_CRASH_EXCEPTION, currentTimeMillis, e);
                return 0;
            }
        }
        return intValue;
    }

    @Override // com.google.android.gms.gass.AdShieldHandle
    public void close() {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                this.f7068d.getClass().getDeclaredMethod("close", new Class[0]).invoke(this.f7068d, new Object[0]);
                m5529a(AdShield2Logger.EVENTID_LATENCY_CLOSE, (Exception) null, currentTimeMillis);
            } catch (Exception e) {
                m5530a(AdShield2Logger.EVENTID_VM_CLOSE_EXCEPTION, currentTimeMillis, e);
            }
        }
    }

    @Override // com.google.android.gms.gass.AdShieldHandle
    public String getClickSignals(Context context, String str, String str2, View view, Activity activity) {
        String a;
        synchronized (this) {
            HashMap hashMap = new HashMap();
            hashMap.put("ctx", context);
            hashMap.put("clickString", str2);
            hashMap.put("aid", str);
            hashMap.put("view", view);
            hashMap.put("act", activity);
            a = m5525a(m5526a((Map<String, Object>) hashMap));
        }
        return a;
    }

    @Override // com.google.android.gms.gass.AdShieldHandle
    public String getImpressionSignals(Context context, String str, View view, Activity activity) {
        String a;
        synchronized (this) {
            HashMap hashMap = new HashMap();
            hashMap.put("ctx", context);
            hashMap.put("aid", str);
            hashMap.put("view", view);
            hashMap.put("act", activity);
            a = m5525a(m5526a((Map<String, Object>) hashMap));
        }
        return a;
    }

    @Override // com.google.android.gms.gass.AdShieldHandle
    public int getLastCrashInformation() {
        Object obj = this.f7068d;
        if (obj != null) {
            return m5524b(obj);
        }
        return 0;
    }

    public Program getProgram() {
        return this.f7065a;
    }

    @Override // com.google.android.gms.gass.AdShieldHandle
    public String getQuerySignals(Context context, String str) {
        String a;
        synchronized (this) {
            HashMap hashMap = new HashMap();
            hashMap.put("ctx", context);
            hashMap.put("aid", str);
            a = m5525a(m5526a((Map<String, Object>) hashMap));
        }
        return a;
    }

    public AdShieldError initializedVmAndProgram(Program program) {
        long currentTimeMillis = System.currentTimeMillis();
        Class<?> loadVmClass = loadVmClass(program);
        if (loadVmClass == null) {
            return new AdShieldError(2, "lc");
        }
        Object a = m5528a(loadVmClass, program);
        if (a == null) {
            return new AdShieldError(3, "it");
        }
        if (runVmInit(a)) {
            int b = m5524b(a);
            if (b != 0) {
                this.f7067c.logSignals(AdShield2Logger.EVENTID_ERROR_LAST_CRASH, System.currentTimeMillis() - currentTimeMillis, Integer.toString(b), null);
                StringBuilder sb = new StringBuilder(13);
                sb.append("ci");
                sb.append(b);
                return new AdShieldError(5, sb.toString());
            }
            m5527a(a);
            this.f7065a = program;
            m5529a(AdShield2Logger.EVENTID_LATENCY_INIT_VM, (Exception) null, currentTimeMillis);
            return null;
        }
        m5529a(AdShield2Logger.EVENTID_ERROR_RUN_VM_INIT, (Exception) null, currentTimeMillis);
        return new AdShieldError(4, "ri");
    }

    public Class<?> loadVmClass(Program program) {
        File optFile = program.getOptFile();
        File vmFile = program.getVmFile();
        long currentTimeMillis = System.currentTimeMillis();
        try {
            return new DexClassLoader(vmFile.getAbsolutePath(), optFile.getAbsolutePath(), null, this.f7066b.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
        } catch (ClassNotFoundException e) {
            m5530a(AdShield2Logger.EVENTID_LOAD_CLASS_EXCEPTION, currentTimeMillis, e);
            return null;
        }
    }

    @Override // com.google.android.gms.gass.AdShieldHandle
    public void reportTouchEvent(String str, MotionEvent motionEvent) {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("aid", str);
                hashMap.put("evt", motionEvent);
                this.f7068d.getClass().getDeclaredMethod("he", Map.class).invoke(this.f7068d, hashMap);
                m5529a(AdShield2Logger.EVENTID_LATENCY_REPORT_TOUCH, (Exception) null, currentTimeMillis);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                m5530a(AdShield2Logger.EVENTID_VM_TOUCH_EXCEPTION, currentTimeMillis, e);
            }
        }
    }

    public boolean runVmInit(Object obj) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            return ((Boolean) obj.getClass().getDeclaredMethod("init", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            m5530a(AdShield2Logger.EVENTID_VM_INIT_EXCEPTION, currentTimeMillis, e);
            return false;
        }
    }
}
