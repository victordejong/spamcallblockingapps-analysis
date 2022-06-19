package p046g.p056i.p057a;

import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.ImageView;
import java.io.File;
import java.util.concurrent.ExecutorService;
import m.c0;
/* renamed from: g.i.a.d */
/* loaded from: classes2-dex2jar.jar:g/i/a/d.class */
public interface AbstractC1968d {

    /* renamed from: g.i.a.d$a */
    /* loaded from: classes2-dex2jar.jar:g/i/a/d$a.class */
    public interface AbstractC1969a {
        /* renamed from: a */
        AbstractC1969a m483a(c0 c0Var);

        /* renamed from: b */
        AbstractC1969a m482b(Bitmap.Config config);

        /* renamed from: c */
        AbstractC1968d m481c();

        /* renamed from: d */
        AbstractC1969a m480d(ExecutorService executorService);
    }

    /* renamed from: g.i.a.d$b */
    /* loaded from: classes2-dex2jar.jar:g/i/a/d$b.class */
    public enum EnumC1970b {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(-65536);
        
        final int debugColor;

        EnumC1970b(int i) {
            this.debugColor = i;
        }
    }

    /* renamed from: g.i.a.d$c */
    /* loaded from: classes2-dex2jar.jar:g/i/a/d$c.class */
    public enum EnumC1971c {
        LOW,
        NORMAL,
        HIGH
    }

    /* renamed from: a */
    AbstractC1972g m488a(Uri uri);

    /* renamed from: b */
    AbstractC1972g m487b(File file);

    /* renamed from: c */
    void m486c(ImageView imageView);

    /* renamed from: d */
    void m485d(AbstractC1973h abstractC1973h);

    /* renamed from: e */
    AbstractC1972g m484e(String str);
}
