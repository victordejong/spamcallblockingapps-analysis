package androidx.media;

import android.media.AudioAttributes;
/* renamed from: androidx.media.b */
/* loaded from: classes-dex2jar.jar:androidx/media/b.class */
final class C0959b implements AbstractC0958a {

    /* renamed from: a */
    AudioAttributes f3953a;

    /* renamed from: b */
    int f3954b = -1;

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0959b)) {
            return false;
        }
        return this.f3953a.equals(((C0959b) obj).f3953a);
    }

    public final int hashCode() {
        return this.f3953a.hashCode();
    }

    public final String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f3953a;
    }
}
