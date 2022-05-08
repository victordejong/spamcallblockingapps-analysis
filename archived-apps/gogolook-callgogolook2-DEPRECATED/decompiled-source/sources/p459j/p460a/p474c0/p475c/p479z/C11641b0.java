package p459j.p460a.p474c0.p475c.p479z;

import android.content.Context;
import android.net.Uri;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11667n;
import p459j.p460a.p474c0.p499h.C12216t0;
/* renamed from: j.a.c0.c.z.b0 */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/b0.class */
public class C11641b0 extends AbstractC11667n {

    /* renamed from: i */
    public final Uri f26138i;

    /* renamed from: j */
    public final boolean f26139j;

    /* renamed from: k */
    public final boolean f26140k;

    /* renamed from: j.a.c0.c.z.b0$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/b0$a.class */
    public static class C11642a extends AbstractC11667n.AbstractC11668a<C11642a> {

        /* renamed from: i */
        public Uri f26141i;

        /* renamed from: j */
        public boolean f26142j = false;

        /* renamed from: k */
        public boolean f26143k = false;

        public C11642a(Uri uri) {
            this.f26141i = uri;
        }

        /* renamed from: b */
        public C11642a m8727b() {
            this.f26142j = true;
            return this;
        }

        /* renamed from: c */
        public C11641b0 m8726c() {
            return new C11641b0(this.f26141i, this.f26192a, this.f26193b, this.f26194c, this.f26195d, this.f26142j, this.f26196e, this.f26197f, this.f26143k, this.f26198g, this.f26199h);
        }

        /* renamed from: d */
        public C11642a m8725d() {
            this.f26143k = true;
            return this;
        }
    }

    public C11641b0(Uri uri, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6) {
        super(i, i2, i3, i4, z2, z3, i5, i6);
        this.f26138i = uri;
        this.f26139j = z;
        this.f26140k = z4;
    }

    public C11641b0(Uri uri, int i, int i2, boolean z, boolean z2, boolean z3, boolean z4, int i3, int i4) {
        this(uri, i, i2, -1, -1, z, z2, z3, z4, i3, i4);
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11673s
    /* renamed from: a */
    public AbstractC11672r<AbstractC11669o> mo8642a(Context context) {
        Uri uri = this.f26138i;
        return (uri == null || C12216t0.m6755h(uri)) ? new C11639a0(context, this) : new C11682w(context, this);
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11667n
    /* renamed from: a */
    public String mo8684a() {
        String a;
        if (this.f26138i == null || (a = super.mo8684a()) == null) {
            return null;
        }
        return this.f26138i + '|' + String.valueOf(this.f26139j) + '|' + a;
    }

    /* renamed from: c */
    public Long m8728c() {
        return null;
    }
}
