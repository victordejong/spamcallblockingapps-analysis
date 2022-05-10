package p131c.p431l.p432a.p468n;

import android.content.SharedPreferences;
import com.netqin.p525cm.main.p529ui.NqApplication;
import java.util.Set;
/* renamed from: c.l.a.n.m */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/m.class */
public class C6854m {

    /* renamed from: a */
    public static final String f21046a = NqApplication.m3303b().getPackageName();

    /* renamed from: a */
    public static SharedPreferences m19559a(String str) {
        return NqApplication.m3303b().getSharedPreferences(str, 0);
    }

    /* renamed from: a */
    public static <T> T m19560a(SharedPreferences sharedPreferences, String str, T t) {
        return t instanceof String ? (T) sharedPreferences.getString(str, (String) t) : t instanceof Integer ? (T) Integer.valueOf(sharedPreferences.getInt(str, ((Integer) t).intValue())) : t instanceof Boolean ? (T) Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) t).booleanValue())) : t instanceof Float ? (T) Float.valueOf(sharedPreferences.getFloat(str, ((Float) t).floatValue())) : t instanceof Long ? (T) Long.valueOf(sharedPreferences.getLong(str, ((Long) t).longValue())) : t instanceof Set ? (T) sharedPreferences.getStringSet(str, (Set) t) : null;
    }

    /* renamed from: a */
    public static <T> T m19558a(String str, T t) {
        return (T) m19560a(m19559a(f21046a), str, t);
    }

    /* renamed from: b */
    public static void m19557b(SharedPreferences sharedPreferences, String str, Object obj) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        if (obj instanceof String) {
            edit.putString(str, (String) obj);
        } else if (obj instanceof Integer) {
            edit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Boolean) {
            edit.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Float) {
            edit.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof Long) {
            edit.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof Set) {
            edit.putStringSet(str, (Set) obj);
        } else {
            throw new RuntimeException("未知类型,无法存储");
        }
        edit.apply();
    }

    /* renamed from: b */
    public static void m19556b(String str, Object obj) {
        m19557b(m19559a(f21046a), str, obj);
    }
}
