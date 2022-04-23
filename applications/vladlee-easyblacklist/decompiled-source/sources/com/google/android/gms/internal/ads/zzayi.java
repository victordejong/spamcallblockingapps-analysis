package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.util.Range;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayi.class */
public final class zzayi {

    /* renamed from: b */
    private static List<MediaCodecInfo> f11533b;

    /* renamed from: a */
    private static Map<String, List<Map<String, Object>>> f11532a = new HashMap();

    /* renamed from: c */
    private static final Object f11534c = new Object();

    /* renamed from: a */
    private static Integer[] m4211a(Range<Integer> range) {
        return new Integer[]{range.getLower(), range.getUpper()};
    }

    public static List<Map<String, Object>> zzer(String str) {
        List<MediaCodecInfo> emptyList;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        synchronized (f11534c) {
            if (f11532a.containsKey(str)) {
                return f11532a.get(str);
            }
            try {
                synchronized (f11534c) {
                    if (f11533b == null) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            emptyList = Arrays.asList(new MediaCodecList(0).getCodecInfos());
                        } else if (Build.VERSION.SDK_INT >= 16) {
                            int codecCount = MediaCodecList.getCodecCount();
                            f11533b = new ArrayList(codecCount);
                            for (int i = 0; i < codecCount; i++) {
                                f11533b.add(MediaCodecList.getCodecInfoAt(i));
                            }
                        } else {
                            emptyList = Collections.emptyList();
                        }
                        f11533b = emptyList;
                    }
                }
                ArrayList arrayList = new ArrayList();
                for (MediaCodecInfo mediaCodecInfo : f11533b) {
                    if (!mediaCodecInfo.isEncoder() && Arrays.asList(mediaCodecInfo.getSupportedTypes()).contains(str)) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("codecName", mediaCodecInfo.getName());
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
                        ArrayList arrayList2 = new ArrayList();
                        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : capabilitiesForType.profileLevels) {
                            arrayList2.add(new Integer[]{Integer.valueOf(codecProfileLevel.profile), Integer.valueOf(codecProfileLevel.level)});
                        }
                        hashMap.put("profileLevels", arrayList2);
                        if (Build.VERSION.SDK_INT >= 21) {
                            MediaCodecInfo.VideoCapabilities videoCapabilities = capabilitiesForType.getVideoCapabilities();
                            hashMap.put("bitRatesBps", m4211a(videoCapabilities.getBitrateRange()));
                            hashMap.put("widthAlignment", Integer.valueOf(videoCapabilities.getWidthAlignment()));
                            hashMap.put("heightAlignment", Integer.valueOf(videoCapabilities.getHeightAlignment()));
                            hashMap.put("frameRates", m4211a(videoCapabilities.getSupportedFrameRates()));
                            hashMap.put("widths", m4211a(videoCapabilities.getSupportedWidths()));
                            hashMap.put("heights", m4211a(videoCapabilities.getSupportedHeights()));
                        }
                        if (Build.VERSION.SDK_INT >= 23) {
                            hashMap.put("instancesLimit", Integer.valueOf(capabilitiesForType.getMaxSupportedInstances()));
                        }
                        arrayList.add(hashMap);
                    }
                }
                f11532a.put(str, arrayList);
                return arrayList;
            } catch (LinkageError | RuntimeException e) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put("error", e.getClass().getSimpleName());
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(hashMap2);
                f11532a.put(str, arrayList3);
                return arrayList3;
            }
        }
    }
}
