package androidx.core.content.p004pm;

import android.content.pm.PackageInfo;
import android.os.Build;
import androidx.annotation.NonNull;
/* renamed from: androidx.core.content.pm.PackageInfoCompat */
/* loaded from: classes-dex2jar.jar:androidx/core/content/pm/PackageInfoCompat.class */
public final class PackageInfoCompat {
    public static long getLongVersionCode(@NonNull PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
    }
}
