package net.sqlcipher;

import android.database.CrossProcessCursor;
import android.database.CursorWindow;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/CrossProcessCursorWrapper.class */
public class CrossProcessCursorWrapper extends CursorWrapper implements CrossProcessCursor {
    public CrossProcessCursorWrapper(Cursor cursor) {
        super(cursor);
    }

    @Override // android.database.CrossProcessCursor
    public void fillWindow(int i, CursorWindow cursorWindow) {
        DatabaseUtils.cursorFillWindow(this, i, cursorWindow);
    }

    @Override // android.database.CrossProcessCursor
    public CursorWindow getWindow() {
        return null;
    }

    @Override // android.database.CrossProcessCursor
    public boolean onMove(int i, int i2) {
        return true;
    }
}
