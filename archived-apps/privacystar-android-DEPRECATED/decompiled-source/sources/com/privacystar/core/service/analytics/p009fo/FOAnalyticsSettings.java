package com.privacystar.core.service.analytics.p009fo;

import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.service.PreferenceUtil;
import java.util.ArrayList;
import java.util.List;
import timber.log.Timber;
/* renamed from: com.privacystar.core.service.analytics.fo.FOAnalyticsSettings */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/fo/FOAnalyticsSettings.class */
public class FOAnalyticsSettings {
    private static int[] bitmapInternal;

    public static void commit() {
    }

    private static void commit(int[] iArr) {
        bitmapInternal = iArr;
        commit();
    }

    public static void disable(int i) {
        int i2 = i / 32;
        bitmapInternal[i2] = ((1 << (i % 32)) ^ (-1)) & bitmapInternal[i2];
    }

    public static void disableAll(int[] iArr) {
        for (int i : iArr) {
            disable(i);
        }
    }

    public static List<Integer> dumpEnabledList(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < 32; i2++) {
                int i3 = (i * 32) + i2;
                if (isEnabled(iArr, i3)) {
                    arrayList.add(Integer.valueOf(i3));
                }
            }
        }
        return arrayList;
    }

    public static void dumpSettings() {
        dumpSettings(getBitmap());
    }

    public static void dumpSettings(int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < 32; i2++) {
                int i3 = (i * 32) + i2;
                Timber.m37d("%i is %sabled.", Integer.valueOf(i3), isEnabled(iArr, i3) ? "en" : "dis");
            }
        }
    }

    public static List<Integer> dumpSettingsIntoArray() {
        return dumpSettingsIntoArray(getBitmap());
    }

    public static List<Integer> dumpSettingsIntoArray(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < 32; i2++) {
                int i3 = (i * 32) + i2;
                if (isEnabled(i3, iArr)) {
                    arrayList.add(Integer.valueOf(i3));
                }
            }
        }
        return arrayList;
    }

    public static void enable(int i) {
        int i2 = i / 32;
        bitmapInternal[i2] = (1 << (i % 32)) | bitmapInternal[i2];
    }

    public static void enableAll(int[] iArr) {
        for (int i : iArr) {
            enable(i);
        }
    }

    public static void enableAllEvents() {
        int[] bitmap = getBitmap();
        for (int i = 0; i < bitmap.length; i++) {
            bitmap[i] = -1;
        }
        commit(bitmap);
    }

    public static void enableOnly(int[] iArr) {
        boolean isEnabled = isEnabled(0);
        bitmapInternal = new int[getBitmap().length];
        for (int i : iArr) {
            enable(i);
        }
        if (isEnabled) {
            enable(0);
        }
        commit();
    }

    static int[] getBitmap() {
        int[] iArr;
        synchronized (FOAnalyticsSettings.class) {
            try {
                if (bitmapInternal == null) {
                    bitmapInternal = PreferenceUtil.getPSAnalyticsBitmap();
                    if (bitmapInternal.length == 0) {
                        bitmapInternal = PSApplication.context().getResources().getIntArray(C1566R.array.psAnalyticsBitmap);
                    }
                    commit();
                }
                iArr = bitmapInternal;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iArr;
    }

    public static boolean isEnabled(int i) {
        return isEnabled(getBitmap(), i);
    }

    public static boolean isEnabled(int i, int[] iArr) {
        int i2;
        boolean z = false;
        if ((iArr[0] & 1) != 1 || (i2 = i / 32) >= iArr.length) {
            return false;
        }
        if (((1 << (i % 32)) & iArr[i2]) != 0) {
            z = true;
        }
        return z;
    }

    public static boolean isEnabled(int[] iArr, int i) {
        int i2;
        boolean z = false;
        if ((iArr[0] & 1) != 1 || (i2 = i / 32) >= iArr.length) {
            return false;
        }
        if ((iArr[i2] & (1 << (i % 32))) != 0) {
            z = true;
        }
        return z;
    }

    public static boolean isEnabledRaw(int i) {
        int[] bitmap = getBitmap();
        int i2 = i / 32;
        if (i2 >= bitmap.length) {
            return false;
        }
        boolean z = true;
        if (((1 << (i % 32)) & bitmap[i2]) == 0) {
            z = false;
        }
        return z;
    }

    static void setBitmap(int[] iArr) {
        synchronized (FOAnalyticsSettings.class) {
            try {
                commit(iArr);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void updateBitmap(int... iArr) {
        int[] iArr2 = iArr.length > getBitmap().length ? new int[iArr.length] : new int[16];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        commit(iArr2);
    }
}
