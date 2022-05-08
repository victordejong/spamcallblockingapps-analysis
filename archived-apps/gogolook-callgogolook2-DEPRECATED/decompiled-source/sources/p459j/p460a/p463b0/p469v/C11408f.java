package p459j.p460a.p463b0.p469v;

import android.graphics.Color;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import gogolook.callgogolook2.view.RoundImageView;
import gogolook.callgogolook2.view.SizedTextView;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p463b0.p464q.C11175m;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p582w0.C13935c1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� ?2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001?B\u0005¢\u0006\u0002\u0010\u0003J\u0019\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0002\u0010$J\u0012\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020\u0015H\u0002J\b\u0010(\u001a\u00020\u0011H\u0016J\u0010\u0010)\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\u0011H\u0016J\u001f\u0010+\u001a\u00020\u00112\b\u0010,\u001a\u0004\u0018\u00010\u00112\u0006\u0010-\u001a\u00020.H\u0002¢\u0006\u0002\u0010/J&\u00100\u001a\u0004\u0018\u00010&2\u0006\u00101\u001a\u00020\u00112\b\u00102\u001a\u0004\u0018\u00010&2\b\u00103\u001a\u0004\u0018\u00010&H\u0002J\u0018\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u00022\u0006\u0010*\u001a\u00020\u0011H\u0016J\u0018\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u0011H\u0016J\u0010\u0010;\u001a\u0002052\u0006\u00106\u001a\u00020<H\u0002J\u0018\u0010=\u001a\u0002052\u0006\u00106\u001a\u00020>2\u0006\u0010*\u001a\u00020\u0011H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\u000b\u0010\u0007R\u001b\u0010\r\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\t\u001a\u0004\b\u000e\u0010\u0007R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��R4\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00142\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR+\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u00110\u001cj\b\u0012\u0004\u0012\u00020\u0011`\u001d8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b \u0010\t\u001a\u0004\b\u001e\u0010\u001f¨\u0006@"}, m815d2 = {"Lgogolook/callgogolook2/main/logselect/LogSelectionRecyclerViewAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "()V", "dateToday", "", "getDateToday", "()J", "dateToday$delegate", "Lkotlin/Lazy;", "dateWeekday", "getDateWeekday", "dateWeekday$delegate", "dateYesterday", "getDateYesterday", "dateYesterday$delegate", "headerHeight", "", "listViewHeight", C13032a.f29462d, "", "Lgogolook/callgogolook2/realm/obj/logsgroup/LogsGroupRealmObject;", "logItems", "getLogItems", "()Ljava/util/List;", "setLogItems", "(Ljava/util/List;)V", "selectedLogsPosition", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "getSelectedLogsPosition", "()Ljava/util/HashSet;", "selectedLogsPosition$delegate", "getDateString", "", "date", "(Ljava/lang/Long;)Ljava/lang/CharSequence;", "getDesc", "", "logsGroungRealmObject", "getItemCount", "getItemViewType", "position", "getResIdByType", "type", LogsGroupRealmObject.BLOCKED, "", "(Ljava/lang/Integer;Z)I", "getTitle", ContactRealmObject.CONTACT_ID, "name", "e164", "onBindViewHolder", "", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "setEmptyItem", "Lgogolook/callgogolook2/main/logselect/LogSelectionEmptyItemViewHolder;", "setLogItem", "Lgogolook/callgogolook2/main/logselect/LogSelectionLogItemViewHolder;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.v.f */
/* loaded from: classes2-dex2jar.jar:j/a/b0/v/f.class */
public final class C11408f extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: h */
    public static final /* synthetic */ AbstractC14906i[] f25522h;

    /* renamed from: a */
    public int f25526a;

    /* renamed from: b */
    public int f25527b;

    /* renamed from: c */
    public final AbstractC14974f f25528c = C14975g.m662a(C11412d.f25536a);

    /* renamed from: d */
    public final AbstractC14974f f25529d = C14975g.m662a(C11414f.f25538a);

    /* renamed from: e */
    public final AbstractC14974f f25530e = C14975g.m662a(C11413e.f25537a);

    /* renamed from: f */
    public final AbstractC14974f f25531f = C14975g.m662a(C11415g.f25539a);

    /* renamed from: g */
    public List<? extends LogsGroupRealmObject> f25532g;

    /* renamed from: k */
    public static final C11411c f25525k = new C11411c(null);

    /* renamed from: i */
    public static final AbstractC14974f f25523i = C14975g.m662a(C11409a.f25533a);

    /* renamed from: j */
    public static final AbstractC14974f f25524j = C14975g.m662a(C11410b.f25534a);

    /* renamed from: j.a.b0.v.f$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/v/f$a.class */
    public static final class C11409a extends AbstractC15150l implements AbstractC15107a<Integer> {

        /* renamed from: a */
        public static final C11409a f25533a = new C11409a();

        public C11409a() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            return Color.argb(255, 247, 67, 53);
        }
    }

    /* renamed from: j.a.b0.v.f$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/v/f$b.class */
    public static final class C11410b extends AbstractC15150l implements AbstractC15107a<Integer> {

        /* renamed from: a */
        public static final C11410b f25534a = new C11410b();

        public C11410b() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            return Color.argb(255, 153, 153, 153);
        }
    }

    /* renamed from: j.a.b0.v.f$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/v/f$c.class */
    public static final class C11411c {

        /* renamed from: a */
        public static final /* synthetic */ AbstractC14906i[] f25535a;

        static {
            C15157s sVar = new C15157s(C15131a0.m419a(C11411c.class), "MISSED_CALL_COLOR", "getMISSED_CALL_COLOR()I");
            C15131a0.m412a(sVar);
            C15157s sVar2 = new C15157s(C15131a0.m419a(C11411c.class), "NON_MISSED_CALL_COLOR", "getNON_MISSED_CALL_COLOR()I");
            C15131a0.m412a(sVar2);
            f25535a = new AbstractC14906i[]{sVar, sVar2};
        }

        public C11411c() {
        }

        public /* synthetic */ C11411c(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final int m9660a() {
            AbstractC14974f fVar = C11408f.f25523i;
            AbstractC14906i iVar = f25535a[0];
            return ((Number) fVar.getValue()).intValue();
        }

        /* renamed from: b */
        public final int m9658b() {
            AbstractC14974f fVar = C11408f.f25524j;
            AbstractC14906i iVar = f25535a[1];
            return ((Number) fVar.getValue()).intValue();
        }
    }

    /* renamed from: j.a.b0.v.f$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/v/f$d.class */
    public static final class C11412d extends AbstractC15150l implements AbstractC15107a<Long> {

        /* renamed from: a */
        public static final C11412d f25536a = new C11412d();

        public C11412d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Long invoke() {
            return C14123p4.m2426c();
        }
    }

    /* renamed from: j.a.b0.v.f$e */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/v/f$e.class */
    public static final class C11413e extends AbstractC15150l implements AbstractC15107a<Long> {

        /* renamed from: a */
        public static final C11413e f25537a = new C11413e();

        public C11413e() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Long invoke() {
            return C14123p4.m2450a();
        }
    }

    /* renamed from: j.a.b0.v.f$f */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/v/f$f.class */
    public static final class C11414f extends AbstractC15150l implements AbstractC15107a<Long> {

        /* renamed from: a */
        public static final C11414f f25538a = new C11414f();

        public C11414f() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Long invoke() {
            return C14123p4.m2421d();
        }
    }

    /* renamed from: j.a.b0.v.f$g */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/v/f$g.class */
    public static final class C11415g extends AbstractC15150l implements AbstractC15107a<HashSet<Integer>> {

        /* renamed from: a */
        public static final C11415g f25539a = new C11415g();

        public C11415g() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final HashSet<Integer> invoke() {
            return new HashSet<>();
        }
    }

    /* renamed from: j.a.b0.v.f$h */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/v/f$h.class */
    public static final class View$OnClickListenerC11416h implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f25540a;

        /* renamed from: b */
        public final /* synthetic */ C11408f f25541b;

        /* renamed from: c */
        public final /* synthetic */ int f25542c;

        public View$OnClickListenerC11416h(View view, C11408f fVar, C11401d dVar, int i, LogsGroupRealmObject logsGroupRealmObject) {
            this.f25540a = view;
            this.f25541b = fVar;
            this.f25542c = i;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean z;
            ImageView imageView = (ImageView) this.f25540a.findViewById(R$id.ivCheckBox);
            if (imageView.isSelected()) {
                this.f25541b.m9663e().remove(Integer.valueOf(this.f25542c));
                z = false;
            } else {
                this.f25541b.m9663e().add(Integer.valueOf(this.f25542c));
                z = true;
            }
            imageView.setSelected(z);
            C14037j3.m2731a().mo2704a(new C13935c1(this.f25541b.m9663e().size()));
        }
    }

    /* renamed from: j.a.b0.v.f$i */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/v/f$i.class */
    public static final class RunnableC11417i implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C11401d f25543a;

        /* renamed from: b */
        public final /* synthetic */ LogsGroupRealmObject f25544b;

        public RunnableC11417i(C11408f fVar, C11401d dVar, int i, LogsGroupRealmObject logsGroupRealmObject) {
            this.f25543a = dVar;
            this.f25544b = logsGroupRealmObject;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C11052i.m10328e().m10340a(this.f25544b.getNumber(), this.f25543a.m9682b(), 0, EnumC11047e.CallLog);
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11408f.class), "dateToday", "getDateToday()J");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C11408f.class), "dateYesterday", "getDateYesterday()J");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C11408f.class), "dateWeekday", "getDateWeekday()J");
        C15131a0.m412a(sVar3);
        C15157s sVar4 = new C15157s(C15131a0.m419a(C11408f.class), "selectedLogsPosition", "getSelectedLogsPosition()Ljava/util/HashSet;");
        C15131a0.m412a(sVar4);
        f25522h = new AbstractC14906i[]{sVar, sVar2, sVar3, sVar4};
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0047, code lost:
        if (r5 != false) goto L_0x0017;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008e, code lost:
        if (r5 != false) goto L_0x0017;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m9669a(java.lang.Integer r4, boolean r5) {
        /*
            r3 = this;
            r0 = 2131230986(0x7f08010a, float:1.807804E38)
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L_0x000a
            goto L_0x0023
        L_0x000a:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 17
            if (r0 != r1) goto L_0x0023
            r0 = r5
            if (r0 == 0) goto L_0x001d
        L_0x0017:
            r0 = 2131230982(0x7f080106, float:1.8078032E38)
            r6 = r0
            goto L_0x00b3
        L_0x001d:
            r0 = 2131230983(0x7f080107, float:1.8078034E38)
            r6 = r0
            goto L_0x00b3
        L_0x0023:
            r0 = r4
            if (r0 != 0) goto L_0x002a
            goto L_0x0036
        L_0x002a:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 33
            if (r0 != r1) goto L_0x0036
            goto L_0x0046
        L_0x0036:
            r0 = r4
            if (r0 != 0) goto L_0x003d
            goto L_0x004d
        L_0x003d:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 65
            if (r0 != r1) goto L_0x004d
        L_0x0046:
            r0 = r5
            if (r0 == 0) goto L_0x00b3
            goto L_0x0017
        L_0x004d:
            r0 = r4
            if (r0 != 0) goto L_0x0054
            goto L_0x006a
        L_0x0054:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 18
            if (r0 != r1) goto L_0x006a
            r0 = r5
            if (r0 == 0) goto L_0x0064
            goto L_0x0017
        L_0x0064:
            r0 = 2131230985(0x7f080109, float:1.8078038E38)
            r6 = r0
            goto L_0x00b3
        L_0x006a:
            r0 = r4
            if (r0 != 0) goto L_0x0071
            goto L_0x007d
        L_0x0071:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 34
            if (r0 != r1) goto L_0x007d
            goto L_0x008d
        L_0x007d:
            r0 = r4
            if (r0 != 0) goto L_0x0084
            goto L_0x0094
        L_0x0084:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 66
            if (r0 != r1) goto L_0x0094
        L_0x008d:
            r0 = r5
            if (r0 == 0) goto L_0x00b3
            goto L_0x0017
        L_0x0094:
            r0 = r4
            if (r0 != 0) goto L_0x009b
            goto L_0x00b1
        L_0x009b:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 19
            if (r0 != r1) goto L_0x00b1
            r0 = r5
            if (r0 == 0) goto L_0x00ab
            goto L_0x0017
        L_0x00ab:
            r0 = 2131230984(0x7f080108, float:1.8078036E38)
            r6 = r0
            goto L_0x00b3
        L_0x00b1:
            r0 = 0
            r6 = r0
        L_0x00b3:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p469v.C11408f.m9669a(java.lang.Integer, boolean):int");
    }

    /* renamed from: a */
    public final long m9673a() {
        AbstractC14974f fVar = this.f25528c;
        AbstractC14906i iVar = f25522h[0];
        return ((Number) fVar.getValue()).longValue();
    }

    /* renamed from: a */
    public final CharSequence m9668a(Long l) {
        return l == null ? null : l.longValue() == -1 ? null : l.longValue() > m9673a() ? C14123p4.m2420d(l.longValue()) : l.longValue() > m9665c() ? C14206w4.m2225a((int) R$string.calllog_session_yesterday) : C14123p4.m2419e(l.longValue());
    }

    /* renamed from: a */
    public final String m9672a(LogsGroupRealmObject logsGroupRealmObject) {
        String str;
        String str2;
        LogsGroupRealmObject.C5082a aVar = LogsGroupRealmObject.Companion;
        Integer type = logsGroupRealmObject.getType();
        int i = -1;
        if (aVar.m26399d(type != null ? type.intValue() : -1)) {
            String content = logsGroupRealmObject.getContent();
            if (TextUtils.isEmpty(content)) {
                str2 = C14206w4.m2225a((int) R$string.main_sms_notshow_fix);
            } else {
                str2 = C14206w4.m2225a((int) R$string.main_filter_sms) + " : " + content;
            }
            return str2;
        }
        LogsGroupRealmObject.C5082a aVar2 = LogsGroupRealmObject.Companion;
        Integer type2 = logsGroupRealmObject.getType();
        if (aVar2.m26401b(type2 != null ? type2.intValue() : -1)) {
            return C14206w4.m2225a((int) R$string.main_filter_mms);
        }
        LogsGroupRealmObject.C5082a aVar3 = LogsGroupRealmObject.Companion;
        Integer type3 = logsGroupRealmObject.getType();
        if (type3 != null) {
            i = type3.intValue();
        }
        if (!aVar3.m26402a(i)) {
            return null;
        }
        Long duration = logsGroupRealmObject.getDuration();
        Integer type4 = logsGroupRealmObject.getType();
        if (type4 != null && type4.intValue() == 19) {
            str = C14206w4.m2225a((int) R$string.callenddialog_incoming_missing);
        } else {
            long j = 0;
            if (duration == null || duration.longValue() > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(C14206w4.m2225a((int) R$string.ra_call_duration));
                sb.append(" ");
                if (duration != null) {
                    j = duration.longValue();
                }
                sb.append(C14123p4.m2447a(j));
                str = sb.toString();
            } else {
                str = C14206w4.m2225a((int) R$string.call_abort);
            }
        }
        return str;
    }

    /* renamed from: a */
    public final void m9671a(C11400c cVar) {
        if (getItemCount() > 1) {
            View view = cVar.itemView;
            C15149k.m383a((Object) view, "holder.itemView");
            view.setVisibility(8);
            View view2 = cVar.itemView;
            C15149k.m383a((Object) view2, "holder.itemView");
            view2.getLayoutParams().height = 0;
            return;
        }
        View view3 = cVar.itemView;
        C15149k.m383a((Object) view3, "holder.itemView");
        view3.setVisibility(0);
        View view4 = cVar.itemView;
        C15149k.m383a((Object) view4, "holder.itemView");
        view4.getLayoutParams().height = this.f25526a - this.f25527b;
    }

    /* renamed from: a */
    public final void m9670a(C11401d dVar, int i) {
        LogsGroupRealmObject logsGroupRealmObject;
        Integer type;
        Integer type2;
        Integer type3;
        int i2 = i - 1;
        List<? extends LogsGroupRealmObject> list = this.f25532g;
        if (list != null && (logsGroupRealmObject = (LogsGroupRealmObject) list.get(i2)) != null) {
            dVar.m9680c();
            View view = dVar.itemView;
            dVar.m9680c();
            ImageView imageView = (ImageView) view.findViewById(R$id.ivCheckBox);
            C15149k.m383a((Object) imageView, "ivCheckBox");
            imageView.setSelected(m9663e().contains(Integer.valueOf(i2)));
            view.setOnClickListener(new View$OnClickListenerC11416h(view, this, dVar, i2, logsGroupRealmObject));
            if (dVar.m9679d()) {
                TextView textView = (TextView) view.findViewById(R$id.tvDay);
                textView.setVisibility(0);
                Long date = logsGroupRealmObject.getDate();
                long longValue = date != null ? date.longValue() : 0L;
                textView.setText(longValue >= m9673a() ? C14206w4.m2225a((int) R$string.calllog_session_today) : longValue >= m9665c() ? C14206w4.m2225a((int) R$string.calllog_session_yesterday) : longValue >= m9666b() ? C14206w4.m2225a((int) R$string.calllog_session_week) : C14206w4.m2225a((int) R$string.calllog_session_more));
            } else {
                TextView textView2 = (TextView) view.findViewById(R$id.tvDay);
                C15149k.m383a((Object) textView2, "tvDay");
                textView2.setVisibility(8);
            }
            SizedTextView sizedTextView = (SizedTextView) view.findViewById(R$id.tvDate);
            Integer type4 = logsGroupRealmObject.getType();
            sizedTextView.setTextColor((type4 != null && type4.intValue() == 19) ? f25525k.m9660a() : f25525k.m9658b());
            SizedTextView sizedTextView2 = (SizedTextView) view.findViewById(R$id.tvDate);
            C15149k.m383a((Object) sizedTextView2, "tvDate");
            sizedTextView2.setText(m9668a(logsGroupRealmObject.getDate()));
            ((SizedTextView) view.findViewById(R$id.tvDate)).setCompoundDrawablesWithIntrinsicBounds(m9669a(logsGroupRealmObject.getType(), false), 0, 0, 0);
            ImageView imageView2 = (ImageView) view.findViewById(R$id.ivSpamIcon);
            C15149k.m383a((Object) imageView2, "ivSpamIcon");
            imageView2.setVisibility(8);
            if (logsGroupRealmObject.getContact_id() > 0) {
                CallUtils.m26576a((RoundImageView) view.findViewById(R$id.ivMetaphor), (ImageView) view.findViewById(R$id.ivSpamIcon), (RowInfo) null, String.valueOf(logsGroupRealmObject.getContact_id()), CallUtils.EnumC4993l.MAIN_CALL_LOG_FRAGMENT);
            } else {
                ((RoundImageView) view.findViewById(R$id.ivMetaphor)).setImageResource(C13909c.m3071b().m3077v().m3069a());
            }
            if (TextUtils.isEmpty(logsGroupRealmObject.getNumber())) {
                SizedTextView sizedTextView3 = (SizedTextView) view.findViewById(R$id.stvNumber);
                C15149k.m383a((Object) sizedTextView3, "stvNumber");
                sizedTextView3.setText(C11175m.f25094f.m10131a(logsGroupRealmObject.getContactName(), logsGroupRealmObject.getE164()));
                ((SizedTextView) view.findViewById(R$id.stvNumber)).setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R$id.llSecondaryNumberInfo);
                C15149k.m383a((Object) linearLayout, "llSecondaryNumberInfo");
                linearLayout.setVisibility(8);
                SizedTextView sizedTextView4 = (SizedTextView) view.findViewById(R$id.stvContent);
                C15149k.m383a((Object) sizedTextView4, "stvContent");
                sizedTextView4.setVisibility(8);
                Integer type5 = logsGroupRealmObject.getType();
                if ((type5 != null && type5.intValue() == 33) || (((type = logsGroupRealmObject.getType()) != null && type.intValue() == 34) || (((type2 = logsGroupRealmObject.getType()) != null && type2.intValue() == 65) || ((type3 = logsGroupRealmObject.getType()) != null && type3.intValue() == 66)))) {
                    String a = m9672a(logsGroupRealmObject);
                    if (!TextUtils.isEmpty(a)) {
                        SizedTextView sizedTextView5 = (SizedTextView) view.findViewById(R$id.stvContent);
                        C15149k.m383a((Object) sizedTextView5, "stvContent");
                        sizedTextView5.setText(a);
                        SizedTextView sizedTextView6 = (SizedTextView) view.findViewById(R$id.stvContent);
                        C15149k.m383a((Object) sizedTextView6, "stvContent");
                        sizedTextView6.setVisibility(0);
                        return;
                    }
                    return;
                }
                return;
            }
            dVar.m9681b(logsGroupRealmObject.getNumber());
            dVar.m9684a(logsGroupRealmObject.getContactName());
            dVar.m9686a(logsGroupRealmObject.getContact_id());
            dVar.m9685a((CharSequence) m9672a(logsGroupRealmObject));
            Integer type6 = logsGroupRealmObject.getType();
            dVar.m9687a(type6 != null ? type6.intValue() : -1);
            SizedTextView sizedTextView7 = (SizedTextView) view.findViewById(R$id.stvNumber);
            C15149k.m383a((Object) sizedTextView7, "stvNumber");
            sizedTextView7.setText(logsGroupRealmObject.getNumber());
            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R$id.llSecondaryNumberInfo);
            C15149k.m383a((Object) linearLayout2, "llSecondaryNumberInfo");
            linearLayout2.setVisibility(0);
            SizedTextView sizedTextView8 = (SizedTextView) view.findViewById(R$id.stvSecondaryNumberInfoFirstItem);
            C15149k.m383a((Object) sizedTextView8, "stvSecondaryNumberInfoFirstItem");
            sizedTextView8.setVisibility(8);
            SizedTextView sizedTextView9 = (SizedTextView) view.findViewById(R$id.stvSecondaryNumberInfoSecondItem);
            C15149k.m383a((Object) sizedTextView9, "stvSecondaryNumberInfoSecondItem");
            sizedTextView9.setVisibility(8);
            SizedTextView sizedTextView10 = (SizedTextView) view.findViewById(R$id.stvContent);
            C15149k.m383a((Object) sizedTextView10, "stvContent");
            sizedTextView10.setVisibility(8);
            if (view.getId() < 0) {
                new Handler().postDelayed(new RunnableC11417i(this, dVar, i2, logsGroupRealmObject), 500L);
            } else {
                C11052i.m10328e().m10340a(logsGroupRealmObject.getNumber(), dVar.m9682b(), 0, EnumC11047e.CallLog);
            }
        }
    }

    /* renamed from: a */
    public final void m9667a(List<? extends LogsGroupRealmObject> list) {
        this.f25532g = list;
        notifyDataSetChanged();
    }

    /* renamed from: b */
    public final long m9666b() {
        AbstractC14974f fVar = this.f25530e;
        AbstractC14906i iVar = f25522h[2];
        return ((Number) fVar.getValue()).longValue();
    }

    /* renamed from: c */
    public final long m9665c() {
        AbstractC14974f fVar = this.f25529d;
        AbstractC14906i iVar = f25522h[1];
        return ((Number) fVar.getValue()).longValue();
    }

    /* renamed from: d */
    public final List<LogsGroupRealmObject> m9664d() {
        return this.f25532g;
    }

    /* renamed from: e */
    public final HashSet<Integer> m9663e() {
        AbstractC14974f fVar = this.f25531f;
        AbstractC14906i iVar = f25522h[3];
        return (HashSet) fVar.getValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<? extends LogsGroupRealmObject> list = this.f25532g;
        return (list != null ? list.size() : 0) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        LogsGroupRealmObject logsGroupRealmObject;
        LogsGroupRealmObject logsGroupRealmObject2;
        Long date;
        int itemCount = getItemCount();
        if (i < 0 || itemCount - 1 < i) {
            return -1;
        }
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 1;
        }
        if (i <= 1) {
            return 2;
        }
        int i2 = i - 1;
        List<? extends LogsGroupRealmObject> list = this.f25532g;
        if (list == null || (logsGroupRealmObject = (LogsGroupRealmObject) list.get(i2)) == null) {
            return 2;
        }
        List<? extends LogsGroupRealmObject> list2 = this.f25532g;
        long j = 0;
        long longValue = (list2 == null || (logsGroupRealmObject2 = (LogsGroupRealmObject) list2.get(i2 - 1)) == null || (date = logsGroupRealmObject2.getDate()) == null) ? 0L : date.longValue();
        Long date2 = logsGroupRealmObject.getDate();
        if (date2 != null) {
            j = date2.longValue();
        }
        long j2 = j + 1;
        long a = m9673a();
        if (j2 <= a && longValue >= a) {
            return 1;
        }
        long c = m9665c();
        if (j2 <= c && longValue >= c) {
            return 1;
        }
        long b = m9666b();
        return (j2 <= b && longValue >= b) ? 1 : 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        C15149k.m377b(viewHolder, "holder");
        if (viewHolder instanceof C11401d) {
            m9670a((C11401d) viewHolder, i);
        } else if (viewHolder instanceof C11400c) {
            m9671a((C11400c) viewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        if (this.f25526a == 0) {
            this.f25526a = viewGroup.getMeasuredHeight();
        }
        return i != 0 ? i != 1 ? i != 2 ? new C11400c(viewGroup) : new C11401d(viewGroup, false) : new C11401d(viewGroup, true) : new C11400c(viewGroup);
    }
}
