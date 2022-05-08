package android.support.v4.content;

import android.support.v4.b.c;
/* loaded from: classes-dex2jar.jar:android/support/v4/content/b.class */
public final class b<D> {

    /* renamed from: a  reason: collision with root package name */
    public int f145a;

    /* renamed from: b  reason: collision with root package name */
    public AbstractC0006b<D> f146b;
    public a<D> c;
    public boolean d;
    public boolean e;
    public boolean f;
    public boolean g;
    public boolean h;

    /* loaded from: classes-dex2jar.jar:android/support/v4/content/b$a.class */
    public interface a<D> {
    }

    /* renamed from: android.support.v4.content.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/v4/content/b$b.class */
    public interface AbstractC0006b<D> {
    }

    public final void a(a<D> aVar) {
        if (this.c == null) {
            throw new IllegalStateException("No listener register");
        } else if (this.c != aVar) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        } else {
            this.c = null;
        }
    }

    public final void a(AbstractC0006b<D> bVar) {
        if (this.f146b == null) {
            throw new IllegalStateException("No listener register");
        } else if (this.f146b != bVar) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        } else {
            this.f146b = null;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        c.a(this, sb);
        sb.append(" id=");
        sb.append(this.f145a);
        sb.append("}");
        return sb.toString();
    }
}
