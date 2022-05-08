package zendesk.core;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p455d.C10861c;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/core/DeviceInfo.class */
public class DeviceInfo {
    public final ActivityManager activityManager;
    public final Context context;

    public DeviceInfo(Context context) {
        this.context = context;
        this.activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
    }

    public static Locale getCurrentLocale(Context context) {
        return Build.VERSION.SDK_INT >= 24 ? context.getResources().getConfiguration().getLocales().get(0) : context.getResources().getConfiguration().locale;
    }

    @TargetApi(18)
    public final long getAvailableInternalDiskMemory() {
        long blockSizeLong;
        long availableBlocksLong;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        if (Build.VERSION.SDK_INT < 18) {
            blockSizeLong = statFs.getBlockSize();
            availableBlocksLong = statFs.getAvailableBlocks();
        } else {
            blockSizeLong = statFs.getBlockSizeLong();
            availableBlocksLong = statFs.getAvailableBlocksLong();
        }
        return availableBlocksLong * blockSizeLong;
    }

    public final int getBatteryLevel() {
        Intent registerReceiver = this.context.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int i = -1;
        if (registerReceiver != null) {
            i = registerReceiver.getIntExtra(IapPlanRealmObject.LEVEL, -1);
        }
        return i;
    }

    public final String getBytesInMb(long j) {
        return String.valueOf(j / PsExtractor.MAX_SEARCH_LENGTH);
    }

    public final long getDiskSize() {
        return getTotalInternalDiskSize();
    }

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
        if (!C10862d.m10389c(os)) {
            hashMap.put("os", os);
        }
        if (!C10862d.m10389c(model)) {
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
        if (!C10862d.m10389c(locale)) {
            hashMap.put("sys_locale", locale);
        }
        if (!C10862d.m10389c(manufacturer)) {
            hashMap.put("manufacturer", manufacturer);
        }
        hashMap.put("platform", "Android");
        return hashMap;
    }

    public String getLocale() {
        return C10861c.m10393a(Locale.getDefault());
    }

    public final String getManufacturer() {
        return "unknown".equals(Build.MANUFACTURER) || C10862d.m10389c(Build.MANUFACTURER) ? "" : Build.MANUFACTURER;
    }

    public String getModel() {
        return (!("unknown".equals(Build.MODEL) || C10862d.m10389c(Build.MODEL)) || !("unknown".equals(Build.DEVICE) || C10862d.m10389c(Build.DEVICE))) ? Build.MODEL.equals(Build.DEVICE) ? Build.MODEL : String.format(Locale.US, "%s/%s", Build.MODEL, Build.DEVICE) : "";
    }

    public final String getOS() {
        return (!("unknown".equals(Build.VERSION.RELEASE) || C10862d.m10389c(Build.VERSION.RELEASE)) || !(Build.VERSION.SDK_INT == 0)) ? String.format(Locale.US, "%s/%s", Build.VERSION.RELEASE, Integer.valueOf(Build.VERSION.SDK_INT)) : "";
    }

    @TargetApi(18)
    public final long getTotalInternalDiskSize() {
        long blockSizeLong;
        long blockCountLong;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        if (Build.VERSION.SDK_INT < 18) {
            blockSizeLong = statFs.getBlockSize();
            blockCountLong = statFs.getBlockCount();
        } else {
            blockSizeLong = statFs.getBlockSizeLong();
            blockCountLong = statFs.getBlockCountLong();
        }
        return blockCountLong * blockSizeLong;
    }

    @TargetApi(16)
    public final long getTotalMemory() {
        long j;
        if (Build.VERSION.SDK_INT >= 16) {
            C10845a.m10422a("DeviceInfo", "Using getTotalMemoryApi() to determine memory", new Object[0]);
            j = getTotalMemoryApi();
        } else {
            C10845a.m10422a("DeviceInfo", "Using getTotalMemoryCompat() to determine memory", new Object[0]);
            j = getTotalMemoryCompat();
        }
        return j;
    }

    public final long getTotalMemoryApi() {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0108 A[Catch: NumberFormatException -> 0x0124, NoSuchElementException -> 0x013a, TRY_LEAVE, TryCatch #8 {NumberFormatException -> 0x0124, NoSuchElementException -> 0x013a, blocks: (B:38:0x0100, B:40:0x0108), top: B:66:0x0100 }] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.util.StringTokenizer] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long getTotalMemoryCompat() {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zendesk.core.DeviceInfo.getTotalMemoryCompat():long");
    }

    public final long getUsedDiskSpace() {
        return getDiskSize() - getAvailableInternalDiskMemory();
    }

    public final long getUsedMemory() {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.activityManager.getMemoryInfo(memoryInfo);
        return getTotalMemory() - memoryInfo.availMem;
    }
}
