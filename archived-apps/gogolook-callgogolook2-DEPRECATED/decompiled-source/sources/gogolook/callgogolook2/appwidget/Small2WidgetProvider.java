package gogolook.callgogolook2.appwidget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViews;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.main.MainActivity;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/appwidget/Small2WidgetProvider.class */
public class Small2WidgetProvider extends BaseWidgetProvider {
    @Override // gogolook.callgogolook2.appwidget.BaseWidgetProvider
    /* renamed from: a */
    public int mo28648a() {
        return 1;
    }

    @Override // gogolook.callgogolook2.appwidget.BaseWidgetProvider
    /* renamed from: a */
    public RemoteViews mo28647a(Context context) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), (int) R$layout.widget_small_header);
        remoteViews.setImageViewResource(R$id.widget_header, R$drawable.widget_logo_big);
        Intent intent = new Intent(context, MainActivity.class);
        intent.putExtra("smallwidget", true);
        intent.setFlags(268435456);
        intent.addFlags(67108864);
        remoteViews.setOnClickPendingIntent(R$id.widget_header_all, PendingIntent.getActivity(context, 0, intent, 0));
        return remoteViews;
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("gogolook.callgogolook2.CHANGE_SMALL_WIDGET_DATA".equals(intent.getAction())) {
            AppWidgetManager instance = AppWidgetManager.getInstance(context);
            onUpdate(context, instance, instance.getAppWidgetIds(new ComponentName(context, Small2WidgetProvider.class)));
            return;
        }
        super.onReceive(context, intent);
    }

    @Override // gogolook.callgogolook2.appwidget.BaseWidgetProvider, android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        super.onUpdate(context, appWidgetManager, iArr);
        m28656b(context, appWidgetManager, iArr);
    }
}
