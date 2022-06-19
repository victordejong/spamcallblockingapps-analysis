package p193e.p194a.p682e.p699c2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.truecaller.C2752R;
import com.truecaller.calling.dialer.call_log.data.CallLogItemType;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.callrecording.analytics.RecordingAnalyticsSource;
import com.truecaller.data.entity.CallRecording;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import com.truecaller.multisim.SimInfo;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1818g.C26536a;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1827l.p1828a.AbstractC26642a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19102s1;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p712e4.AbstractC13477b0;
import p193e.p194a.p997k3.AbstractC16458h;
import p193e.p194a.p997k3.C16447a;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.e.c2.y */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/y.class */
public class C13218y extends AbstractC26642a {

    /* renamed from: A */
    public final AbstractC19102s1 f38388A;

    /* renamed from: B */
    public final CallRecordingManager f38389B;

    /* renamed from: C */
    public final AbstractC19223c0 f38390C;

    /* renamed from: D */
    public final AbstractC16458h f38391D = new C16447a();

    /* renamed from: E */
    public final AbstractC16498f f38392E;

    /* renamed from: J */
    public final AbstractC18951b0 f38393J;

    /* renamed from: K */
    public final AbstractC13477b0 f38394K;

    /* renamed from: i */
    public final LayoutInflater f38395i;

    /* renamed from: j */
    public final Drawable f38396j;

    /* renamed from: k */
    public final Drawable f38397k;

    /* renamed from: l */
    public final Drawable f38398l;

    /* renamed from: m */
    public final Drawable f38399m;

    /* renamed from: n */
    public final Drawable f38400n;

    /* renamed from: o */
    public final Drawable f38401o;

    /* renamed from: p */
    public final Drawable f38402p;

    /* renamed from: q */
    public final Drawable f38403q;

    /* renamed from: r */
    public final Drawable f38404r;

    /* renamed from: s */
    public final Drawable f38405s;

    /* renamed from: t */
    public final Drawable f38406t;

    /* renamed from: u */
    public final Drawable f38407u;

    /* renamed from: v */
    public final int f38408v;

    /* renamed from: w */
    public final int f38409w;

    /* renamed from: x */
    public final ColorStateList f38410x;

    /* renamed from: y */
    public final ColorStateList f38411y;

    /* renamed from: z */
    public final boolean f38412z;

    /* renamed from: e.a.e.c2.y$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c2/y$a.class */
    public static class C13219a {

        /* renamed from: a */
        public final TextView f38413a;

        /* renamed from: b */
        public final TextView f38414b;

        /* renamed from: c */
        public final ImageView f38415c;

        /* renamed from: d */
        public final ImageView f38416d;

        /* renamed from: e */
        public final ImageView f38417e;

        public C13219a(View view) {
            int i = C19045j0.f53198b;
            this.f38413a = (TextView) view.findViewById(2131364642);
            this.f38414b = (TextView) view.findViewById(C2752R.C2754id.listItemDetails);
            this.f38415c = (ImageView) view.findViewById(C2752R.C2754id.ListItemSecondaryIcon);
            this.f38416d = (ImageView) view.findViewById(C2752R.C2754id.listItemVideo);
            this.f38417e = (ImageView) view.findViewById(C2752R.C2754id.recordingPlayIcon);
        }
    }

