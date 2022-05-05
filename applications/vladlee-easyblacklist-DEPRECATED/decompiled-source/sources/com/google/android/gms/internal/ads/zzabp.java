package com.google.android.gms.internal.ads;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabp.class */
public final class zzabp extends zzabz {

    /* renamed from: b */
    private static final int f10827b;

    /* renamed from: c */
    private static final int f10828c;

    /* renamed from: e */
    private final String f10830e;

    /* renamed from: f */
    private final List<zzabu> f10831f = new ArrayList();

    /* renamed from: g */
    private final List<zzaci> f10832g = new ArrayList();

    /* renamed from: h */
    private final int f10833h;

    /* renamed from: i */
    private final int f10834i;

    /* renamed from: j */
    private final int f10835j;

    /* renamed from: k */
    private final int f10836k;

    /* renamed from: l */
    private final int f10837l;

    /* renamed from: m */
    private final boolean f10838m;

    /* renamed from: a */
    private static final int f10826a = Color.rgb(12, 174, 206);

    /* renamed from: d */
    private static final int f10829d = f10826a;

    static {
        int rgb = Color.rgb(204, 204, 204);
        f10827b = rgb;
        f10828c = rgb;
    }

    public zzabp(String str, List<zzabu> list, Integer num, Integer num2, Integer num3, int i, int i2, boolean z) {
        this.f10830e = str;
        if (list != null) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                zzabu zzabuVar = list.get(i3);
                this.f10831f.add(zzabuVar);
                this.f10832g.add(zzabuVar);
            }
        }
        this.f10833h = num != null ? num.intValue() : f10828c;
        this.f10834i = num2 != null ? num2.intValue() : f10829d;
        this.f10835j = num3 != null ? num3.intValue() : 12;
        this.f10836k = i;
        this.f10837l = i2;
        this.f10838m = z;
    }

    public final int getBackgroundColor() {
        return this.f10833h;
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final String getText() {
        return this.f10830e;
    }

    public final int getTextColor() {
        return this.f10834i;
    }

    public final int getTextSize() {
        return this.f10835j;
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final List<zzaci> zzqx() {
        return this.f10832g;
    }

    public final List<zzabu> zzqy() {
        return this.f10831f;
    }

    public final int zzqz() {
        return this.f10836k;
    }

    public final int zzra() {
        return this.f10837l;
    }
}
