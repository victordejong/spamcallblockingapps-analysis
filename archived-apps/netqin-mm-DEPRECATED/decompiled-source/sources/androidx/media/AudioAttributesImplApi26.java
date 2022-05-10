package androidx.media;

import android.media.AudioAttributes;
import androidx.media.AudioAttributesImplApi21;
import p012b.p074r.AbstractC1138a;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26.class */
public class AudioAttributesImplApi26 extends AudioAttributesImplApi21 {

    /* renamed from: androidx.media.AudioAttributesImplApi26$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26$a.class */
    public static class C0236a extends AudioAttributesImplApi21.C0235a {
        @Override // androidx.media.AudioAttributesImplApi21.C0235a, p012b.p074r.AbstractC1138a.AbstractC1139a
        /* renamed from: a */
        public AbstractC1138a mo34592a() {
            return new AudioAttributesImplApi26(this.f1406a.build());
        }

        @Override // androidx.media.AudioAttributesImplApi21.C0235a, p012b.p074r.AbstractC1138a.AbstractC1139a
        /* renamed from: d */
        public C0236a mo34588d(int i) {
            this.f1406a.setUsage(i);
            return this;
        }
    }

    public AudioAttributesImplApi26() {
    }

    public AudioAttributesImplApi26(AudioAttributes audioAttributes) {
        super(audioAttributes, -1);
    }

    @Override // androidx.media.AudioAttributesImplApi21, p012b.p074r.AbstractC1138a
    /* renamed from: c */
    public int mo34594c() {
        return this.f1404a.getVolumeControlStream();
    }
}
