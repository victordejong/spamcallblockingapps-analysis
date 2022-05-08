package android.support.p001v4.database.sqlite;

import android.database.sqlite.SQLiteCursor;
import android.os.Build;
import android.support.annotation.NonNull;
/* renamed from: android.support.v4.database.sqlite.SQLiteCursorCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/database/sqlite/SQLiteCursorCompat.class */
public final class SQLiteCursorCompat {
    private SQLiteCursorCompat() {
    }

    public static void setFillWindowForwardOnly(@NonNull SQLiteCursor sQLiteCursor, boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            sQLiteCursor.setFillWindowForwardOnly(z);
        }
    }
}
