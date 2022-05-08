package gogolook.callgogolook2.messaging.p078ui.contact;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.p078ui.ContactIconView;
import p081h.p093b.p099c.p100a.C5607h;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.p478y.C11593a;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12155e;
/* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactListItemView */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactListItemView.class */
public class ContactListItemView extends LinearLayout implements View.OnClickListener {

    /* renamed from: a */
    public final C11593a f11581a = AbstractC11528g.m9259k().mo9258a();

    /* renamed from: b */
    public TextView f11582b;

    /* renamed from: c */
    public TextView f11583c;

    /* renamed from: d */
    public TextView f11584d;

    /* renamed from: e */
    public TextView f11585e;

    /* renamed from: f */
    public ContactIconView f11586f;

    /* renamed from: g */
    public ImageView f11587g;

    /* renamed from: h */
    public View f11588h;

    /* renamed from: i */
    public AbstractC4717a f11589i;

    /* renamed from: j */
    public boolean f11590j;

    /* renamed from: k */
    public boolean f11591k;

    /* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactListItemView$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactListItemView$a.class */
    public interface AbstractC4717a {
        /* renamed from: a */
        void mo7938a(C11593a aVar, ContactListItemView contactListItemView);

        /* renamed from: a */
        boolean mo7939a(C11593a aVar);
    }

    public ContactListItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public final void m27275a() {
        this.f11582b.setText(this.f11581a.m9023f());
        this.f11583c.setText(this.f11581a.m9026c());
        this.f11584d.setText(ContactsContract.CommonDataKinds.Phone.getTypeLabel(getResources(), this.f11581a.m9024e(), this.f11581a.m9025d()));
        C5607h i = this.f11581a.m9020i();
        String valueOf = String.valueOf(this.f11581a.m9026c());
        int i2 = 8;
        if (this.f11581a.m9022g()) {
            this.f11586f.m27372a(this.f11581a.m9027b() > 0 ? C12155e.m6975a(ParticipantData.m27540a(i)) : Uri.parse("android.resource://gogolook.callgogolook2.messaging/2131231538"), this.f11581a.m9027b(), this.f11581a.m9021h(), valueOf);
            this.f11586f.setVisibility(0);
            this.f11587g.setVisibility(8);
            this.f11584d.setVisibility(8);
            this.f11583c.setVisibility(8);
            this.f11582b.setVisibility(0);
        } else {
            this.f11586f.m27372a(this.f11581a.m9027b() > 0 ? C12155e.m6975a(ParticipantData.m27540a(i)) : Uri.parse("android.resource://gogolook.callgogolook2.messaging/2131231538"), this.f11581a.m9027b(), this.f11581a.m9021h(), valueOf);
            this.f11586f.setVisibility(0);
            this.f11582b.setVisibility(0);
            boolean a = this.f11589i.mo7939a(this.f11581a);
            setSelected(a);
            this.f11587g.setVisibility(a ? 0 : 8);
            this.f11583c.setVisibility(0);
            this.f11584d.setVisibility(8);
        }
        if (this.f11590j) {
            this.f11585e.setVisibility(0);
            this.f11585e.setText(this.f11581a.m9030a());
        } else {
            this.f11585e.setVisibility(8);
        }
        View view = this.f11588h;
        if (this.f11591k) {
            i2 = 0;
        }
        view.setVisibility(i2);
    }

    /* renamed from: a */
    public void m27274a(Cursor cursor, AbstractC4717a aVar, boolean z, String str) {
        this.f11581a.m9029a(cursor, str);
        this.f11589i = aVar;
        this.f11590j = z;
        this.f11591k = false;
        setOnClickListener(this);
        m27275a();
    }

    /* renamed from: a */
    public void m27273a(C5607h hVar, CharSequence charSequence, CharSequence charSequence2, AbstractC4717a aVar, boolean z) {
        this.f11581a.m9028a(hVar, charSequence, charSequence2, z);
        this.f11589i = aVar;
        this.f11590j = false;
        this.f11591k = true;
        m27275a();
    }

    /* renamed from: a */
    public void m27272a(boolean z) {
        this.f11586f.m27371a(z);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z = true;
        C12151d.m6999b(view == this);
        if (this.f11589i == null) {
            z = false;
        }
        C12151d.m6999b(z);
        this.f11589i.mo7938a(this.f11581a, this);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        this.f11582b = (TextView) findViewById(R$id.contact_name);
        this.f11583c = (TextView) findViewById(R$id.contact_details);
        this.f11584d = (TextView) findViewById(R$id.contact_detail_type);
        this.f11585e = (TextView) findViewById(R$id.alphabet_header);
        this.f11586f = (ContactIconView) findViewById(R$id.contact_icon);
        this.f11587g = (ImageView) findViewById(R$id.contact_checkmark);
        this.f11588h = findViewById(R$id.bottom_divider);
    }
}
