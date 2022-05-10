package p131c.p431l.p432a.p442b.p448f.p449a;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
/* renamed from: c.l.a.b.f.a.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/f/a/a.class */
public class DialogC6763a extends Dialog {

    /* renamed from: a */
    public View f20861a;

    /* renamed from: b */
    public boolean f20862b;

    /* renamed from: c.l.a.b.f.a.a$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/f/a/a$a.class */
    public static final class C6764a {

        /* renamed from: a */
        public Context f20863a;

        /* renamed from: b */
        public View f20864b;

        /* renamed from: c */
        public int f20865c = -1;

        /* renamed from: d */
        public boolean f20866d;

        public C6764a(Context context) {
            this.f20863a = context;
        }

        /* renamed from: a */
        public C6764a m19853a(int i) {
            this.f20865c = i;
            return this;
        }

        /* renamed from: a */
        public C6764a m19852a(int i, View.OnClickListener onClickListener) {
            this.f20864b.findViewById(i).setOnClickListener(onClickListener);
            return this;
        }

        /* renamed from: a */
        public DialogC6763a m19854a() {
            return this.f20865c == -1 ? new DialogC6763a(this) : new DialogC6763a(this, this.f20865c);
        }

        /* renamed from: b */
        public C6764a m19850b(int i) {
            this.f20864b = View.inflate(this.f20863a, i, null);
            return this;
        }
    }

    public DialogC6763a(C6764a aVar) {
        super(aVar.f20863a);
        this.f20861a = aVar.f20864b;
        this.f20862b = aVar.f20866d;
    }

    public DialogC6763a(C6764a aVar, int i) {
        super(aVar.f20863a, i);
        this.f20861a = aVar.f20864b;
        this.f20862b = aVar.f20866d;
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(this.f20861a);
        setCancelable(this.f20862b);
    }
}