    public C13218y(Context context, CallRecordingManager callRecordingManager, Cursor cursor, boolean z) {
        super(context, null, z);
        this.f38395i = LayoutInflater.from(context);
        this.f38389B = callRecordingManager;
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) context.getApplicationContext()).mo10154s();
        this.f38394K = mo10154s.mo12185u3();
        this.f38412z = mo10154s.mo11636l().mo21740h();
        this.f38388A = mo10154s.mo12170v4();
        this.f38390C = mo10154s.mo12349i();
        this.f38392E = mo10154s.mo12242q0();
        this.f38393J = mo10154s.mo12399e7();
        this.f38408v = C19291g.m13612L(context, C2752R.attr.theme_spamColor);
        this.f38409w = C19291g.m13612L(context, 2130970408);
        ColorStateList m13609M = C19291g.m13609M(context, C2752R.attr.list_secondaryTextColor);
        this.f38410x = m13609M;
        ColorStateList m13609M2 = C19291g.m13609M(context, C2752R.attr.dialer_list_redColor);
        this.f38411y = m13609M2;
        C26536a c26536a = C8605o.f26448a;
        Drawable mutate = context.getResources().getDrawable(C2752R.C2753drawable.ic_incoming, context.getTheme()).mutate();
        this.f38396j = mutate;
        mutate.setTintList(m13609M);
        Drawable mutate2 = context.getResources().getDrawable(C2752R.C2753drawable.ic_missed_call, context.getTheme()).mutate();
        this.f38399m = mutate2;
        mutate2.setTintList(m13609M2);
        Drawable mutate3 = context.getResources().getDrawable(C2752R.C2753drawable.ic_missed_call, context.getTheme()).mutate();
        this.f38400n = mutate3;
        mutate3.setTintList(m13609M2);
        Drawable mutate4 = context.getResources().getDrawable(C2752R.C2753drawable.ic_outgoing, context.getTheme()).mutate();
        this.f38397k = mutate4;
        mutate4.setTintList(m13609M);
        Drawable mutate5 = context.getResources().getDrawable(C2752R.C2753drawable.ic_outgoing, context.getTheme()).mutate();
        this.f38398l = mutate5;
        mutate5.setTintList(m13609M);
        Drawable mutate6 = context.getResources().getDrawable(C2752R.C2753drawable.ic_blocked_call, context.getTheme()).mutate();
        this.f38401o = mutate6;
        mutate6.setTintList(m13609M2);
        Drawable mutate7 = context.getResources().getDrawable(C2752R.C2753drawable.ic_muted_call, context.getTheme()).mutate();
        this.f38402p = mutate7;
        mutate7.setTintList(m13609M2);
        Drawable mutate8 = context.getResources().getDrawable(C2752R.C2753drawable.ic_sim_1_small, context.getTheme()).mutate();
        this.f38403q = mutate8;
        mutate8.setTintList(m13609M);
        Drawable mutate9 = context.getResources().getDrawable(C2752R.C2753drawable.ic_sim_1_small, context.getTheme()).mutate();
        this.f38404r = mutate9;
        mutate9.setTintList(m13609M2);
        Drawable mutate10 = context.getResources().getDrawable(C2752R.C2753drawable.ic_sim_2_small, context.getTheme()).mutate();
        this.f38405s = mutate10;
        mutate10.setTintList(m13609M);
        Drawable mutate11 = context.getResources().getDrawable(C2752R.C2753drawable.ic_sim_2_small, context.getTheme()).mutate();
        this.f38406t = mutate11;
        mutate11.setTintList(m13609M2);
        Drawable mutate12 = context.getResources().getDrawable(C2752R.C2753drawable.ic_video, context.getTheme()).mutate();
        this.f38407u = mutate12;
        mutate12.setTintList(m13609M);
    }

    @Override // p1727n3.p1827l.p1828a.AbstractC26642a
    /* renamed from: d */
    public void mo1531d(View view, Context context, Cursor cursor) {
        C13219a c13219a;
        String str;
        SimInfo simInfo;
        int i;
        List<Number> m35557M;
        Object obj;
        HistoryEvent mo16159n = ((AbstractC17373b) cursor).mo16159n();
        Object tag = view.getTag();
        if (tag == null) {
            c13219a = new C13219a(view);
            view.setTag(c13219a);
        } else {
            c13219a = (C13219a) tag;
        }
        if (mo16159n == null) {
            c13219a.f38413a.setText("");
            c13219a.f38414b.setText("");
            c13219a.f38417e.setVisibility(8);
            c13219a.f38416d.setImageDrawable(null);
            c13219a.f38415c.setImageDrawable(null);
            return;
        }
        CallLogItemType resolve = CallLogItemType.resolve(mo16159n, this.f38388A);
        int i2 = mo16159n.f11551r;
        boolean z = i2 == 1 || i2 == 3;
        TextView textView = c13219a.f38413a;
        Contact contact = mo16159n.f11539f;
        String m35496t = contact != null ? contact.m35496t() : mo16159n.f11536c;
        int i3 = C19045j0.f53198b;
        C19045j0.m14196t(textView, C8605o.m28239a(m35496t));
        TextView textView2 = c13219a.f38414b;
        Contact contact2 = mo16159n.f11539f;
        String str2 = (C8574c0.m28353f(mo16159n.f11536c) || !h.m(mo16159n.f11535b)) ? mo16159n.f11536c : mo16159n.f11535b;
        if (str2 != null) {
            String name = resolve.getName(this.f38390C);
            String str3 = name;
            if (name == null) {
                AbstractC19223c0 abstractC19223c0 = this.f38390C;
                AbstractC16458h abstractC16458h = this.f38391D;
                l.e(str2, "normalizedNumber");
                l.e(abstractC19223c0, "resourceProvider");
                l.e(abstractC16458h, "numberTypeLabelProvider");
                if (contact2 != null && (m35557M = contact2.m35557M()) != null) {
                    Iterator<T> it = m35557M.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it.next();
                        Number number = (Number) obj;
                        l.d(number, "it");
                        if (l.a(number.m35479e(), str2)) {
                            break;
                        }
                    }
                    Number number2 = (Number) obj;
                    if (number2 != null) {
                        str3 = C17891a1.C17902k.m15593m0(number2, abstractC19223c0, abstractC16458h);
                    }
                }
                str3 = null;
            }
            str = str3;
            if (str3 == null) {
                Number mo17319a = this.f38392E.mo17319a(str2);
                str = str3;
                if (mo17319a != null) {
                    str = C17891a1.C17902k.m15593m0(mo17319a, this.f38390C, this.f38391D);
                }
            }
        } else {
            str = null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) str);
        sb.append(", ");
        sb.append(this.f38393J.mo14281n(mo16159n.f11541h));
        long j = mo16159n.f11542i;
        if (j > 0) {
            sb.append(" (");
            sb.append(this.f38393J.mo14286i(j));
            sb.append(")");
        }
        C19045j0.m14196t(textView2, sb.toString());
        c13219a.f38414b.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 0, 0);
        TextView textView3 = c13219a.f38414b;
        int m28238b = C8605o.m28238b(view.getContext(), 4.0f);
        AtomicInteger atomicInteger = C26614s.f74505a;
        textView3.setPaddingRelative(m28238b, 0, 0, 0);
        if (this.f38412z && (simInfo = this.f38394K.get(mo16159n.f11544k)) != null && ((i = simInfo.f13983a) == 0 || i == 1)) {
            boolean z2 = z || mo16159n.f11550q == 3;
            c13219a.f38414b.setCompoundDrawablesRelativeWithIntrinsicBounds(i == 0 ? z2 ? this.f38404r : this.f38403q : z2 ? this.f38406t : this.f38405s, (Drawable) null, (Drawable) null, (Drawable) null);
            c13219a.f38414b.setPaddingRelative(0, 0, 0, 0);
        }
        TextView textView4 = c13219a.f38413a;
        int i4 = z ? this.f38408v : this.f38409w;
        if (textView4 != null) {
            textView4.setTextColor(i4);
        }
        ImageView imageView = c13219a.f38415c;
        int i5 = mo16159n.f11551r;
        int i6 = mo16159n.f11550q;
        imageView.setImageDrawable(i5 == 1 ? this.f38401o : i5 == 3 ? this.f38402p : i6 == 1 ? this.f38396j : i6 == 2 ? this.f38397k : i6 == 3 ? this.f38399m : null);
        if (resolve.isVideo()) {
            c13219a.f38416d.setImageDrawable(this.f38407u);
        } else {
            c13219a.f38416d.setImageDrawable(null);
        }
        final CallRecording callRecording = mo16159n.f11547n;
        if (callRecording != null) {
            c13219a.f38417e.setVisibility(0);
            c13219a.f38417e.setOnClickListener(new View.OnClickListener() { // from class: e.a.e.c2.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C13218y c13218y = C13218y.this;
                    c13218y.f38389B.mo17605C(callRecording, RecordingAnalyticsSource.DETAILS_VIEW_CALL_HISTORY);
                }
            });
            return;
        }
        c13219a.f38417e.setOnClickListener(null);
        c13219a.f38417e.setVisibility(8);
    }

    @Override // p1727n3.p1827l.p1828a.AbstractC26642a
    /* renamed from: f */
    public View mo1529f(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f38395i.inflate(C2752R.layout.list_item_details_call_log, viewGroup, false);
    }
}
