package com.google.android.gms.common.sqlite;

import android.database.AbstractWindowedCursor;
import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/sqlite/CursorWrapper.class */
public class CursorWrapper extends android.database.CursorWrapper implements CrossProcessCursor {

    /* renamed from: a */
    private AbstractWindowedCursor f6930a;

    public CursorWrapper(Cursor cursor) {
        super(cursor);
        for (int i = 0; i < 10 && (cursor instanceof android.database.CursorWrapper); i++) {
            cursor = ((android.database.CursorWrapper) cursor).getWrappedCursor();
        }
        if (!(cursor instanceof AbstractWindowedCursor)) {
            String valueOf = String.valueOf(cursor.getClass().getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown type: ".concat(valueOf) : new String("Unknown type: "));
        }
        this.f6930a = (AbstractWindowedCursor) cursor;
    }

    @Override // android.database.CrossProcessCursor
    public void fillWindow(int i, CursorWindow cursorWindow) {
        this.f6930a.fillWindow(i, cursorWindow);
    }

    @Override // android.database.CrossProcessCursor
    public CursorWindow getWindow() {
        return this.f6930a.getWindow();
    }

    @Override // android.database.CursorWrapper
    public /* synthetic */ Cursor getWrappedCursor() {
        return this.f6930a;
    }

    @Override // android.database.CrossProcessCursor
    public boolean onMove(int i, int i2) {
        return this.f6930a.onMove(i, i2);
    }

    public void setWindow(CursorWindow cursorWindow) {
        this.f6930a.setWindow(cursorWindow);
    }
}
