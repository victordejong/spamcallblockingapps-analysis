package p459j.p460a.p463b0.p466s;

import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.gogolook.commonlib.view.IconFontTextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import gogolook.callgogolook2.view.RoundImageView;
import gogolook.callgogolook2.view.SizedTextView;
import io.realm.RealmObject;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p463b0.p464q.C11175m;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15162x;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� 22\b\u0012\u0004\u0012\u00020\u00020\u0001:\u000223B\u0005¢\u0006\u0002\u0010\u0003J#\u0010 \u001a\u0004\u0018\u00010\u00142\b\u0010!\u001a\u0004\u0018\u00010\r2\b\u0010\"\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0002\u0010#J\b\u0010$\u001a\u00020\rH\u0016J\u0010\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020\rH\u0016J\u0018\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\rH\u0016J\u0018\u0010*\u001a\u00020\u00022\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\rH\u0016J\u0010\u0010.\u001a\u00020(2\u0006\u0010)\u001a\u00020/H\u0002J\u0018\u00100\u001a\u00020(2\u0006\u0010)\u001a\u0002012\u0006\u0010&\u001a\u00020\rH\u0002R4\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u000e\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u00064"}, m815d2 = {"Lgogolook/callgogolook2/main/dialer/DialerPageRecyclerViewAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "()V", C13032a.f29462d, "", "Lio/realm/RealmObject;", "dialerLogs", "getDialerLogs", "()Ljava/util/List;", "setDialerLogs", "(Ljava/util/List;)V", "headerHeight", "", "highlightColor", "getHighlightColor", "()I", "setHighlightColor", "(I)V", "highlightKey", "", "getHighlightKey", "()Ljava/lang/String;", "setHighlightKey", "(Ljava/lang/String;)V", "listViewHeight", "onDialerItemClickListener", "Lgogolook/callgogolook2/main/dialer/DialerPageRecyclerViewAdapter$OnDialerItemClickListener;", "getOnDialerItemClickListener", "()Lgogolook/callgogolook2/main/dialer/DialerPageRecyclerViewAdapter$OnDialerItemClickListener;", "setOnDialerItemClickListener", "(Lgogolook/callgogolook2/main/dialer/DialerPageRecyclerViewAdapter$OnDialerItemClickListener;)V", "getDesc", "type", "content", "(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;", "getItemCount", "getItemViewType", "position", "onBindViewHolder", "", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "setEmptyItem", "Lgogolook/callgogolook2/main/dialer/DialerEmptyItemViewHolder;", "setLogItem", "Lgogolook/callgogolook2/main/dialer/DialerLogItemViewHolder;", "Companion", "OnDialerItemClickListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.s.r */
/* loaded from: classes2-dex2jar.jar:j/a/b0/s/r.class */
public final class C11293r extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a */
    public AbstractC11295b f25355a;

    /* renamed from: b */
    public int f25356b;

    /* renamed from: c */
    public int f25357c;

    /* renamed from: d */
    public String f25358d;

    /* renamed from: e */
    public int f25359e;

    /* renamed from: f */
    public List<? extends RealmObject> f25360f;

    /* renamed from: h */
    public static final C11294a f25354h = new C11294a(null);

    /* renamed from: g */
    public static Map<String, RowInfo> f25353g = new HashMap();

    /* renamed from: j.a.b0.s.r$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/r$a.class */
    public static final class C11294a {
        public C11294a() {
        }

        public /* synthetic */ C11294a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final Map<String, RowInfo> m9860a() {
            return C11293r.f25353g;
        }
    }

    /* renamed from: j.a.b0.s.r$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/r$b.class */
    public interface AbstractC11295b {
        /* renamed from: a */
        void mo9859a(RealmObject realmObject);

        /* renamed from: b */
        void mo9858b(RealmObject realmObject);

        /* renamed from: c */
        void mo9857c(RealmObject realmObject);
    }

    /* renamed from: j.a.b0.s.r$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/r$c.class */
    public static final class View$OnClickListenerC11296c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ RealmObject f25361a;

        /* renamed from: b */
        public final /* synthetic */ C11293r f25362b;

        public View$OnClickListenerC11296c(RealmObject realmObject, C11293r rVar, int i, C11290p pVar, C15162x xVar, C15164z zVar, C15162x xVar2, C15164z zVar2, C15164z zVar3, C15162x xVar3) {
            this.f25361a = realmObject;
            this.f25362b = rVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC11295b a = this.f25362b.m9869a();
            if (a != null) {
                a.mo9857c(this.f25361a);
            }
        }
    }

    /* renamed from: j.a.b0.s.r$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/r$d.class */
    public static final class View$OnClickListenerC11297d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ RealmObject f25363a;

        /* renamed from: b */
        public final /* synthetic */ C11293r f25364b;

        public View$OnClickListenerC11297d(RealmObject realmObject, C11293r rVar, int i, C11290p pVar, C15162x xVar, C15164z zVar, C15162x xVar2, C15164z zVar2, C15164z zVar3, C15162x xVar3) {
            this.f25363a = realmObject;
            this.f25364b = rVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC11295b a = this.f25364b.m9869a();
            if (a != null) {
                a.mo9859a(this.f25363a);
            }
        }
    }

    /* renamed from: j.a.b0.s.r$e */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/r$e.class */
    public static final class View$OnLongClickListenerC11298e implements View.OnLongClickListener {

        /* renamed from: a */
        public final /* synthetic */ RealmObject f25365a;

        /* renamed from: b */
        public final /* synthetic */ C11293r f25366b;

        public View$OnLongClickListenerC11298e(RealmObject realmObject, C11293r rVar, int i, C11290p pVar, C15162x xVar, C15164z zVar, C15162x xVar2, C15164z zVar2, C15164z zVar3, C15162x xVar3) {
            this.f25365a = realmObject;
            this.f25366b = rVar;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            AbstractC11295b a = this.f25366b.m9869a();
            if (a == null) {
                return true;
            }
            a.mo9858b(this.f25365a);
            return true;
        }
    }

    /* renamed from: j.a.b0.s.r$f */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/r$f.class */
    public static final class RunnableC11299f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C15164z f25367a;

        /* renamed from: b */
        public final /* synthetic */ C11290p f25368b;

        public RunnableC11299f(C11293r rVar, C15162x xVar, C15164z zVar, C15164z zVar2, C15164z zVar3, C15162x xVar2, String str, C11290p pVar, C15162x xVar3) {
            this.f25367a = zVar;
            this.f25368b = pVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C11052i.m10328e().m10340a((String) this.f25367a.f33152a, this.f25368b.m9876b(), 0, EnumC11047e.CallLog);
        }
    }

    /* renamed from: a */
    public final AbstractC11295b m9869a() {
        return this.f25355a;
    }

    /* renamed from: a */
    public final String m9864a(Integer num, String str) {
        String str2;
        int i = -1;
        if (!LogsGroupRealmObject.Companion.m26399d(num != null ? num.intValue() : -1)) {
            LogsGroupRealmObject.C5082a aVar = LogsGroupRealmObject.Companion;
            if (num != null) {
                i = num.intValue();
            }
            str2 = aVar.m26401b(i) ? C14206w4.m2225a((int) R$string.main_filter_mms) : null;
        } else if (TextUtils.isEmpty(str)) {
            str2 = C14206w4.m2225a((int) R$string.main_sms_notshow_fix);
        } else {
            str2 = C14206w4.m2225a((int) R$string.main_filter_sms) + " : " + str;
        }
        return str2;
    }

    /* renamed from: a */
    public final void m9868a(int i) {
        this.f25359e = i;
    }

    /* renamed from: a */
    public final void m9867a(C11268l lVar) {
        View view = lVar.itemView;
        if (getItemCount() > 2) {
            view.setVisibility(8);
            view.getLayoutParams().height = 0;
            return;
        }
        view.setVisibility(0);
        view.getLayoutParams().height = this.f25356b - this.f25357c;
    }

    /* JADX WARN: Type inference failed for: r1v107, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v110, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v112, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v120, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v124, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v126, types: [T, java.lang.String] */
    /* renamed from: a */
    public final void m9866a(C11290p pVar, int i) {
        C15162x xVar = new C15162x();
        xVar.f33150a = -1;
        C15164z zVar = new C15164z();
        zVar.f33152a = "";
        C15162x xVar2 = new C15162x();
        xVar2.f33150a = -1;
        C15164z zVar2 = new C15164z();
        zVar2.f33152a = "";
        C15164z zVar3 = new C15164z();
        zVar3.f33152a = "";
        C15162x xVar3 = new C15162x();
        xVar3.f33150a = -1;
        List<? extends RealmObject> list = this.f25360f;
        if (list != null) {
            RealmObject realmObject = (RealmObject) list.get(i - 2);
            pVar.m9873c();
            pVar.itemView.setOnClickListener(new View$OnClickListenerC11296c(realmObject, this, i, pVar, xVar, zVar, xVar2, zVar2, zVar3, xVar3));
            View view = pVar.itemView;
            C15149k.m383a((Object) view, "holder.itemView");
            ((IconFontTextView) view.findViewById(R$id.iftvCall)).setOnClickListener(new View$OnClickListenerC11297d(realmObject, this, i, pVar, xVar, zVar, xVar2, zVar2, zVar3, xVar3));
            pVar.itemView.setOnLongClickListener(new View$OnLongClickListenerC11298e(realmObject, this, i, pVar, xVar, zVar, xVar2, zVar2, zVar3, xVar3));
            pVar.m9874b(this.f25358d);
            pVar.m9881a(this.f25359e);
            if (realmObject instanceof CacheIndexRealmObject) {
                CacheIndexRealmObject cacheIndexRealmObject = (CacheIndexRealmObject) realmObject;
                xVar.f33150a = (int) cacheIndexRealmObject.getContact_id();
                zVar.f33152a = cacheIndexRealmObject.getNumber();
                xVar2.f33150a = cacheIndexRealmObject.getRef_type();
                zVar2.f33152a = cacheIndexRealmObject.getDisplay_name();
                zVar3.f33152a = cacheIndexRealmObject.getE164();
                xVar3.f33150a = (int) cacheIndexRealmObject.get_id();
            } else if (realmObject instanceof LogsGroupRealmObject) {
                LogsGroupRealmObject logsGroupRealmObject = (LogsGroupRealmObject) realmObject;
                xVar.f33150a = logsGroupRealmObject.getContact_id();
                zVar.f33152a = logsGroupRealmObject.getNumber();
                Integer type = logsGroupRealmObject.getType();
                xVar2.f33150a = type != null ? type.intValue() : -1;
                zVar2.f33152a = logsGroupRealmObject.getContactName();
                zVar3.f33152a = logsGroupRealmObject.getE164();
                xVar3.f33150a = (int) logsGroupRealmObject.getId();
            }
        }
        View view2 = pVar.itemView;
        ImageView imageView = (ImageView) view2.findViewById(R$id.ivSpamIcon);
        C15149k.m383a((Object) imageView, "ivSpamIcon");
        imageView.setVisibility(8);
        if (xVar.f33150a > 0) {
            CallUtils.m26576a((RoundImageView) view2.findViewById(R$id.ivMetaphor), (ImageView) view2.findViewById(R$id.ivSpamIcon), (RowInfo) null, String.valueOf(xVar.f33150a), CallUtils.EnumC4993l.MAIN_CALL_LOG_FRAGMENT);
        } else {
            ((RoundImageView) view2.findViewById(R$id.ivMetaphor)).setImageResource(C13909c.m3071b().m3077v().m3069a());
        }
        if (TextUtils.isEmpty((String) zVar.f33152a)) {
            SizedTextView sizedTextView = (SizedTextView) view2.findViewById(R$id.stvNumber);
            C15149k.m383a((Object) sizedTextView, "stvNumber");
            sizedTextView.setText(C11175m.f25094f.m10131a((String) zVar2.f33152a, (String) zVar3.f33152a));
            ((SizedTextView) view2.findViewById(R$id.stvNumber)).setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            LinearLayout linearLayout = (LinearLayout) view2.findViewById(R$id.llSecondaryNumberInfo);
            C15149k.m383a((Object) linearLayout, "llSecondaryNumberInfo");
            linearLayout.setVisibility(8);
            SizedTextView sizedTextView2 = (SizedTextView) view2.findViewById(R$id.stvContent);
            C15149k.m383a((Object) sizedTextView2, "stvContent");
            sizedTextView2.setVisibility(8);
            int i2 = xVar2.f33150a;
            if (i2 == 33 || i2 == 34 || i2 == 65 || i2 == 66) {
                String a = m9864a(Integer.valueOf(xVar2.f33150a), "");
                if (!TextUtils.isEmpty(a)) {
                    SizedTextView sizedTextView3 = (SizedTextView) view2.findViewById(R$id.stvContent);
                    C15149k.m383a((Object) sizedTextView3, "stvContent");
                    sizedTextView3.setText(a);
                    SizedTextView sizedTextView4 = (SizedTextView) view2.findViewById(R$id.stvContent);
                    C15149k.m383a((Object) sizedTextView4, "stvContent");
                    sizedTextView4.setVisibility(0);
                    return;
                }
                return;
            }
            return;
        }
        pVar.m9872c((String) zVar.f33152a);
        pVar.m9878a((String) zVar2.f33152a);
        pVar.m9880a(xVar.f33150a);
        pVar.m9879a((CharSequence) m9864a(Integer.valueOf(xVar2.f33150a), ""));
        pVar.m9875b(xVar2.f33150a);
        NumberInfo a2 = C11052i.m10328e().m10339a((String) zVar3.f33152a, false);
        if (a2 != null) {
            pVar.m9876b().mo1836b((String) zVar.f33152a, a2);
            return;
        }
        String a3 = C11289o.f25341a.m9885a((String) zVar.f33152a, xVar2.f33150a);
        CharSequence a4 = C11289o.f25341a.m9883a((String) zVar.f33152a, a3, this.f25358d, this.f25359e);
        SizedTextView sizedTextView5 = (SizedTextView) view2.findViewById(R$id.stvNumber);
        C15149k.m383a((Object) sizedTextView5, "stvNumber");
        if (a4 == null || a4.length() == 0) {
            a4 = a3;
        }
        sizedTextView5.setText(a4);
        LinearLayout linearLayout2 = (LinearLayout) view2.findViewById(R$id.llSecondaryNumberInfo);
        C15149k.m383a((Object) linearLayout2, "llSecondaryNumberInfo");
        linearLayout2.setVisibility(0);
        SizedTextView sizedTextView6 = (SizedTextView) view2.findViewById(R$id.stvSecondaryNumberInfoFirstItem);
        C15149k.m383a((Object) sizedTextView6, "stvSecondaryNumberInfoFirstItem");
        sizedTextView6.setVisibility(8);
        SizedTextView sizedTextView7 = (SizedTextView) view2.findViewById(R$id.stvSecondaryNumberInfoSecondItem);
        C15149k.m383a((Object) sizedTextView7, "stvSecondaryNumberInfoSecondItem");
        sizedTextView7.setVisibility(8);
        SizedTextView sizedTextView8 = (SizedTextView) view2.findViewById(R$id.stvContent);
        C15149k.m383a((Object) sizedTextView8, "stvContent");
        sizedTextView8.setVisibility(8);
        if (xVar3.f33150a < 0) {
            new Handler().postDelayed(new RunnableC11299f(this, xVar, zVar, zVar2, zVar3, xVar2, "", pVar, xVar3), 500L);
        } else {
            C11052i.m10328e().m10340a((String) zVar.f33152a, pVar.m9876b(), 0, EnumC11047e.CallLog);
        }
    }

    /* renamed from: a */
    public final void m9865a(AbstractC11295b bVar) {
        this.f25355a = bVar;
    }

    /* renamed from: a */
    public final void m9863a(String str) {
        this.f25358d = str;
    }

    /* renamed from: a */
    public final void m9862a(List<? extends RealmObject> list) {
        this.f25360f = list;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<? extends RealmObject> list = this.f25360f;
        return (list != null ? list.size() : 0) + 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        int i2 = 1;
        if (i == 0) {
            i2 = 0;
        } else if (i != 1) {
            i2 = 2;
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        C15149k.m377b(viewHolder, "holder");
        if (viewHolder instanceof C11290p) {
            m9866a((C11290p) viewHolder, i);
        } else if (!(viewHolder instanceof C11288n) && (viewHolder instanceof C11268l)) {
            m9867a((C11268l) viewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        if (this.f25356b == 0) {
            this.f25356b = viewGroup.getMeasuredHeight();
        }
        if (this.f25357c == 0 && viewGroup.getChildAt(0) != null) {
            View childAt = viewGroup.getChildAt(0);
            C15149k.m383a((Object) childAt, "parent.getChildAt(0)");
            this.f25357c = childAt.getMeasuredHeight();
        }
        return i != 0 ? i != 1 ? i != 2 ? new C11290p(viewGroup) : new C11290p(viewGroup) : new C11268l(viewGroup) : new C11288n(viewGroup);
    }
}
