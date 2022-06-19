package androidx.room;

import android.content.Context;
import androidx.room.AbstractC0419j;
/* renamed from: androidx.room.i */
/* loaded from: classes-dex2jar.jar:androidx/room/i.class */
public class C0418i {
    /* renamed from: a */
    public static <T extends AbstractC0419j> AbstractC0419j.C0420a<T> m4816a(Context context, Class<T> cls, String str) {
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        }
        return new AbstractC0419j.C0420a<>(context, cls, str);
    }

    /* renamed from: b */
    public static <T, C> T m4815b(Class<C> cls, String str) {
        String str2;
        String name = cls.getPackage().getName();
        String canonicalName = cls.getCanonicalName();
        if (!name.isEmpty()) {
            canonicalName = canonicalName.substring(name.length() + 1);
        }
        String str3 = canonicalName.replace('.', '_') + str;
        try {
            if (name.isEmpty()) {
                str2 = str3;
            } else {
                str2 = name + "." + str3;
            }
            return (T) Class.forName(str2).newInstance();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("cannot find implementation for " + cls.getCanonicalName() + ". " + str3 + " does not exist");
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Cannot access the constructor" + cls.getCanonicalName());
        } catch (InstantiationException e3) {
            throw new RuntimeException("Failed to create an instance of " + cls.getCanonicalName());
        }
    }

    /* renamed from: c */
    public static <T extends AbstractC0419j> AbstractC0419j.C0420a<T> m4814c(Context context, Class<T> cls) {
        return new AbstractC0419j.C0420a<>(context, cls, null);
    }
}
