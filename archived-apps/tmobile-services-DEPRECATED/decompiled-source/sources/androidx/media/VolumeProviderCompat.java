package androidx.media;

import android.os.Build;
import androidx.annotation.RestrictTo;
import androidx.media.VolumeProviderCompatApi21;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:androidx/media/VolumeProviderCompat.class */
public abstract class VolumeProviderCompat {

    /* renamed from: a */
    private final int f4304a;

    /* renamed from: b */
    private final int f4305b;

    /* renamed from: c */
    private int f4306c;

    /* renamed from: d */
    private Object f4307d;

    /* loaded from: classes-dex2jar.jar:androidx/media/VolumeProviderCompat$Callback.class */
    public static abstract class Callback {
        public abstract void onVolumeChanged(VolumeProviderCompat volumeProviderCompat);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/media/VolumeProviderCompat$ControlType.class */
    public @interface ControlType {
    }

    /* renamed from: a */
    public final int m17983a() {
        return this.f4306c;
    }

    /* renamed from: b */
    public final int m17982b() {
        return this.f4305b;
    }

    /* renamed from: c */
    public final int m17981c() {
        return this.f4304a;
    }

    /* renamed from: d */
    public Object m17980d() {
        if (this.f4307d == null && Build.VERSION.SDK_INT >= 21) {
            this.f4307d = VolumeProviderCompatApi21.m17976a(this.f4304a, this.f4305b, this.f4306c, new VolumeProviderCompatApi21.Delegate() { // from class: androidx.media.VolumeProviderCompat.1
                @Override // androidx.media.VolumeProviderCompatApi21.Delegate
                /* renamed from: a */
                public void mo17975a(int i) {
                    VolumeProviderCompat.this.m17978f(i);
                }

                @Override // androidx.media.VolumeProviderCompatApi21.Delegate
                /* renamed from: b */
                public void mo17974b(int i) {
                    VolumeProviderCompat.this.m17979e(i);
                }
            });
        }
        return this.f4307d;
    }

    /* renamed from: e */
    public void m17979e(int i) {
    }

    /* renamed from: f */
    public void m17978f(int i) {
    }

    /* renamed from: g */
    public void m17977g(Callback callback) {
    }
}
