package p012b.p076s.p078b.p079a.p083p0;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.provider.Settings;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.p0.d */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/d.class */
public final class C1274d {

    /* renamed from: c */
    public static final C1274d f5070c = new C1274d(new int[]{2}, 8);

    /* renamed from: d */
    public static final C1274d f5071d = new C1274d(new int[]{2, 5, 6}, 8);

    /* renamed from: a */
    public final int[] f5072a;

    /* renamed from: b */
    public final int f5073b;

    public C1274d(int[] iArr, int i) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f5072a = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f5072a = new int[0];
        }
        this.f5073b = i;
    }

    /* renamed from: a */
    public static C1274d m33928a(Context context) {
        return m33927a(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    /* renamed from: a */
    public static C1274d m33927a(Context context, Intent intent) {
        return (!m33926b() || Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) != 1) ? (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? f5070c : new C1274d(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8)) : f5071d;
    }

    /* renamed from: b */
    public static boolean m33926b() {
        return C1167d0.f4688a >= 17 && "Amazon".equals(C1167d0.f4690c);
    }

    /* renamed from: a */
    public int m33930a() {
        return this.f5073b;
    }

    /* renamed from: a */
    public boolean m33929a(int i) {
        return Arrays.binarySearch(this.f5072a, i) >= 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1274d)) {
            return false;
        }
        C1274d dVar = (C1274d) obj;
        if (!Arrays.equals(this.f5072a, dVar.f5072a) || this.f5073b != dVar.f5073b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f5073b + (Arrays.hashCode(this.f5072a) * 31);
    }

    public String toString() {
        int i = this.f5073b;
        String arrays = Arrays.toString(this.f5072a);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", supportedEncodings=");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
