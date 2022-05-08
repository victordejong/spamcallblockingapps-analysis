package androidx.core.database;

import android.database.Cursor;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n��\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u001a\u0017\u0010��\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\b\u001a\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\b¢\u0006\u0002\u0010\u0007\u001a\u001c\u0010\b\u001a\u0004\u0018\u00010\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\b¢\u0006\u0002\u0010\n\u001a\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\b¢\u0006\u0002\u0010\f\u001a\u001c\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\b¢\u0006\u0002\u0010\u000f\u001a\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\b¢\u0006\u0002\u0010\u0012\u001a\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u0014*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\b¨\u0006\u0015"}, m815d2 = {"getBlobOrNull", "", "Landroid/database/Cursor;", "index", "", "getDoubleOrNull", "", "(Landroid/database/Cursor;I)Ljava/lang/Double;", "getFloatOrNull", "", "(Landroid/database/Cursor;I)Ljava/lang/Float;", "getIntOrNull", "(Landroid/database/Cursor;I)Ljava/lang/Integer;", "getLongOrNull", "", "(Landroid/database/Cursor;I)Ljava/lang/Long;", "getShortOrNull", "", "(Landroid/database/Cursor;I)Ljava/lang/Short;", "getStringOrNull", "", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/database/CursorKt.class */
public final class CursorKt {
    public static final byte[] getBlobOrNull(Cursor cursor, int i) {
        C15149k.m377b(cursor, "$this$getBlobOrNull");
        return cursor.isNull(i) ? null : cursor.getBlob(i);
    }

    public static final Double getDoubleOrNull(Cursor cursor, int i) {
        C15149k.m377b(cursor, "$this$getDoubleOrNull");
        return cursor.isNull(i) ? null : Double.valueOf(cursor.getDouble(i));
    }

    public static final Float getFloatOrNull(Cursor cursor, int i) {
        C15149k.m377b(cursor, "$this$getFloatOrNull");
        return cursor.isNull(i) ? null : Float.valueOf(cursor.getFloat(i));
    }

    public static final Integer getIntOrNull(Cursor cursor, int i) {
        C15149k.m377b(cursor, "$this$getIntOrNull");
        return cursor.isNull(i) ? null : Integer.valueOf(cursor.getInt(i));
    }

    public static final Long getLongOrNull(Cursor cursor, int i) {
        C15149k.m377b(cursor, "$this$getLongOrNull");
        return cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i));
    }

    public static final Short getShortOrNull(Cursor cursor, int i) {
        C15149k.m377b(cursor, "$this$getShortOrNull");
        return cursor.isNull(i) ? null : Short.valueOf(cursor.getShort(i));
    }

    public static final String getStringOrNull(Cursor cursor, int i) {
        C15149k.m377b(cursor, "$this$getStringOrNull");
        return cursor.isNull(i) ? null : cursor.getString(i);
    }
}
