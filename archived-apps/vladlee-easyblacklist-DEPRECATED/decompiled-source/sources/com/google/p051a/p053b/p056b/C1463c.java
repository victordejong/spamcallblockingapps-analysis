package com.google.p051a.p053b.p056b;

import com.google.p051a.C1518u;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
/* renamed from: com.google.a.b.b.c */
/* loaded from: classes-dex2jar.jar:com/google/a/b/b/c.class */
final class C1463c extends AbstractC1462b {

    /* renamed from: a */
    private static Class f5631a;

    /* renamed from: b */
    private final Object f5632b = m6285b();

    /* renamed from: c */
    private final Field f5633c = m6283c();

    /* renamed from: b */
    private static Object m6285b() {
        Object obj = null;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f5631a = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            obj = declaredField.get(null);
        } catch (Exception e) {
        }
        return obj;
    }

    /* renamed from: b */
    private boolean m6284b(AccessibleObject accessibleObject) {
        if (this.f5632b == null || this.f5633c == null) {
            return false;
        }
        try {
            f5631a.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f5632b, accessibleObject, Long.valueOf(((Long) f5631a.getMethod("objectFieldOffset", Field.class).invoke(this.f5632b, this.f5633c)).longValue()), Boolean.TRUE);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: c */
    private static Field m6283c() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException e) {
            return null;
        }
    }

    @Override // com.google.p051a.p053b.p056b.AbstractC1462b
    /* renamed from: a */
    public final void mo6286a(AccessibleObject accessibleObject) {
        if (!m6284b(accessibleObject)) {
            try {
                accessibleObject.setAccessible(true);
            } catch (SecurityException e) {
                throw new C1518u("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e);
            }
        }
    }
}
