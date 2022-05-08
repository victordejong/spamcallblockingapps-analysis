package gogolook.callgogolook2.ndp;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.gson.NumberInfo;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p503e0.p505p.C12369a;
import p459j.p460a.p503e0.p505p.C12372b;
import p459j.p460a.p503e0.p505p.p506c.AbstractC12375a;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14148s0;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/MyMemoActivity.class */
public class MyMemoActivity extends WhoscallActivity {

    /* renamed from: e */
    public String f11994e;

    /* renamed from: f */
    public NumberInfo f11995f;

    /* renamed from: g */
    public C11086o f11996g = new C4869d();
    @BindView(R$id.ll_memo)
    public ViewGroup mLayoutMemos;
    @BindView(R$id.tv_add_memo)
    public View mViewAddMemo;

    /* renamed from: gogolook.callgogolook2.ndp.MyMemoActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/MyMemoActivity$a.class */
    public class View$OnClickListenerC4863a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo.Note f11997a;

        /* renamed from: gogolook.callgogolook2.ndp.MyMemoActivity$a$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/MyMemoActivity$a$a.class */
        public class DialogInterface$OnClickListenerC4864a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC4864a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String l = C14108o4.m2474l(MyMemoActivity.this.f11994e);
                if (!(l == null || l.equals(""))) {
                    C13625a.m3811a(MyMemoActivity.this.f10650a, l, Long.valueOf(View$OnClickListenerC4863a.this.f11997a.createtime));
                    for (int size = MyMemoActivity.this.f11995f.whoscall.notes.size() - 1; size >= 0; size--) {
                        long j = MyMemoActivity.this.f11995f.whoscall.notes.get(size).createtime;
                        View$OnClickListenerC4863a aVar = View$OnClickListenerC4863a.this;
                        if (j == aVar.f11997a.createtime) {
                            MyMemoActivity.this.f11995f.whoscall.notes.remove(size);
                        }
                    }
                    C11052i.m10328e().m10344a(l);
                    MyMemoActivity.this.m26874o();
                    C14037j3.m2731a().mo2704a(new C14148s0(4, 0));
                }
            }
        }

        public View$OnClickListenerC4863a(NumberInfo.Note note) {
            this.f11997a = note;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(MyMemoActivity.this.f10650a);
            fVar.m979b(WhoscallActivity.m28686b(R$string.ra_delete_memo_confirm));
            fVar.m978b(WhoscallActivity.m28686b(R$string.okok), new DialogInterface$OnClickListenerC4864a());
            fVar.m977c(4);
            fVar.m984a(WhoscallActivity.m28686b(R$string.cancel), (DialogInterface.OnClickListener) null);
            fVar.m989a().show();
        }
    }

    /* renamed from: gogolook.callgogolook2.ndp.MyMemoActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/MyMemoActivity$b.class */
    public class View$OnClickListenerC4865b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo.Note f12000a;

        /* renamed from: gogolook.callgogolook2.ndp.MyMemoActivity$b$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/MyMemoActivity$b$a.class */
        public class C4866a implements AbstractC12375a {
            public C4866a() {
            }

            @Override // p459j.p460a.p503e0.p505p.p506c.AbstractC12375a
            public void onComplete() {
                MyMemoActivity.this.m26874o();
                C14037j3.m2731a().mo2704a(new C14148s0(4, 0));
            }
        }

        public View$OnClickListenerC4865b(NumberInfo.Note note) {
            this.f12000a = note;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyMemoActivity myMemoActivity = MyMemoActivity.this;
            C12372b bVar = new C12372b(myMemoActivity, myMemoActivity.f11995f, MyMemoActivity.this.f11994e, Long.toString(this.f12000a.createtime), this.f12000a.descr);
            bVar.m6288a(new C4866a());
            bVar.m6291a();
        }
    }

    /* renamed from: gogolook.callgogolook2.ndp.MyMemoActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/MyMemoActivity$c.class */
    public class View$OnClickListenerC4867c implements View.OnClickListener {

        /* renamed from: gogolook.callgogolook2.ndp.MyMemoActivity$c$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/MyMemoActivity$c$a.class */
        public class C4868a implements AbstractC12375a {
            public C4868a() {
            }

            @Override // p459j.p460a.p503e0.p505p.p506c.AbstractC12375a
            public void onComplete() {
                MyMemoActivity.this.m26874o();
                C14037j3.m2731a().mo2704a(new C14148s0(4, 0));
            }
        }

        public View$OnClickListenerC4867c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyMemoActivity myMemoActivity = MyMemoActivity.this;
            C12369a aVar = new C12369a(myMemoActivity, myMemoActivity.f11995f, MyMemoActivity.this.f11994e);
            aVar.m6295a(new C4868a());
            aVar.m6298a();
        }
    }

    /* renamed from: gogolook.callgogolook2.ndp.MyMemoActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/MyMemoActivity$d.class */
    public class C4869d extends C11086o {
        public C4869d() {
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (!C14217x3.m2160b(str) && numberInfo != null) {
                MyMemoActivity.this.f11995f = numberInfo;
                MyMemoActivity.this.m26874o();
            }
        }
    }

    /* renamed from: a */
    public static void m26881a(Activity activity, String str) {
        if (!TextUtils.isEmpty(str) && C14191v.m2262a(activity)) {
            Intent intent = new Intent(activity, MyMemoActivity.class);
            intent.putExtra("number", str);
            activity.startActivity(intent);
        }
    }

    /* renamed from: o */
    public final void m26874o() {
        this.mLayoutMemos.removeAllViews();
        for (int i = 0; i < this.f11995f.whoscall.notes.size(); i++) {
            NumberInfo.Note note = this.f11995f.whoscall.notes.get(i);
            View inflate = getLayoutInflater().inflate(R$layout.result_item_note, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_note_date);
            TextView textView2 = (TextView) inflate.findViewById(R$id.tv_note_content);
            textView.setText(C14123p4.m2418f(note.date));
            textView2.setText(note.descr);
            ((ImageView) inflate.findViewById(R$id.iv_remove)).setOnClickListener(new View$OnClickListenerC4863a(note));
            inflate.setOnClickListener(new View$OnClickListenerC4865b(note));
            this.mLayoutMemos.addView(inflate);
        }
        if (this.mLayoutMemos.getChildCount() == 0) {
            this.mLayoutMemos.setVisibility(8);
        } else {
            this.mLayoutMemos.setVisibility(0);
        }
        this.mViewAddMemo.setOnClickListener(new View$OnClickListenerC4867c());
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f11994e = getIntent().getStringExtra("number");
        if (!TextUtils.isEmpty(this.f11994e)) {
            setContentView(R$layout.activity_my_memo);
            ButterKnife.bind(this);
            if (!C14217x3.m2137h(this)) {
                C14687h.m861a(this, WhoscallActivity.m28686b(R$string.ndp_report_fail), 1).m858c();
            }
            C12484b i = m28683i();
            i.m6030d(R$string.ra_type_memo);
            i.invalidate();
            this.f11995f = C11052i.m10328e().m10327e(C14108o4.m2474l(this.f11994e));
            if (this.f11995f == null) {
                C11052i.m10328e().m10341a(this.f11994e, this.f11996g, 0, C11052i.f24869f, EnumC11047e.Ndp);
            } else {
                m26874o();
            }
        }
    }
}
