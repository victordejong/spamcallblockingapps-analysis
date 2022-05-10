package androidx.media;

import android.media.AudioAttributes;
import p012b.p074r.AbstractC1138a;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21.class */
public class AudioAttributesImplApi21 implements AbstractC1138a {

    /* renamed from: a */
    public AudioAttributes f1404a;

    /* renamed from: b */
    public int f1405b;

    /* renamed from: androidx.media.AudioAttributesImplApi21$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21$a.class */
    public static class C0235a implements AbstractC1138a.AbstractC1139a {

        /* renamed from: a */
        public final AudioAttributes.Builder f1406a = new AudioAttributes.Builder();

        @Override // p012b.p074r.AbstractC1138a.AbstractC1139a
        /* renamed from: a */
        public C0235a mo34591a(int i) {
            this.f1406a.setLegacyStreamType(i);
            return this;
        }

        @Override // p012b.p074r.AbstractC1138a.AbstractC1139a
        /* renamed from: a */
        public AbstractC1138a mo34592a() {
            return new AudioAttributesImplApi21(this.f1406a.build());
        }

        @Override // p012b.p074r.AbstractC1138a.AbstractC1139a
        /* renamed from: b */
        public C0235a mo34590b(int i) {
            this.f1406a.setContentType(i);
            return this;
        }

        @Override // p012b.p074r.AbstractC1138a.AbstractC1139a
        /* renamed from: c */
        public C0235a mo34589c(int i) {
            this.f1406a.setFlags(i);
            return this;
        }

        @Override // p012b.p074r.AbstractC1138a.AbstractC1139a
        /* renamed from: d */
        public C0235a mo34588d(int i) {
            int i2 = i;
            if (i == 16) {
                i2 = 12;
            }
            this.f1406a.setUsage(i2);
            return this;
        }
    }

    public AudioAttributesImplApi21() {
        this.f1405b = -1;
    }

    public AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this(audioAttributes, -1);
    }

    public AudioAttributesImplApi21(AudioAttributes audioAttributes, int i) {
        this.f1405b = -1;
        this.f1404a = audioAttributes;
        this.f1405b = i;
    }

    @Override // p012b.p074r.AbstractC1138a
    /* renamed from: a */
    public int mo34596a() {
        return this.f1404a.getUsage();
    }

    @Override // p012b.p074r.AbstractC1138a
    /* renamed from: b */
    public int mo34595b() {
        return this.f1404a.getContentType();
    }

    @Override // p012b.p074r.AbstractC1138a
    /* renamed from: c */
    public int mo34594c() {
        return AudioAttributesCompat.m38312a(true, mo34593d(), mo34596a());
    }

    @Override // p012b.p074r.AbstractC1138a
    /* renamed from: d */
    public int mo34593d() {
        return this.f1404a.getFlags();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplApi21)) {
            return false;
        }
        return this.f1404a.equals(((AudioAttributesImplApi21) obj).f1404a);
    }

    public int hashCode() {
        return this.f1404a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f1404a;
    }
}
