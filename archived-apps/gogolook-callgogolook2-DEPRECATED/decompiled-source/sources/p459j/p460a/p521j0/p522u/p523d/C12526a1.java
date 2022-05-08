package p459j.p460a.p521j0.p522u.p523d;

import android.content.Context;
import android.content.Intent;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.main.MainActivity;
import java.util.List;
import java.util.Map;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p594z4.C14330b;
import p459j.p460a.p582w0.p594z4.EnumC14329a;
import p459j.p460a.p596x.C14376j;
/* renamed from: j.a.j0.u.d.a1 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/a1.class */
public class C12526a1 {

    /* renamed from: a */
    public Context f28227a;

    /* renamed from: b */
    public C12680t0 f28228b;

    /* renamed from: c */
    public List<Map<EnumC14329a, String>> f28229c;

    /* renamed from: d */
    public AbstractC12529c f28230d;

    /* renamed from: j.a.j0.u.d.a1$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/a1$a.class */
    public class C12527a extends C11086o {

        /* renamed from: d */
        public final /* synthetic */ int f28231d;

        public C12527a(int i) {
            this.f28231d = i;
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (C12526a1.this.f28230d != null && this.f28231d == 0) {
                C12526a1.this.f28230d.m5940a(numberInfo);
            }
        }
    }

    /* renamed from: j.a.j0.u.d.a1$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/a1$b.class */
    public class View$OnClickListenerC12528b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f28233a;

        public View$OnClickListenerC12528b(String str) {
            this.f28233a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14261f.m1985a(C14261f.EnumC14264c.a_Multiple_CED_Check);
            if (C14217x3.m2107z()) {
                Intent intent = new Intent(C12526a1.this.f28227a, MainActivity.class);
                intent.addFlags(335544320);
                intent.putExtra("pending_toast_string", this.f28233a);
                intent.putExtra("goto", "calllog");
                C12526a1.this.f28227a.startActivity(intent);
            } else {
                C14376j.m1452b(C12526a1.this.f28227a, true, false);
            }
            C12526a1.this.f28228b.m5555b(false, "openCallLogsPage");
            if (C12526a1.this.f28228b != null) {
                C12526a1.this.f28228b.m5556b(true);
            }
        }
    }

    /* renamed from: j.a.j0.u.d.a1$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/a1$c.class */
    public interface AbstractC12529c {
        /* renamed from: a */
        void m5940a(NumberInfo numberInfo);
    }

    public C12526a1(Context context, C12680t0 t0Var) {
        this.f28227a = context;
        this.f28228b = t0Var;
    }

    /* renamed from: a */
    public String m5945a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public void m5944a(View view) {
        TextView textView = (TextView) view.findViewById(R$id.multiple_title_missing);
        TextView textView2 = (TextView) view.findViewById(R$id.btn_checknow);
        this.f28229c = C14330b.m1551b().m1561a();
        List<Map<EnumC14329a, String>> list = this.f28229c;
        if (list == null) {
            C12680t0 t0Var = this.f28228b;
            if (t0Var != null) {
                t0Var.m5556b(true);
                return;
            }
            return;
        }
        if (list.size() == 2) {
            C14261f.m1985a(C14261f.EnumC14264c.a_Multiple_CED_View);
        }
        int size = this.f28229c.size();
        if (size == 0) {
            this.f28228b.m5556b(true);
            return;
        }
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i++;
            C11052i.m10328e().m10341a(this.f28229c.get(i2).get(EnumC14329a.E164NUMBER), new C12527a(i2), 0, C11052i.f24870g, EnumC11047e.CallEndDialogIn);
        }
        String a = C14206w4.m2224a((int) R$string.new_multiple_title_call, Integer.valueOf(i));
        SpannableString spannableString = new SpannableString(a);
        String valueOf = String.valueOf(i);
        spannableString.setSpan(new ForegroundColorSpan(-763841), a.indexOf(valueOf), a.indexOf(valueOf) + valueOf.length(), 0);
        textView.setText(spannableString);
        textView2.setOnClickListener(new View$OnClickListenerC12528b(m5945a(R$string.new_multiple_app_call)));
    }
}
