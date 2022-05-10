package p012b.p076s.p112c.p113f;

import android.media.MediaFormat;
import androidx.media2.player.MediaPlayer2;
/* renamed from: b.s.c.f.a */
/* loaded from: classes-dex2jar.jar:b/s/c/f/a.class */
public final class C1715a extends MediaPlayer2.AbstractC0410c {

    /* renamed from: a */
    public final int f6996a;

    /* renamed from: b */
    public final MediaFormat f6997b;

    public C1715a(int i, MediaFormat mediaFormat) {
        this.f6996a = i;
        this.f6997b = mediaFormat;
    }

    @Override // androidx.media2.player.MediaPlayer2.AbstractC0410c
    /* renamed from: a */
    public MediaFormat mo32298a() {
        if (this.f6996a == 4) {
            return this.f6997b;
        }
        return null;
    }

    @Override // androidx.media2.player.MediaPlayer2.AbstractC0410c
    /* renamed from: b */
    public int mo32297b() {
        return this.f6996a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(C1715a.class.getName());
        sb.append('{');
        int i = this.f6996a;
        if (i == 1) {
            sb.append("VIDEO");
        } else if (i == 2) {
            sb.append("AUDIO");
        } else if (i == 4) {
            sb.append("SUBTITLE");
        } else if (i != 5) {
            sb.append("UNKNOWN");
        } else {
            sb.append("METADATA");
        }
        sb.append(", ");
        sb.append(this.f6997b);
        sb.append("}");
        return sb.toString();
    }
}
