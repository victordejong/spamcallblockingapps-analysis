package com.android.contacts.list;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.QuickContactBadge;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.contacts.k;
import com.android.contacts.list.w;
import com.android.contacts.q;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ContactTileView.class */
public abstract class ContactTileView extends FrameLayout {
    private static final String i = ContactTileView.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    Uri f1735a;

    /* renamed from: b  reason: collision with root package name */
    QuickContactBadge f1736b;
    View c;
    protected a d;
    String e;
    w.a f;
    ImageButton g;
    int h;
    private ImageView j;
    private TextView k;
    private TextView l;
    private TextView m;
    private TextView n;
    private k o = null;
    private View p;
    private int q;
    private ImageView r;
    private boolean s;
    private RelativeLayout t;
    private int u;
    private long v;
    private Context w;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/ContactTileView$a.class */
    public interface a {
        void a();

        void a(Uri uri);

        void a(Uri uri, String str);

        void a(w.a aVar);

        int b();

        int c();
    }

    public ContactTileView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.s = PhoneCapabilityTester.isPhone(context);
    }

    protected abstract int a();

    public void a(w.a aVar) {
        b(aVar);
    }

    protected View.OnClickListener b() {
        return new View.OnClickListener() { // from class: com.android.contacts.list.ContactTileView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (ContactTileView.this.d != null && !ContactTileView.this.d()) {
                    a aVar = ContactTileView.this.d;
                    Uri uri = ContactTileView.this.f1735a;
                    ContactTileView.this.getContext();
                    q.a(ContactTileView.this);
                    aVar.a(uri, "showContactDetail");
                }
            }
        };
    }

    public final void b(w.a aVar) {
        if (aVar != null) {
            this.e = aVar.f1895b;
            this.k.setText(aVar.f1895b);
            this.f1735a = aVar.g;
            this.f = aVar;
            this.q = aVar.j;
            this.h = aVar.l;
            if (this.l != null) {
                if (aVar.c == null) {
                    this.l.setVisibility(8);
                } else {
                    this.l.setText(aVar.c);
                    this.l.setCompoundDrawablesWithIntrinsicBounds(aVar.i, (Drawable) null, (Drawable) null, (Drawable) null);
                    this.l.setVisibility(0);
                }
            }
            if (this.m != null) {
                this.m.setText(aVar.d);
            }
            if (this.n != null) {
                this.n.setText(aVar.e);
            }
            if (aVar.n == 0 || !this.s) {
                if (this.g != null) {
                    this.g.setVisibility(8);
                }
            } else if (this.g != null) {
                this.g.setVisibility(0);
            }
            this.k.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            setVisibility(0);
            if (this.o == null) {
                Log.w(i, "contactPhotoManager not set");
            } else if (this.j != null) {
                if (this.q == 1) {
                    this.o.a(this.j, -1L, this.d.c());
                } else if (this.q == 2) {
                    this.o.a(this.j, -2L, this.d.c());
                } else {
                    this.o.a(this.j, aVar.f, 801, this.d.c());
                }
                if (this.r != null) {
                    if (aVar.l >= 0) {
                        setMinBirthday(aVar.l, this.r);
                        this.r.setVisibility(0);
                    } else {
                        this.r.setVisibility(8);
                    }
                }
                if (this.f1736b != null) {
                    this.f1736b.assignContactUri(this.f1735a);
                }
            } else if (this.f1736b != null) {
                this.f1736b.assignContactUri(this.f1735a);
                if (this.q == 1) {
                    this.o.a((ImageView) this.f1736b, -1L, false);
                } else if (this.q == 1) {
                    this.o.a((ImageView) this.f1736b, -2L, false);
                } else {
                    this.o.a(this.f1736b, aVar.f, a());
                }
            }
            this.v = aVar.f1894a;
            if (d()) {
                this.j.setImageResource(2131165243);
                if (this.c != null) {
                    this.c.setBackground(null);
                }
            }
            if (this.c != null) {
                this.c.setContentDescription(aVar.f1895b);
            } else if (this.f1736b != null) {
                this.f1736b.setContentDescription(aVar.f1895b);
            }
        } else {
            setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final a c() {
        return this.d;
    }

    public final boolean d() {
        return this.v == 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.k = (TextView) findViewById(2131296592);
        this.k.setTextColor(getResources().getColorStateList(2131034210));
        this.f1736b = (QuickContactBadge) findViewById(2131296596);
        this.j = (ImageView) findViewById(2131296587);
        this.l = (TextView) findViewById(2131296598);
        this.m = (TextView) findViewById(2131296594);
        this.n = (TextView) findViewById(2131296593);
        this.c = findViewById(2131296595);
        this.p = findViewById(2131296586);
        this.r = (ImageView) findViewById(2131296353);
        this.g = (ImageButton) findViewById(2131296597);
        this.t = (RelativeLayout) findViewById(2131296577);
        View.OnClickListener b2 = b();
        View.OnLongClickListener onLongClickListener = new View.OnLongClickListener() { // from class: com.android.contacts.list.ContactTileView.2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                if (ContactTileView.this.d == null) {
                    return true;
                }
                ContactTileView.this.d.a(ContactTileView.this.f);
                return true;
            }
        };
        if (this.j != null) {
            this.j.setOnClickListener(b2);
            this.j.setOnLongClickListener(onLongClickListener);
        }
        if (this.c != null) {
            this.c.setOnClickListener(b2);
            this.c.setOnLongClickListener(onLongClickListener);
            return;
        }
        setOnClickListener(b2);
        setOnLongClickListener(onLongClickListener);
        this.f1736b.setOnLongClickListener(onLongClickListener);
    }

    public void setColumnIndex(int i2, boolean z) {
        this.u = i2;
        this.j.setTag(Integer.valueOf(i2 % 2));
        if (this.t != null) {
            if (this.u % 2 != 0 || z) {
                if (this.l != null) {
                    this.l.setBackgroundResource(2131034335);
                }
            } else if (this.l != null) {
                this.l.setBackgroundResource(2131034334);
            }
            this.t.setBackgroundColor(0);
        }
    }

    public void setContext(Context context) {
        this.w = context;
    }

    public void setHorizontalDividerVisibility(int i2) {
        if (this.p != null) {
            this.p.setVisibility(i2);
        }
    }

    public void setListener(a aVar) {
        this.d = aVar;
    }

    public void setMinBirthday(int i2, ImageView imageView) {
        if (i2 != -1) {
            if ((i2 == 0 ? 'x' : (char) 65535) != 65535) {
                imageView.setBackgroundResource(2131165304);
            }
        }
    }

    public void setPhotoDimension(int i2, int i3) {
        this.j.getLayoutParams().width = i2;
        this.j.getLayoutParams().height = i3;
    }

    public void setPhotoImageResourse(int i2) {
        this.j.setBackgroundResource(i2);
    }

    public void setPhotoManager(k kVar) {
        this.o = kVar;
    }
}
