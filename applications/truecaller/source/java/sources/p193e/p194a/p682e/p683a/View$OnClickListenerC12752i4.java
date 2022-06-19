package p193e.p194a.p682e.p683a;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.truecaller.C2752R;
import p1727n3.p1734b.p1735a.DialogC25424p;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p372b0.p430q.C8605o;
/* renamed from: e.a.e.a.i4 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/i4.class */
public class View$OnClickListenerC12752i4 extends DialogC25424p implements View.OnClickListener {

    /* renamed from: c */
    public Button f37134c;

    /* renamed from: d */
    public Uri f37135d;

    /* renamed from: e */
    public boolean f37136e = false;

    /* renamed from: f */
    public String f37137f;

    /* renamed from: g */
    public final String f37138g;

    /* renamed from: h */
    public final String f37139h;

    /* renamed from: i */
    public final String f37140i;

    public View$OnClickListenerC12752i4(Context context, String str, String str2, String str3) {
        super(context, 0);
        this.f37138g = str;
        this.f37139h = str2;
        this.f37140i = str3;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131363341) {
            this.f37136e = true;
            Context context = getContext();
            C8582g0.m28323R(context, null, context.getString(C2752R.string.WarnYourFriendsShareTitle), context.getString(C2752R.string.WarnYourFriendsShareMessage, this.f37137f), this.f37135d);
            dismiss();
        } else if (id != 2131363337) {
        } else {
            this.f37136e = false;
            dismiss();
        }
    }

    @Override // p1727n3.p1734b.p1735a.DialogC25424p, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C2752R.layout.dialog_warn_your_friends);
        this.f37134c = (Button) findViewById(C2752R.C2754id.dialogYes);
        TextView textView = (TextView) findViewById(2131364968);
        TextView textView2 = (TextView) findViewById(2131364874);
        Button button = (Button) findViewById(C2752R.C2754id.dialogNo);
        this.f37134c.setEnabled(false);
        String str = this.f37138g;
        String upperCase = str == null ? null : str.toUpperCase();
        String str2 = this.f37139h;
        int i = C19045j0.f53198b;
        C19045j0.m14196t(textView, C8605o.m28239a(str2));
        C19045j0.m14196t(textView2, upperCase);
        View inflate = getLayoutInflater().inflate(C2752R.layout.view_warn_your_friends_web, (ViewGroup) null);
        C19045j0.m14198r(inflate, 2131364968, this.f37139h);
        C19045j0.m14198r(inflate, 2131364874, upperCase);
        if (!TextUtils.isEmpty(this.f37140i)) {
            ((TextView) findViewById(C2752R.C2754id.message_text)).setText(this.f37140i);
            C19045j0.m14198r(inflate, C2752R.C2754id.message_text, this.f37140i);
        }
        new AsyncTaskC12746h4(this, inflate);
        this.f37134c.setOnClickListener(this);
        button.setOnClickListener(this);
        this.f37137f = ((AbstractC21187w1) getContext().getApplicationContext()).mo10154s().mo12392f0().mo28262a(this.f37139h);
    }
}
