package p012b.p076s.p078b.p079a.p086s0;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.CommentFrame;
import androidx.media2.exoplayer.external.metadata.id3.InternalFrame;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: b.s.b.a.s0.k */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/k.class */
public final class C1354k {

    /* renamed from: c */
    public static final Pattern f5337c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a */
    public int f5338a = -1;

    /* renamed from: b */
    public int f5339b = -1;

    /* renamed from: a */
    public boolean m33612a() {
        return (this.f5338a == -1 || this.f5339b == -1) ? false : true;
    }

    /* renamed from: a */
    public boolean m33611a(int i) {
        int i2 = i >> 12;
        int i3 = i & 4095;
        if (i2 <= 0 && i3 <= 0) {
            return false;
        }
        this.f5338a = i2;
        this.f5339b = i3;
        return true;
    }

    /* renamed from: a */
    public boolean m33610a(Metadata metadata) {
        for (int i = 0; i < metadata.m38018a(); i++) {
            Metadata.Entry a = metadata.m38017a(i);
            if (a instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) a;
                if ("iTunSMPB".equals(commentFrame.f1779c) && m33609a(commentFrame.f1780d)) {
                    return true;
                }
            } else if (a instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) a;
                if ("com.apple.iTunes".equals(internalFrame.f1786b) && "iTunSMPB".equals(internalFrame.f1787c) && m33609a(internalFrame.f1788d)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m33609a(String str) {
        Matcher matcher = f5337c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1), 16);
            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
            if (parseInt <= 0 && parseInt2 <= 0) {
                return false;
            }
            this.f5338a = parseInt;
            this.f5339b = parseInt2;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
