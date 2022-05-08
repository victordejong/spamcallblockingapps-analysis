package p081h.p119d.p120a.p124s.p131j.p133t;

import android.content.Context;
import android.net.Uri;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p131j.AbstractC5919m;
import p081h.p119d.p120a.p124s.p131j.C5902c;
import p081h.p119d.p120a.p124s.p131j.C5922p;
/* renamed from: h.d.a.s.j.t.f */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/t/f.class */
public class C5943f extends C5922p<InputStream> implements AbstractC5940d<String> {

    /* renamed from: h.d.a.s.j.t.f$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/t/f$a.class */
    public static class C5944a implements AbstractC5919m<String, InputStream> {
        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public AbstractC5918l<String, InputStream> mo24128a(Context context, C5902c cVar) {
            return new C5943f(cVar.m24161a(Uri.class, InputStream.class));
        }

        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public void mo24129a() {
        }
    }

    public C5943f(AbstractC5918l<Uri, InputStream> lVar) {
        super(lVar);
    }
}
