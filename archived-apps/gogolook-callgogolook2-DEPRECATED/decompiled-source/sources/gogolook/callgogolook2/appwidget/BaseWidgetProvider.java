package gogolook.callgogolook2.appwidget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.annotation.DrawableRes;
import androidx.core.content.ContextCompat;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p594z4.C14330b;
import p459j.p460a.p582w0.p594z4.EnumC14329a;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/appwidget/BaseWidgetProvider.class */
public abstract class BaseWidgetProvider extends AppWidgetProvider {

    /* renamed from: a */
    public RemoteViews f10660a;

    /* renamed from: gogolook.callgogolook2.appwidget.BaseWidgetProvider$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/appwidget/BaseWidgetProvider$a.class */
    public class C4421a extends C11086o {

        /* renamed from: d */
        public final /* synthetic */ RemoteViews f10661d;

        /* renamed from: e */
        public final /* synthetic */ String f10662e;

        /* renamed from: f */
        public final /* synthetic */ int f10663f;

        /* renamed from: g */
        public final /* synthetic */ String f10664g;

        /* renamed from: h */
        public final /* synthetic */ Context f10665h;

        /* renamed from: i */
        public final /* synthetic */ int[] f10666i;

        public C4421a(RemoteViews remoteViews, String str, int i, String str2, Context context, int[] iArr) {
            this.f10661d = remoteViews;
            this.f10662e = str;
            this.f10663f = i;
            this.f10664g = str2;
            this.f10665h = context;
            this.f10666i = iArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00ac, code lost:
            if (r0.m28231e().contains(gogolook.callgogolook2.gson.RowInfo.MetaphorType.SPOOF) != false) goto L_0x00af;
         */
        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo1836b(java.lang.String r6, gogolook.callgogolook2.gson.NumberInfo r7) {
            /*
                Method dump skipped, instructions count: 376
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.appwidget.BaseWidgetProvider.C4421a.mo1836b(java.lang.String, gogolook.callgogolook2.gson.NumberInfo):void");
        }
    }

    @DrawableRes
    /* renamed from: b */
    public static int m28658b(int i) {
        switch (i) {
            case 1:
                return R$drawable.widget_incoming_icon;
            case 2:
                return R$drawable.widget_outgoing_icon;
            case 3:
                return R$drawable.widget_missed_icon;
            case 4:
            case 7:
                return R$drawable.widget_incoming_sms_icon;
            case 5:
            case 8:
                return R$drawable.widget_outgoing_sms_icon;
            case 6:
                return R$drawable.widget_blocked_icon;
            default:
                return R$drawable.widget_incoming_icon;
        }
    }

    /* renamed from: a */
    public abstract int mo28648a();

    /* renamed from: a */
    public abstract RemoteViews mo28647a(Context context);

    /* renamed from: a */
    public String m28662a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public final void m28661a(Context context, int i, String str, String str2, String str3, RemoteViews remoteViews, int[] iArr) {
        C11052i.m10328e().m10340a(str3, new C4421a(remoteViews, str2, i, str, context, iArr), 0, EnumC11047e.Widget);
    }

    /* renamed from: a */
    public void m28660a(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        this.f10660a.addView(R$id.widgetFrame, new RemoteViews(context.getPackageName(), (int) R$layout.widget_list));
        Intent intent = new Intent(context, ListWidgetService.class);
        intent.putExtra("appWidgetIds", iArr);
        this.f10660a.setRemoteAdapter(R$id.widget_listview, intent);
        this.f10660a.setTextViewText(R$id.widget_emptyview, m28662a(R$string.calldialog_no_result));
        this.f10660a.setEmptyView(R$id.widget_listview, R$id.widget_emptyview);
        this.f10660a.setPendingIntentTemplate(R$id.widget_listview, PendingIntent.getBroadcast(context, "large_widget".hashCode(), new Intent(context, LargeWidgetProvider.class), 134217728));
        AppWidgetManager.getInstance(context).updateAppWidget(iArr, this.f10660a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final ArrayList<Map<EnumC14329a, String>> m28657b(Context context) {
        ArrayList arrayList = new ArrayList(C14330b.m1551b().m1558a(context));
        ArrayList<Map<EnumC14329a, String>> arrayList2 = new ArrayList<>();
        Collections.synchronizedList(arrayList2);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList2.add(arrayList.get(i));
        }
        return arrayList2;
    }

    /* renamed from: b */
    public void m28656b(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        ArrayList<Map<EnumC14329a, String>> b = m28657b(context);
        Binder.restoreCallingIdentity(clearCallingIdentity);
        for (int i = 0; i < b.size() && i < mo28648a(); i++) {
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), (int) R$layout.widget_row);
            String str = b.get(i).get(EnumC14329a.E164NUMBER);
            String str2 = b.get(i).get(EnumC14329a.NAME);
            String str3 = b.get(i).get(EnumC14329a.NUMBER);
            int parseInt = Integer.parseInt(b.get(i).get(EnumC14329a.CALLTYPE));
            Integer.parseInt(b.get(i).get(EnumC14329a.KIND));
            long parseLong = Long.parseLong(b.get(i).get(EnumC14329a.DATE));
            remoteViews.setTextColor(R$id.rowTitle, ContextCompat.getColor(context, 2131100116));
            if (!TextUtils.isEmpty(str2)) {
                remoteViews.setTextViewText(R$id.rowTitle, str2);
                remoteViews.setTextViewText(R$id.rowDetails, str3);
            } else if (C14217x3.m2160b(str3)) {
                remoteViews.setTextViewText(R$id.rowTitle, m28662a(R$string.unknown_number));
                remoteViews.setTextViewText(R$id.rowDetails, "");
            } else {
                remoteViews.setTextViewText(R$id.rowTitle, str3);
                remoteViews.setTextViewText(R$id.rowDetails, "");
            }
            int b2 = m28658b(parseInt);
            remoteViews.setImageViewResource(R$id.rowTitleDrawable, b2);
            remoteViews.setViewVisibility(R$id.tv_telecom, 4);
            remoteViews.setTextViewText(R$id.tv_date, C14123p4.m2418f(parseLong));
            remoteViews.setTextColor(R$id.tv_date, ContextCompat.getColor(context, b2 == 2131231711 ? 2131100151 : 2131100116));
            Intent a = C14217x3.m2185a(context, str3);
            if (a != null) {
                remoteViews.setOnClickPendingIntent(R$id.widget_call, PendingIntent.getActivity(context, 0, a, 0));
            }
            if (!C14108o4.m2496a(str3, C14108o4.EnumC14110b.CALL)) {
                remoteViews.setViewVisibility(R$id.widget_call, 0);
            } else {
                remoteViews.setViewVisibility(R$id.widget_call, 4);
            }
            if (C14217x3.m2160b(str3) || m28662a(R$string.unknown_number).equals(str3)) {
                remoteViews.setBoolean(R$id.rowCaller, "setEnabled", false);
            } else {
                Bundle bundle = new Bundle();
                bundle.putBoolean("show_sn_warning", C14330b.m1560a(parseInt));
                Intent a2 = NumberDetailActivity.m26859a(context, str3, str, bundle);
                remoteViews.setOnClickPendingIntent(R$id.rowCaller, C14217x3.m2188a(context, a2, ("small_widget" + str3).hashCode()));
                remoteViews.setBoolean(R$id.rowCaller, "setEnabled", true);
            }
            this.f10660a.addView(R$id.widgetFrame, remoteViews);
            m28661a(context, parseInt, str2, str3, str, remoteViews, iArr);
        }
        AppWidgetManager.getInstance(context).updateAppWidget(iArr, this.f10660a);
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        super.onUpdate(context, appWidgetManager, iArr);
        this.f10660a = new RemoteViews(context.getPackageName(), (int) R$layout.widget_init);
        this.f10660a.removeAllViews(R$id.widgetFrame);
        this.f10660a.addView(R$id.widgetFrame, mo28647a(context));
    }
}
