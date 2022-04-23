package p016g.p026i.p027a;

import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.ImageView;
import java.io.File;
import java.util.concurrent.ExecutorService;
import m.c0;
/* renamed from: g.i.a.d */
/* loaded from: classes2-dex2jar.jar:g/i/a/d.class */
public interface AbstractC0300d {

    /* renamed from: g.i.a.d$a */
    /* loaded from: classes2-dex2jar.jar:g/i/a/d$a.class */
    public interface AbstractC0301a {
        /* renamed from: a */
        AbstractC0301a m483a(c0 c0Var);

        /* renamed from: b */
        AbstractC0301a m482b(Bitmap.Config config);

        /* renamed from: c */
        AbstractC0300d m481c();

        /* renamed from: d */
        AbstractC0301a m480d(ExecutorService executorService);
    }

    /* renamed from: g.i.a.d$b */
    /* loaded from: classes2-dex2jar.jar:g/i/a/d$b.class */
    public enum EnumC0302b {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(-65536);
        
        final int debugColor;

        EnumC0302b(int i) {
            this.debugColor = i;
        }
    }

    /* renamed from: g.i.a.d$c */
    /* loaded from: classes2-dex2jar.jar:g/i/a/d$c.class */
    public enum EnumC0303c {
        LOW,
        NORMAL,
        HIGH
    }

    /* renamed from: a */
    AbstractC0304g m488a(Uri uri);

    /* renamed from: b */
    AbstractC0304g m487b(File file);

    /* renamed from: c */
    void m486c(ImageView imageView);

    /* renamed from: d */
    void m485d(AbstractC0305h hVar);

    /* renamed from: e */
    AbstractC0304g m484e(String str);
}
