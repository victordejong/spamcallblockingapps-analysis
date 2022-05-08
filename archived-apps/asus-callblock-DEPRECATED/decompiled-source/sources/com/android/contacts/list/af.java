package com.android.contacts.list;

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.android.contacts.list.bh;
import com.android.contacts.util.CompatUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/af.class */
public final class af extends Fragment implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public ay f1768a;

    /* renamed from: b  reason: collision with root package name */
    private View f1769b;
    private TextView c;
    private TextView d;
    private Button e;
    private Button f;
    private Button g;
    private ProgressBar h;
    private int i = -1;
    private int j = -1;
    private bh.c k;

    private void a(int i, int i2) {
        this.i = i;
        this.j = i2;
        boolean z = CompatUtils.isMarshmallowCompatible() ? this.k.f1810a == 2 : this.k.f1810a == 4;
        if (this.c != null && this.k != null && z) {
            if (i != -1) {
                this.c.setText(this.i);
                this.c.setGravity(1);
                this.c.setVisibility(0);
                if (i2 != -1) {
                    this.d.setText(this.j);
                    this.d.setGravity(1);
                    this.d.setVisibility(0);
                    return;
                }
                this.d.setVisibility(4);
                return;
            }
            this.d.setVisibility(8);
            this.c.setVisibility(8);
        }
    }

    public final void a(bh.c cVar) {
        this.k = cVar;
        if (this.f1769b != null) {
            if (CompatUtils.isMarshmallowCompatible()) {
                switch (cVar.f1810a) {
                    case 1:
                        this.c.setText(2131756349);
                        this.c.setGravity(1);
                        this.c.setVisibility(0);
                        this.e.setVisibility(8);
                        this.f.setVisibility(8);
                        this.g.setVisibility(8);
                        this.h.setVisibility(0);
                        return;
                    case 2:
                        a(this.i, this.j);
                        this.e.setVisibility(0);
                        this.f.setVisibility(0);
                        this.g.setVisibility(0);
                        this.h.setVisibility(8);
                        return;
                    default:
                        return;
                }
            } else {
                switch (cVar.f1810a) {
                    case 1:
                        this.c.setText(2131756349);
                        this.c.setGravity(1);
                        this.c.setVisibility(0);
                        this.e.setVisibility(8);
                        this.f.setVisibility(8);
                        this.g.setVisibility(8);
                        this.h.setVisibility(0);
                        return;
                    case 2:
                        this.c.setText(getResources().getString(2131756350, cVar.f1811b));
                        this.c.setGravity(3);
                        this.c.setVisibility(0);
                        this.e.setVisibility(8);
                        this.f.setVisibility(8);
                        this.g.setVisibility(8);
                        this.h.setVisibility(8);
                        return;
                    case 3:
                        this.c.setText(2131755765);
                        this.c.setGravity(1);
                        this.c.setVisibility(0);
                        this.e.setVisibility(8);
                        this.f.setVisibility(8);
                        this.g.setVisibility(8);
                        this.h.setVisibility(0);
                        return;
                    case 4:
                        a(this.i, this.j);
                        this.e.setVisibility(0);
                        this.f.setVisibility(0);
                        this.g.setVisibility(0);
                        this.h.setVisibility(8);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f1768a != null) {
            switch (view.getId()) {
                case 2131296293:
                    this.f1768a.onAddAccountAction();
                    return;
                case 2131296615:
                    this.f1768a.onCreateNewContactAction();
                    return;
                case 2131296948:
                    this.f1768a.onImportContactsFromFileAction();
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f1769b = layoutInflater.inflate(2131427491, (ViewGroup) null);
        this.c = (TextView) this.f1769b.findViewById(2131297085);
        this.d = (TextView) this.f1769b.findViewById(2131297264);
        this.e = (Button) this.f1769b.findViewById(2131296615);
        this.e.setOnClickListener(this);
        this.f = (Button) this.f1769b.findViewById(2131296293);
        this.f.setOnClickListener(this);
        this.g = (Button) this.f1769b.findViewById(2131296948);
        this.g.setOnClickListener(this);
        this.h = (ProgressBar) this.f1769b.findViewById(2131297198);
        if (this.k != null) {
            a(this.k);
        }
        return this.f1769b;
    }
}
