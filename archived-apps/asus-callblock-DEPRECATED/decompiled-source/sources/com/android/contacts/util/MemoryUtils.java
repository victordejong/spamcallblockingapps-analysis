package com.android.contacts.util;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.android.internal.util.MemInfoReader;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/MemoryUtils.class */
public final class MemoryUtils {
    private static boolean DEBUG = false;
    private static final String TAG = MemoryUtils.class.getSimpleName();
    private static long sTotalMemorySize = -1;

    private MemoryUtils() {
    }

    public static void fixInputMethodManagerLeak(Context context) {
        InputMethodManager inputMethodManager;
        if (!(context == null || (inputMethodManager = (InputMethodManager) context.getSystemService("input_method")) == null)) {
            for (int i = 0; i < 3; i++) {
                try {
                    Field declaredField = inputMethodManager.getClass().getDeclaredField(new String[]{"mCurRootView", "mServedView", "mNextServedView"}[i]);
                    if (!declaredField.isAccessible()) {
                        declaredField.setAccessible(true);
                    }
                    Object obj = declaredField.get(inputMethodManager);
                    if (obj != null && (obj instanceof View)) {
                        View view = (View) obj;
                        if (view.getContext() == context) {
                            declaredField.set(inputMethodManager, null);
                        } else if (DEBUG) {
                            Log.d(TAG, "fixInputMethodManagerLeak break, context is not suitable, get_context=" + view.getContext() + " dest_context=" + context);
                            return;
                        } else {
                            return;
                        }
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public static long getTotalMemorySize() {
        if (sTotalMemorySize < 0) {
            MemInfoReader memInfoReader = new MemInfoReader();
            memInfoReader.readMemInfo();
            sTotalMemorySize = memInfoReader.getTotalSize();
        }
        return sTotalMemorySize;
    }
}
