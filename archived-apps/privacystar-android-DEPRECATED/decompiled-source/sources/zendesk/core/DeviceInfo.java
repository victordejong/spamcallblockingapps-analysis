package zendesk.core;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import com.apptentive.android.sdk.ApptentiveNotifications;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.zendesk.logger.Logger;
import com.zendesk.util.LocaleUtil;
import com.zendesk.util.StringUtils;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/core/DeviceInfo.class */
class DeviceInfo {
    private static final int BAD_VALUE = -1;
    private static final long BYTES_MULTIPLIER = 1024;
    private static final int EXPECTED_TOKEN_COUNT = 3;
    private static final String LOG_TAG = "DeviceInfo";
    private static final String PLATFORM_ANDROID = "Android";
    private final ActivityManager activityManager;
    private final Context context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeviceInfo(Context context) {
        this.context = context;
        this.activityManager = (ActivityManager) context.getSystemService(ApptentiveNotifications.NOTIFICATION_KEY_ACTIVITY);
    }

    @TargetApi(18)
    private long getAvailableInternalDiskMemory() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        if (Build.VERSION.SDK_INT < 18) {
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        }
        return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
    }

    private int getBatteryLevel() {
        Intent registerReceiver = this.context.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int i = -1;
        if (registerReceiver != null) {
            i = registerReceiver.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1);
        }
        return i;
    }

    private String getBytesInMb(long j) {
        return String.valueOf(j / 1048576);
    }

    public static Locale getCurrentLocale(Context context) {
        return Build.VERSION.SDK_INT >= 24 ? context.getResources().getConfiguration().getLocales().get(0) : context.getResources().getConfiguration().locale;
    }

    private long getDiskSize() {
        return getTotalInternalDiskSize();
    }

    private String getManufacturer() {
        return "unknown".equals(Build.MANUFACTURER) || StringUtils.isEmpty(Build.MANUFACTURER) ? "" : Build.MANUFACTURER;
    }

    private String getOS() {
        return (!("unknown".equals(Build.VERSION.RELEASE) || StringUtils.isEmpty(Build.VERSION.RELEASE)) || !(Build.VERSION.SDK_INT == 0)) ? String.format(Locale.US, "%s/%s", Build.VERSION.RELEASE, Integer.valueOf(Build.VERSION.SDK_INT)) : "";
    }

    @TargetApi(18)
    private long getTotalInternalDiskSize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        if (Build.VERSION.SDK_INT < 18) {
            return statFs.getBlockCount() * statFs.getBlockSize();
        }
        return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
    }

    @TargetApi(16)
    private long getTotalMemory() {
        long j;
        if (Build.VERSION.SDK_INT >= 16) {
            Logger.m298d(LOG_TAG, "Using getTotalMemoryApi() to determine memory", new Object[0]);
            j = getTotalMemoryApi();
        } else {
            Logger.m298d(LOG_TAG, "Using getTotalMemoryCompat() to determine memory", new Object[0]);
            j = getTotalMemoryCompat();
        }
        return j;
    }

    private long getTotalMemoryApi() {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0120 A[Catch: NumberFormatException -> 0x013e, NoSuchElementException -> 0x0155, TRY_LEAVE, TryCatch #8 {NumberFormatException -> 0x013e, NoSuchElementException -> 0x0155, blocks: (B:39:0x0117, B:41:0x0120), top: B:67:0x0117 }] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long getTotalMemoryCompat() {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zendesk.core.DeviceInfo.getTotalMemoryCompat():long");
    }

    private long getUsedDiskSpace() {
        return getDiskSize() - getAvailableInternalDiskMemory();
    }

    private long getUsedMemory() {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.activityManager.getMemoryInfo(memoryInfo);
        return getTotalMemory() - memoryInfo.availMem;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> getInfo() {
        HashMap hashMap = new HashMap();
        String os = getOS();
        String model = getModel();
        long usedMemory = getUsedMemory();
        long totalMemory = getTotalMemory();
        long diskSize = getDiskSize();
        long usedDiskSpace = getUsedDiskSpace();
        int batteryLevel = getBatteryLevel();
        String locale = getLocale();
        String manufacturer = getManufacturer();
        if (!StringUtils.isEmpty(os)) {
            hashMap.put("os", os);
        }
        if (!StringUtils.isEmpty(model)) {
            hashMap.put("model", model);
        }
        if (usedMemory != -1) {
            hashMap.put("memory_used", getBytesInMb(usedMemory));
        }
        if (totalMemory != -1) {
            hashMap.put("memory_total", getBytesInMb(totalMemory));
        }
        if (diskSize != -1) {
            hashMap.put("disk_total", getBytesInMb(diskSize));
        }
        if (usedDiskSpace != -1) {
            hashMap.put("disk_used", getBytesInMb(usedDiskSpace));
        }
        if (batteryLevel != -1) {
            hashMap.put("battery_level", String.valueOf(batteryLevel));
        }
        if (!StringUtils.isEmpty(locale)) {
            hashMap.put("sys_locale", locale);
        }
        if (!StringUtils.isEmpty(manufacturer)) {
            hashMap.put("manufacturer", manufacturer);
        }
        hashMap.put("platform", PLATFORM_ANDROID);
        return hashMap;
    }

    String getLocale() {
        return LocaleUtil.toLanguageTag(Locale.getDefault());
    }

    String getModel() {
        return (!("unknown".equals(Build.MODEL) || StringUtils.isEmpty(Build.MODEL)) || !("unknown".equals(Build.DEVICE) || StringUtils.isEmpty(Build.DEVICE))) ? Build.MODEL.equals(Build.DEVICE) ? Build.MODEL : String.format(Locale.US, "%s/%s", Build.MODEL, Build.DEVICE) : "";
    }
}
