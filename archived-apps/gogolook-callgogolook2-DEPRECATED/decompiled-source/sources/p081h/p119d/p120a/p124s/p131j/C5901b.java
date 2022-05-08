package p081h.p119d.p120a.p124s.p131j;

import android.net.Uri;
import java.io.File;
import p081h.p119d.p120a.p124s.p125h.AbstractC5813c;
/* renamed from: h.d.a.s.j.b */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/b.class */
public class C5901b<T> implements AbstractC5918l<File, T> {

    /* renamed from: a */
    public final AbstractC5918l<Uri, T> f14826a;

    public C5901b(AbstractC5918l<Uri, T> lVar) {
        this.f14826a = lVar;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public AbstractC5813c<T> mo24060a(File file, int i, int i2) {
        return this.f14826a.mo24060a(Uri.fromFile(file), i, i2);
    }
}
