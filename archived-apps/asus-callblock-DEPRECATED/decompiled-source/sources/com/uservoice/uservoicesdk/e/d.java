package com.uservoice.uservoicesdk.e;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.support.v4.app.i;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.uservoice.uservoicesdk.a.a;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.f.b;
import com.uservoice.uservoicesdk.model.k;
import com.uservoice.uservoicesdk.ui.a;
import com.uservoice.uservoicesdk.ui.l;
@SuppressLint({"ValidFragment"})
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/e/d.class */
public final class d extends b {
    private EditText ai;
    private EditText aj;
    private EditText ak;
    private View al;
    private Button am;
    private String an;
    private String ao;
    private b ap;
    private Runnable aq;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.uservoice.uservoicesdk.e.d$6  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/e/d$6.class */
    public final class AnonymousClass6 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f4647a;

        AnonymousClass6(Activity activity) {
            this.f4647a = activity;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (d.this.aj.getVisibility() == 0) {
                k.a(d.this.ai.getText().toString(), d.this.aj.getText().toString(), new a<com.uservoice.uservoicesdk.model.b<k>>(d.this.getActivity()) { // from class: com.uservoice.uservoicesdk.e.d.6.1
                    @Override // com.uservoice.uservoicesdk.j.a
                    public final /* synthetic */ void a(Object obj) {
                        com.uservoice.uservoicesdk.model.b bVar = (com.uservoice.uservoicesdk.model.b) obj;
                        e.a().a((k) bVar.f4739a);
                        e.a().a(bVar.f4740b);
                        com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.AUTHENTICATE);
                        d.this.a(false);
                        d.this.ap.a();
                    }
                });
            } else {
                com.uservoice.uservoicesdk.model.a.a(d.this.ai.getText().toString(), d.this.ak.getText().toString(), new com.uservoice.uservoicesdk.j.a<com.uservoice.uservoicesdk.model.a>() { // from class: com.uservoice.uservoicesdk.e.d.6.2
                    @Override // com.uservoice.uservoicesdk.j.a
                    public final void a(com.uservoice.uservoicesdk.j.e eVar) {
                        Toast.makeText(AnonymousClass6.this.f4647a, d.f.C, 0).show();
                    }

                    @Override // com.uservoice.uservoicesdk.j.a
                    public final /* synthetic */ void a(com.uservoice.uservoicesdk.model.a aVar) {
                        e.a().a(aVar);
                        k.a(new com.uservoice.uservoicesdk.ui.a<k>(d.this.getActivity()) { // from class: com.uservoice.uservoicesdk.e.d.6.2.1
                            @Override // com.uservoice.uservoicesdk.j.a
                            public final /* synthetic */ void a(Object obj) {
                                e.a().a((k) obj);
                                com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.AUTHENTICATE);
                                d.this.a(false);
                                d.this.ap.a();
                            }
                        });
                    }
                });
            }
        }
    }

    public d() {
    }

    public d(String str, String str2, b bVar) {
        this.an = str;
        this.ao = str2;
        this.ap = bVar;
    }

    static /* synthetic */ void b(d dVar) {
        final i activity = dVar.getActivity();
        k.b(dVar.ai.getText().toString(), new com.uservoice.uservoicesdk.ui.a<k>(dVar.getActivity()) { // from class: com.uservoice.uservoicesdk.e.d.7
            @Override // com.uservoice.uservoicesdk.j.a
            public final /* synthetic */ void a(Object obj) {
                Toast.makeText(activity, d.f.G, 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        k.a(this.ai.getText().toString(), new com.uservoice.uservoicesdk.j.a<k>() { // from class: com.uservoice.uservoicesdk.e.d.5
            @Override // com.uservoice.uservoicesdk.j.a
            public final void a(com.uservoice.uservoicesdk.j.e eVar) {
                d.this.al.setVisibility(8);
                d.this.aj.setVisibility(0);
                d.this.aj.requestFocus();
            }

            @Override // com.uservoice.uservoicesdk.j.a
            public final /* synthetic */ void a(k kVar) {
                d.this.al.setVisibility(0);
                d.this.aj.setVisibility(8);
                d.this.ak.requestFocus();
            }
        });
    }

    static /* synthetic */ void e(d dVar) {
        AnonymousClass6 r0 = new AnonymousClass6(dVar.getActivity());
        if (e.a().d != null) {
            r0.run();
        } else {
            dVar.aq = r0;
        }
    }

    @Override // android.support.v4.app.h
    public final Dialog a() {
        com.uservoice.uservoicesdk.model.i.a(new com.uservoice.uservoicesdk.ui.a<com.uservoice.uservoicesdk.model.i>(getActivity()) { // from class: com.uservoice.uservoicesdk.e.d.1
            @Override // com.uservoice.uservoicesdk.j.a
            public final /* synthetic */ void a(Object obj) {
                e.a().d = (com.uservoice.uservoicesdk.model.i) obj;
                if (d.this.aq != null) {
                    d.this.aq.run();
                }
            }
        });
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        if (!l.a((Context) getActivity())) {
            builder.setInverseBackgroundForced(true);
        }
        builder.setTitle(d.f.R);
        View inflate = getActivity().getLayoutInflater().inflate(d.c.s, (ViewGroup) null);
        this.ai = (EditText) inflate.findViewById(d.b.V);
        this.aj = (EditText) inflate.findViewById(d.b.X);
        this.ak = (EditText) inflate.findViewById(d.b.Y);
        this.al = inflate.findViewById(d.b.Z);
        this.am = (Button) inflate.findViewById(d.b.W);
        this.al.setVisibility(8);
        this.ai.setText(this.an);
        this.aj.setText(this.ao);
        if (this.an != null) {
            d();
        }
        this.am.setOnClickListener(new View.OnClickListener() { // from class: com.uservoice.uservoicesdk.e.d.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.b(d.this);
            }
        });
        this.ai.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.uservoice.uservoicesdk.e.d.3
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                if (view == d.this.ai && !z) {
                    d.this.d();
                }
            }
        });
        builder.setView(inflate);
        builder.setNegativeButton(17039360, (DialogInterface.OnClickListener) null);
        builder.setPositiveButton(d.f.Q, (DialogInterface.OnClickListener) null);
        final AlertDialog create = builder.create();
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.uservoice.uservoicesdk.e.d.4
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                create.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.uservoice.uservoicesdk.e.d.4.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        d.e(d.this);
                    }
                });
                ((InputMethodManager) d.this.getActivity().getSystemService("input_method")).showSoftInput(d.this.ai, 1);
            }
        });
        create.getWindow().setSoftInputMode(5);
        return create;
    }
}
