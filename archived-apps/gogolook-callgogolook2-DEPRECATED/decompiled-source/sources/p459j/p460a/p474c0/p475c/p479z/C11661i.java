package p459j.p460a.p474c0.p475c.p479z;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import java.util.Arrays;
import java.util.List;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.c.z.i */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/i.class */
public class C11661i extends AbstractC11669o {

    /* renamed from: f */
    public final byte[] f26174f;

    /* renamed from: j.a.c0.c.z.i$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/i$a.class */
    public class C11662a implements AbstractC11672r<AbstractC11669o> {
        public C11662a() {
            C11661i.this.m8617b();
        }

        @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
        /* renamed from: a */
        public int mo8662a() {
            return 2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
        /* renamed from: a */
        public AbstractC11669o mo8661a(List<AbstractC11672r<AbstractC11669o>> list) throws Exception {
            C12151d.m7002b();
            C11661i.this.m8619a();
            try {
                return new C11659h(getKey(), BitmapFactory.decodeByteArray(C11661i.this.f26174f, 0, C11661i.this.f26174f.length), C11661i.this.mo8674p());
            } finally {
                C11661i.this.m8605m();
                C11661i.this.m8606l();
            }
        }

        @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
        /* renamed from: b */
        public C11670p<AbstractC11669o> mo8660b() {
            return null;
        }

        @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
        /* renamed from: c */
        public AbstractC11673s<AbstractC11669o> mo8659c() {
            return null;
        }

        @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
        public String getKey() {
            return C11661i.this.m8612f();
        }
    }

    public C11661i(String str, byte[] bArr, int i) {
        super(str, i);
        this.f26174f = bArr;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: a */
    public Drawable mo8677a(Resources resources) {
        return null;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11685y
    /* renamed from: a */
    public AbstractC11672r<? extends AbstractC11685y> mo8618a(AbstractC11672r<? extends AbstractC11685y> rVar) {
        C12151d.m6999b(mo8607k());
        return new C11662a();
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11685y
    /* renamed from: e */
    public void mo8613e() {
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11685y
    /* renamed from: h */
    public int mo8610h() {
        return this.f26174f.length;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11685y
    /* renamed from: k */
    public boolean mo8607k() {
        return true;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: n */
    public Bitmap mo8676n() {
        m8619a();
        try {
            C12151d.m7002b();
            return BitmapFactory.decodeByteArray(this.f26174f, 0, this.f26174f.length);
        } finally {
            m8605m();
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: o */
    public byte[] mo8675o() {
        m8619a();
        try {
            return Arrays.copyOf(this.f26174f, this.f26174f.length);
        } finally {
            m8605m();
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: q */
    public Bitmap mo8673q() {
        return null;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: r */
    public boolean mo8672r() {
        return false;
    }
}
