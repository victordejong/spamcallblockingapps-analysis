package com.android.contacts.editor;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.android.contacts.b;
import com.android.contacts.editor.d;
import com.android.contacts.k;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.q;
import com.android.contacts.util.ContactPhotoUtils;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/PhotoEditorView.class */
public class PhotoEditorView extends LinearLayout implements d {

    /* renamed from: b  reason: collision with root package name */
    private ImageView f1171b;
    private View c;
    private RawContactDelta.ValuesDelta d;
    private d.a e;
    private boolean f;
    private b g;
    private RawContactDelta h;

    /* renamed from: a  reason: collision with root package name */
    boolean f1170a = false;
    private boolean i = false;

    public PhotoEditorView(Context context) {
        super(context);
    }

    public PhotoEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void e() {
        int i;
        View view;
        boolean z;
        boolean equals = PhoneCapabilityTester.IsAsusDevice() ? "asus.local.simcard2".equals(this.h.c()) : "SIM2".equals(this.h.b());
        if (this.h != null && equals) {
            this.f1171b.setImageResource(2131165286);
            this.i = true;
            i = -2;
        } else if (this.h == null || !b.a.d.equals(this.h.c())) {
            this.f1171b.setImageResource(2131165278);
            i = 0;
        } else {
            if (com.android.contacts.simcardmanage.b.a(getContext())) {
                this.f1171b.setImageResource(2131165284);
            } else {
                this.f1171b.setImageResource(2131165279);
            }
            this.i = true;
            i = -1;
        }
        k.a(getContext()).a(this.f1171b, i, false);
        if (this.i) {
            view = this.c;
            z = true;
        } else {
            view = this.c;
            z = !this.f && isEnabled();
        }
        view.setEnabled(z);
        this.f1170a = false;
        if (this.d != null) {
            this.d.e = true;
        }
    }

    @Override // com.android.contacts.editor.d
    public final boolean a() {
        return !this.f1170a;
    }

    @Override // com.android.contacts.editor.d
    public final void b() {
    }

    @Override // com.android.contacts.editor.d
    public final void c() {
        e();
    }

    @Override // com.android.contacts.editor.d
    public final void d() {
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f1171b = (ImageView) findViewById(2131297153);
        this.c = findViewById(2131296876);
        this.c.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.editor.PhotoEditorView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (PhotoEditorView.this.e != null && !PhotoEditorView.this.i) {
                    PhotoEditorView.this.e.a(1);
                } else if (PhotoEditorView.this.i) {
                    Toast.makeText(PhotoEditorView.this.getContext(), PhotoEditorView.this.getContext().getResources().getString(2131756136), 1).show();
                }
            }
        });
    }

    @Override // com.android.contacts.editor.d
    public void setDeletable(boolean z) {
    }

    @Override // com.android.contacts.editor.d
    public void setEditorListener(d.a aVar) {
        int i = 0;
        this.e = aVar;
        boolean z = aVar != null;
        View view = this.c;
        if (!z) {
            i = 4;
        }
        view.setVisibility(i);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.c.setEnabled(z);
    }

    public void setPhotoBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            this.d.a("data15", (byte[]) null);
            e();
            if (this.g != null) {
                this.g.a(this.h);
                return;
            }
            return;
        }
        this.f1171b.setImageBitmap(bitmap);
        this.c.setEnabled(isEnabled());
        this.f1170a = true;
        this.d.e = false;
        this.d.r();
        if (this.g != null) {
            this.g.a(this.h);
        }
        int c = q.c(getContext());
        byte[] compressBitmap = ContactPhotoUtils.compressBitmap(Bitmap.createScaledBitmap(bitmap, c, c, false));
        if (compressBitmap != null) {
            this.d.a(compressBitmap);
        }
    }

    public void setPhotoChangedListener(b bVar) {
        this.g = bVar;
    }

    public void setSuperPrimary(boolean z) {
        this.d.a("is_super_primary", z ? 1 : 0);
        if (z && this.g != null) {
            this.g.a(this.h);
        }
    }

    @Override // com.android.contacts.editor.d
    public void setValues(com.android.contacts.model.a.b bVar, RawContactDelta.ValuesDelta valuesDelta, RawContactDelta rawContactDelta, boolean z, ViewIdGenerator viewIdGenerator) {
        this.d = valuesDelta;
        this.f = z;
        setId(viewIdGenerator.a(rawContactDelta, bVar, valuesDelta, 0));
        this.h = rawContactDelta;
        if (valuesDelta != null) {
            byte[] c = valuesDelta.c("data15");
            if (c != null) {
                this.f1171b.setImageBitmap(BitmapFactory.decodeByteArray(c, 0, c.length));
                this.c.setEnabled(isEnabled());
                this.f1170a = true;
                this.d.e = false;
                return;
            }
            e();
            return;
        }
        e();
    }
}
