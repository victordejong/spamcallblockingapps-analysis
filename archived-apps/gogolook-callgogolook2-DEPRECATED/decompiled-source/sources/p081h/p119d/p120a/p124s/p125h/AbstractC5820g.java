package p081h.p119d.p120a.p124s.p125h;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;
import p081h.p119d.p120a.EnumC5779n;
/* renamed from: h.d.a.s.h.g */
/* loaded from: classes-dex2jar.jar:h/d/a/s/h/g.class */
public abstract class AbstractC5820g<T> implements AbstractC5813c<T> {

    /* renamed from: a */
    public final Uri f14667a;

    /* renamed from: b */
    public final Context f14668b;

    /* renamed from: c */
    public T f14669c;

    public AbstractC5820g(Context context, Uri uri) {
        this.f14668b = context.getApplicationContext();
        this.f14667a = uri;
    }

    /* renamed from: a */
    public abstract T mo5520a(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    /* renamed from: a */
    public final T mo24058a(EnumC5779n nVar) throws Exception {
        this.f14669c = mo5520a(this.f14667a, this.f14668b.getContentResolver());
        return this.f14669c;
    }

    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    /* renamed from: a */
    public void mo24059a() {
        T t = this.f14669c;
        if (t != null) {
            try {
                mo5518a((AbstractC5820g<T>) t);
            } catch (IOException e) {
                Log.isLoggable("LocalUriFetcher", 2);
            }
        }
    }

    /* renamed from: a */
    public abstract void mo5518a(T t) throws IOException;

    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    public void cancel() {
    }

    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    public String getId() {
        return this.f14667a.toString();
    }
}
