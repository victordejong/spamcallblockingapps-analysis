package p459j.p460a.p463b0;

import android.content.Context;
import android.content.DialogInterface;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p613z0.DialogC14636k;
/* renamed from: j.a.b0.f */
/* loaded from: classes2-dex2jar.jar:j/a/b0/f.class */
public class DialogC11121f extends DialogC14636k {

    /* renamed from: w */
    public static final String[] f24990w = {"Vivo", "TIM", "Claro", "OI", "Nextel", C14206w4.m2225a((int) R$string.sharedialog_more)};

    /* renamed from: x */
    public static final String[] f24991x = {"Vivo", "TIM", "Claro", "OI", "Nextel", "Datora", "Porto Conecta", "Terapar", "CTBC", "UNICEL", "Sercomtel", "BBS Options"};

    /* renamed from: u */
    public String[] f24992u;

    /* renamed from: v */
    public AbstractC11124c f24993v;

    /* renamed from: j.a.b0.f$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/f$a.class */
    public class DialogInterface$OnClickListenerC11122a implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC11122a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            int b;
            DialogC11121f fVar = DialogC11121f.this;
            if (fVar.f24993v != null && (b = fVar.m939b()) >= 0) {
                DialogC11121f.this.f24993v.mo10248a(b < DialogC11121f.f24990w.length - 1 ? DialogC11121f.f24990w[b] : DialogC11121f.f24991x[b]);
            }
        }
    }

    /* renamed from: j.a.b0.f$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/f$b.class */
    public class DialogInterface$OnClickListenerC11123b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC11123b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (DialogC11121f.this.f24992u == DialogC11121f.f24990w && i == DialogC11121f.f24990w.length - 1) {
                DialogC11121f.this.f24992u = DialogC11121f.f24991x;
                DialogC11121f.this.m940a(DialogC11121f.f24991x);
                DialogC11121f.this.m946a();
            }
        }
    }

    /* renamed from: j.a.b0.f$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/f$c.class */
    public interface AbstractC11124c {
        /* renamed from: a */
        void mo10248a(String str);
    }

    public DialogC11121f(Context context) {
        super(context);
        String[] strArr = f24990w;
        this.f24992u = strArr;
        m940a(strArr);
        m942a(C14206w4.m2225a((int) R$string.intro_ddd_content));
        m945a(R$string.intro_ddd_button, new DialogInterface$OnClickListenerC11122a());
        m944a(new DialogInterface$OnClickListenerC11123b());
    }

    /* renamed from: a */
    public void m10253a(AbstractC11124c cVar) {
        this.f24993v = cVar;
    }
}
