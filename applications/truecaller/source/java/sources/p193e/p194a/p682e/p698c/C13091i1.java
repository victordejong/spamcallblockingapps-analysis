package p193e.p194a.p682e.p698c;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.AppCompatEditText;
import com.truecaller.C2752R;
import com.truecaller.blocking.FiltersContract;
import java.util.Objects;
import n3.b.a.g;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p682e.C13256g;
import p193e.p194a.p682e.p698c.C13091i1;
import w3.c.a.a.a.h;
/* renamed from: e.a.e.c.i1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/i1.class */
public class C13091i1 extends g {

    /* renamed from: d */
    public final AppCompatEditText f37985d;

    /* renamed from: e */
    public final RadioGroup f37986e;

    /* renamed from: f */
    public final TextView f37987f;

    /* renamed from: g */
    public AbstractC13092a f37988g;

    /* renamed from: e.a.e.c.i1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/i1$a.class */
    public interface AbstractC13092a {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C13091i1(Context context, String str, boolean z, boolean z2) {
        super(C17422k.m16114D(context), 0);
        View inflate = LayoutInflater.from(getContext()).inflate(C2752R.layout.dialog_block_numbers_confirmation, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(2131366469);
        this.f37987f = textView;
        AppCompatEditText appCompatEditText = (AppCompatEditText) inflate.findViewById(C2752R.C2754id.inputNameForSpammer);
        this.f37985d = appCompatEditText;
        RadioGroup radioGroup = (RadioGroup) inflate.findViewById(2131365328);
        this.f37986e = radioGroup;
        C19045j0.m14194v(radioGroup, z2, true);
        C19045j0.m14194v(appCompatEditText, z, true);
        if (!h.j(str)) {
            textView.setText(getContext().getString(C2752R.string.BlockAddNumberConfirmationTextWithArgs, str));
        }
        AlertController alertController = ((g) this).c;
        alertController.f129h = inflate;
        alertController.f130i = 0;
        alertController.f135n = false;
        f(-1, getContext().getString(C2752R.string.AfterCallBlock), new DialogInterface.OnClickListener() { // from class: e.a.e.c.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C13091i1 c13091i1 = C13091i1.this;
                C13091i1.AbstractC13092a abstractC13092a = c13091i1.f37988g;
                if (abstractC13092a != null) {
                    ((C13256g) abstractC13092a).m21978a(c13091i1.f37985d.getText().toString().trim(), c13091i1.m22062g());
                }
            }
        });
        f(-2, getContext().getString(2131887867), new DialogInterface.OnClickListener() { // from class: e.a.e.c.c
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                Objects.requireNonNull(C13091i1.this);
            }
        });
    }

    /* renamed from: g */
    public final FiltersContract.Filters.EntityType m22062g() {
        if (this.f37986e.getVisibility() == 0) {
            int checkedRadioButtonId = this.f37986e.getCheckedRadioButtonId();
            if (checkedRadioButtonId == 2131362474) {
                return FiltersContract.Filters.EntityType.BUSINESS;
            }
            if (checkedRadioButtonId == 2131365136) {
                return FiltersContract.Filters.EntityType.PERSON;
            }
        }
        return FiltersContract.Filters.EntityType.UNKNOWN;
    }
}
