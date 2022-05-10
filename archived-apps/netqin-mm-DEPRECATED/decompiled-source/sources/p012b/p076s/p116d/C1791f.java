package p012b.p076s.p116d;

import android.content.Intent;
import android.os.IBinder;
/* renamed from: b.s.d.f */
/* loaded from: classes-dex2jar.jar:b/s/d/f.class */
public class C1791f extends C1793h {
    @Override // p012b.p076s.p116d.C1793h, androidx.media2.session.MediaSessionService.AbstractC0429b
    public IBinder onBind(Intent intent) {
        return "androidx.media2.session.MediaLibraryService".equals(intent.getAction()) ? m32081c() : super.onBind(intent);
    }
}
