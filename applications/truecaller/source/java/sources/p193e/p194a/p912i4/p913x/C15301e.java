package p193e.p194a.p912i4.p913x;

import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.notifications.enhancing.SourcedContact;
import com.truecaller.p183ui.components.AvatarView;
import java.util.List;
import p193e.p194a.p1406z3.C21853e;
import s1.z.c.l;
/* renamed from: e.a.i4.x.e */
/* loaded from: classes11-dex2jar.jar:e/a/i4/x/e.class */
public final class C15301e extends RecyclerView.AbstractC0317g<C15303b> {

    /* renamed from: a */
    public final C21853e f43547a;

    /* renamed from: b */
    public final List<SourcedContact> f43548b;

    /* renamed from: c */
    public final AbstractC15302a f43549c;

    /* renamed from: e.a.i4.x.e$a */
    /* loaded from: classes11-dex2jar.jar:e/a/i4/x/e$a.class */
    public interface AbstractC15302a {
    }

    /* renamed from: e.a.i4.x.e$b */
    /* loaded from: classes11-dex2jar.jar:e/a/i4/x/e$b.class */
    public static final class C15303b extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final AvatarView f43550a;

        /* renamed from: b */
        public final ImageView f43551b;

        /* renamed from: c */
        public final TextView f43552c;

        /* renamed from: d */
        public final TextView f43553d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15303b(View view) {
            super(view);
            l.e(view, ViewAction.VIEW);
            View findViewById = view.findViewById(2131362231);
            l.d(findViewById, "view.findViewById(R.id.avatar)");
            this.f43550a = (AvatarView) findViewById;
            View findViewById2 = view.findViewById(C2752R.C2754id.appIcon);
            l.d(findViewById2, "view.findViewById(R.id.appIcon)");
            this.f43551b = (ImageView) findViewById2;
            View findViewById3 = view.findViewById(2131362898);
            l.d(findViewById3, "view.findViewById(R.id.contactName)");
            this.f43552c = (TextView) findViewById3;
            View findViewById4 = view.findViewById(C2752R.C2754id.appAndSearchTerm);
            l.d(findViewById4, "view.findViewById(R.id.appAndSearchTerm)");
            this.f43553d = (TextView) findViewById4;
        }
    }

    public C15301e(C21853e c21853e, List<SourcedContact> list, AbstractC15302a abstractC15302a) {
        l.e(c21853e, "glide");
        l.e(list, RemoteMessageConst.DATA);
        l.e(abstractC15302a, "listener");
        this.f43547a = c21853e;
        this.f43548b = list;
        this.f43549c = abstractC15302a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f43548b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C15303b c15303b, int i) {
        C15303b c15303b2 = c15303b;
        l.e(c15303b2, "holder");
        C21853e c21853e = this.f43547a;
        SourcedContact sourcedContact = this.f43548b.get(i);
        AbstractC15302a abstractC15302a = this.f43549c;
        l.e(c21853e, "glide");
        l.e(sourcedContact, "item");
        l.e(abstractC15302a, "listener");
        c15303b2.f43552c.setText(sourcedContact.f14106e);
        String string = c15303b2.f43553d.getContext().getString(C2752R.string.EnhancedNotificationAppNameAndSearchTerm, sourcedContact.f14103b, sourcedContact.f14107f);
        l.d(string, "appAndSearchTerm.context… item.label, item.number)");
        c15303b2.f43553d.setText(string);
        c15303b2.f43550a.m34542b(sourcedContact.f14109h, sourcedContact.f14108g, false, false);
        String str = sourcedContact.f14102a;
        Uri uri = null;
        if (str != null) {
            uri = Uri.fromParts("appicon", str, null);
        }
        c21853e.m8960z(uri).m8427O(c15303b2.f43551b);
        c15303b2.itemView.setOnClickListener(new View$OnClickListenerC15304f(abstractC15302a, sourcedContact));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C15303b onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C2752R.layout.listitem_sourced_contact, viewGroup, false);
        l.d(inflate, ViewAction.VIEW);
        return new C15303b(inflate);
    }
}
