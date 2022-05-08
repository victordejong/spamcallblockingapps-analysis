package com.privacystar.core.util;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.p001v4.app.NotificationCompat;
import android.support.p001v4.app.TaskStackBuilder;
import android.support.p001v4.view.ViewCompat;
import android.widget.RemoteViews;
import com.privacystar.core.C1566R;
import com.privacystar.core.application.AppManagerImpl;
import com.privacystar.core.application.Constants;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.call.caller.PhoneEventType;
import com.privacystar.core.data.model.BlockList;
import com.privacystar.core.data.model.Offender;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.helper.OffenderRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.p011ui.SplashActivity;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsFragment;
import com.privacystar.core.p011ui.home.HomeActivity;
import com.privacystar.core.p011ui.util.caller.CallerInfoLineCreator;
import com.privacystar.core.p011ui.util.caller.CallerPresenter;
import com.privacystar.core.receiver.NotificationReceiver;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import io.realm.Realm;
import java.util.Date;
import java.util.Random;
import org.apache.commons.p018io.FileUtils;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/NotificationUtil.class */
public class NotificationUtil {
    private static final int INVALID_FLAG = -7;
    private static final String NOTIFICATION_CHANNEL_ID = "privacystar";
    private static final int[] VIEW_COLORS = {-1644826, -3947581, -9211021, -11184811, -14671840, ViewCompat.MEASURED_STATE_MASK, -65794, -14633747, -442522};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.privacystar.core.util.NotificationUtil$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/NotificationUtil$1.class */
    public static /* synthetic */ class C16781 {

        /* renamed from: $SwitchMap$com$privacystar$core$util$NotificationUtil$NotificationSize */
        static final /* synthetic */ int[] f298x200db379;

        /* renamed from: $SwitchMap$com$privacystar$core$util$NotificationUtil$NotificationType */
        static final /* synthetic */ int[] f299x200e62b2 = new int[NotificationType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
        static {
            try {
                f299x200e62b2[NotificationType.BLOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f299x200e62b2[NotificationType.MISSED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            f298x200db379 = new int[NotificationSize.values().length];
            try {
                f298x200db379[NotificationSize.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f298x200db379[NotificationSize.BIG.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/NotificationUtil$NotificationSize.class */
    public enum NotificationSize {
        NORMAL,
        BIG
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/NotificationUtil$NotificationType.class */
    public enum NotificationType {
        BLOCKED(0, 9000),
        MISSED(1, 9010),
        UNKNOWN(2, 9100);
        

        /* renamed from: id */
        private final int f300id;
        private final int systemId;

        NotificationType(int i, int i2) {
            this.f300id = i;
            this.systemId = i2;
        }

        public int getId() {
            return this.systemId;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/NotificationUtil$ViewColors.class */
    private enum ViewColors {
        GREY_0100(0),
        GREY_0300(1),
        ANDROID_GREY(2),
        GREY_0700(3),
        ANDROID_DGREY(4),
        GREY_1000(5),
        BLACK(5),
        WHITE(6),
        BLUE_0400(7),
        RED_0300(8);
        
        private int mIndex;

        ViewColors(int i) {
            this.mIndex = i;
        }

        public int getViewColor() {
            return NotificationUtil.VIEW_COLORS[this.mIndex];
        }
    }

    private static void addActionsToBuilder(Context context, Caller caller, int i, NotificationCompat.Builder builder) {
        Intent detailIntent = DetailActivity.detailIntent(context, CallerDetailsFragment.class, caller);
        if (detailIntent != null) {
            detailIntent.putExtra(Constants.NOTIFICATION_SHOULD_BLOCK, true);
            detailIntent.putExtra(Constants.NOTIFICATION_TRAN_ID, i);
        }
        TaskStackBuilder create = TaskStackBuilder.create(context);
        create.addParentStack(HomeActivity.class);
        create.addNextIntent(detailIntent);
        PendingIntent pendingIntent = create.getPendingIntent(i, 134217728);
        Timber.m37d("Preparing report intent. WebView doesn't have hook for number yet.", new Object[0]);
        Intent reportIntent = NavigationUtil.getReportIntent(context, caller);
        reportIntent.putExtra(Constants.NOTIFICATION_TRAN_ID, i);
        TaskStackBuilder create2 = TaskStackBuilder.create(context);
        create2.addParentStack(HomeActivity.class);
        create2.addNextIntent(reportIntent);
        PendingIntent pendingIntent2 = create2.getPendingIntent(i, 134217728);
        NotificationCompat.Action build = new NotificationCompat.Action.Builder(C1566R.C1568drawable.ic_block_black_24dp_notification, context.getString(C1566R.string.notification_button_block), pendingIntent).build();
        NotificationCompat.Action build2 = new NotificationCompat.Action.Builder(C1566R.C1568drawable.ic_thumb_down_black_24dp_notification, context.getString(C1566R.string.notification_button_report), pendingIntent2).build();
        builder.addAction(build);
        builder.addAction(build2);
    }

    public static void clearSourceIntent(Context context, Intent intent) {
        int intExtra = intent.getIntExtra(Constants.NOTIFICATION_TRAN_ID, 0);
        if (intExtra > 0) {
            intent.removeExtra(Constants.NOTIFICATION_TRAN_ID);
            ((NotificationManager) context.getSystemService("notification")).cancel(intExtra);
        }
    }

    public static Notification createOverlayNotification(Context context, String str) {
        return new NotificationCompat.Builder(context, NOTIFICATION_CHANNEL_ID).setAutoCancel(true).setContentTitle(context.getString(2131755161)).setContentText(context.getString(C1566R.string.caller_id_notification_subtitle)).setSmallIcon(C1566R.C1568drawable.status_bar_icon).setPriority(0).setColor(context.getResources().getColor(C1566R.color.native_notification_color)).setStyle(new NotificationCompat.BigTextStyle().bigText(context.getString(C1566R.string.caller_id_notification_subtitle))).build();
    }

    private static void formatBigNotificationLayoutView(Context context, RemoteViews remoteViews, NotificationType notificationType, Caller caller) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            boolean shouldVariantInstanceShowFullUx = BuildUtil.INSTANCE.shouldVariantInstanceShowFullUx(context, defaultInstance);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            int i7 = 8;
            if (C16781.f299x200e62b2[notificationType.ordinal()] != 1) {
                i6 = context.getResources().getColor(C1566R.color.notification_primary);
                i4 = context.getResources().getColor(C1566R.color.notification_secondary);
                i3 = context.getResources().getColor(C1566R.color.notification_background);
                i5 = context.getResources().getColor(C1566R.color.notification_button);
                i2 = context.getResources().getColor(C1566R.color.notification_event_icons);
                i = C1566R.C1568drawable.ic_call_missed_black_24dp_notification;
                remoteViews.setViewVisibility(C1566R.C1569id.notification_event_blocked_fl, 8);
                if (shouldVariantInstanceShowFullUx) {
                    i7 = 0;
                }
                remoteViews.setViewVisibility(C1566R.C1569id.notification_event_block_button_fl, i7);
            } else {
                i6 = context.getResources().getColor(C1566R.color.notification_primary);
                i4 = context.getResources().getColor(C1566R.color.notification_secondary);
                i3 = context.getResources().getColor(C1566R.color.notification_background);
                i5 = context.getResources().getColor(C1566R.color.notification_button);
                i2 = context.getResources().getColor(C1566R.color.notification_event_icons);
                remoteViews.setViewVisibility(C1566R.C1569id.notification_event_blocked_fl, 0);
                remoteViews.setViewVisibility(C1566R.C1569id.notification_event_block_button_fl, 8);
                i = C1566R.C1568drawable.ic_block_black_24dp_notification;
            }
            if (Build.VERSION.SDK_INT >= 21) {
                remoteViews.setImageViewResource(C1566R.C1569id.notification_event_logo_iv, (!NotificationUtilManagerImpl.INSTANCE.shouldShowOffenderIconForPostCall() || !caller.isOffender(false)) ? C1566R.C1568drawable.app_logo_notification : CallerPresenter.getCategoryDrawable(caller));
                remoteViews.setImageViewResource(C1566R.C1569id.notification_event_type_icon_iv, i);
                remoteViews.setImageViewResource(C1566R.C1569id.notification_event_report_button_iv, C1566R.C1568drawable.ic_thumb_down_black_24dp_notification);
                remoteViews.setImageViewResource(C1566R.C1569id.notification_event_block_button_iv, C1566R.C1568drawable.ic_block_black_24dp_notification);
            } else {
                Bitmap bitmapFromDrawable = ImageUtil.getBitmapFromDrawable(context, NotificationUtilManagerImpl.INSTANCE.shouldShowOffenderIconForPostCall() ? CallerPresenter.getCategoryDrawable(caller) : C1566R.C1568drawable.app_logo_notification);
                Bitmap bitmapFromDrawable2 = ImageUtil.getBitmapFromDrawable(context, i);
                Bitmap bitmapFromDrawable3 = ImageUtil.getBitmapFromDrawable(context, C1566R.C1568drawable.ic_block_black_24dp_notification);
                Bitmap bitmapFromDrawable4 = ImageUtil.getBitmapFromDrawable(context, C1566R.C1568drawable.ic_thumb_down_black_24dp_notification);
                remoteViews.setImageViewBitmap(C1566R.C1569id.notification_event_logo_iv, bitmapFromDrawable);
                remoteViews.setImageViewBitmap(C1566R.C1569id.notification_event_type_icon_iv, bitmapFromDrawable2);
                remoteViews.setImageViewBitmap(C1566R.C1569id.notification_event_block_button_iv, bitmapFromDrawable3);
                remoteViews.setImageViewBitmap(C1566R.C1569id.notification_event_report_button_iv, bitmapFromDrawable4);
            }
            remoteViews.setTextColor(C1566R.C1569id.notification_event_title_tv, i6);
            remoteViews.setTextColor(C1566R.C1569id.notification_event_description_tv, i4);
            remoteViews.setTextColor(C1566R.C1569id.notification_event_block_button_tv, i5);
            remoteViews.setTextColor(C1566R.C1569id.notification_event_report_button_tv, i5);
            remoteViews.setTextColor(C1566R.C1569id.notification_event_time_tv, i2);
            remoteViews.setInt(C1566R.C1569id.notification_call_event_ll, "setBackgroundColor", i3);
            remoteViews.setInt(C1566R.C1569id.notification_event_divider_v, "setBackgroundColor", i4);
            remoteViews.setInt(C1566R.C1569id.notification_event_type_icon_iv, "setColorFilter", i2);
            remoteViews.setInt(C1566R.C1569id.notification_event_block_button_iv, "setColorFilter", i6);
            remoteViews.setInt(C1566R.C1569id.notification_event_report_button_iv, "setColorFilter", i6);
        } finally {
            try {
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void formatNormalNotificationLayoutView(Context context, RemoteViews remoteViews, NotificationType notificationType, Caller caller) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        if (C16781.f299x200e62b2[notificationType.ordinal()] != 1) {
            i5 = context.getResources().getColor(C1566R.color.notification_primary);
            i4 = context.getResources().getColor(C1566R.color.notification_secondary);
            i3 = context.getResources().getColor(C1566R.color.notification_background);
            i2 = context.getResources().getColor(C1566R.color.notification_event_icons);
            i = C1566R.C1568drawable.ic_call_missed_black_24dp_notification;
        } else {
            i5 = context.getResources().getColor(C1566R.color.notification_primary);
            i4 = context.getResources().getColor(C1566R.color.notification_secondary);
            i3 = context.getResources().getColor(C1566R.color.notification_background);
            i2 = context.getResources().getColor(C1566R.color.notification_event_icons);
            i = C1566R.C1568drawable.ic_block_black_24dp_notification;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            remoteViews.setImageViewResource(C1566R.C1569id.notification_event_logo_iv, C1566R.C1568drawable.app_logo_notification);
            remoteViews.setImageViewResource(C1566R.C1569id.notification_event_type_icon_iv, i);
        } else {
            remoteViews.setImageViewBitmap(C1566R.C1569id.notification_event_logo_iv, ImageUtil.getBitmapFromDrawable(context, C1566R.C1568drawable.app_logo_notification));
            remoteViews.setImageViewBitmap(C1566R.C1569id.notification_event_type_icon_iv, ImageUtil.getBitmapFromDrawable(context, i));
        }
        remoteViews.setTextColor(C1566R.C1569id.notification_event_title_tv, i5);
        remoteViews.setTextColor(C1566R.C1569id.notification_event_description_tv, i4);
        remoteViews.setTextColor(C1566R.C1569id.notification_event_time_tv, i2);
        remoteViews.setInt(C1566R.C1569id.notification_call_event_ll, "setBackgroundColor", i3);
        remoteViews.setInt(C1566R.C1569id.notification_event_type_icon_iv, "setColorFilter", i2);
    }

    private static int getCallerType(Realm realm, String str, Context context) {
        if (Text.isBlank(str)) {
            return 0;
        }
        if (Text.equalsIgnoreCase(str, BlockingManager.MATCHVALUE_INVALID)) {
            return INVALID_FLAG;
        }
        try {
            BlockList retrieveBlockEntry = BlockListRealm.retrieveBlockEntry(realm, str);
            int offenderFlags = retrieveBlockEntry != null ? retrieveBlockEntry.getOffenderFlags() : 0;
            if (offenderFlags != 0) {
                return offenderFlags;
            }
            Offender offender = OffenderRealm.getOffender(realm, str);
            if (offender != null) {
                offenderFlags = offender.getCategoryId() == null ? 0 : offender.getCategoryId().intValue();
            }
            return offenderFlags;
        } catch (Exception e) {
            Timber.m32e(e, "getting caller type", new Object[0]);
            return 0;
        }
    }

    public static BitmapDrawable getColoredIcon(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(16973928, new int[]{16842904});
        int color = obtainStyledAttributes.getColor(0, -16711936);
        obtainStyledAttributes.recycle();
        return recolorIcon(context, i, color);
    }

    private static int getIdFromType(NotificationType notificationType) {
        return notificationType.getId();
    }

    private static RemoteViews getRemoteViewsPopulated(Context context, Caller caller, NotificationType notificationType, NotificationSize notificationSize, int i) {
        int i2;
        NotificationSize notificationSize2 = notificationSize;
        if (caller.isUnknownNumber()) {
            notificationSize2 = notificationSize;
            if (notificationSize == NotificationSize.BIG) {
                notificationSize2 = NotificationSize.NORMAL;
            }
        }
        switch (C16781.f298x200db379[notificationSize2.ordinal()]) {
            case 1:
                i2 = C1566R.C1571layout.notification_call_event_normal;
                break;
            case 2:
                i2 = C1566R.C1571layout.notification_call_event_big;
                break;
            default:
                Timber.m34e("Nonexistent size: %s", notificationSize2.toString());
                return null;
        }
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), i2);
        CallerInfoLineCreator.CallerInfoLines callerInfo = CallerInfoLineCreator.INSTANCE.getCallerInfo(caller, context, false);
        remoteViews.setTextViewText(C1566R.C1569id.notification_event_title_tv, callerInfo.getLine1());
        remoteViews.setTextViewText(C1566R.C1569id.notification_event_description_tv, callerInfo.getLine2());
        remoteViews.setTextViewText(C1566R.C1569id.notification_event_time_tv, NotificationUtilManagerImpl.INSTANCE.shouldShowCallTimeInTimeFormat() ? FormatUtil.getShortDateString(context, new Date()) : FormatUtil.getTimeElapsedString(context, new Date().getTime()));
        if (notificationSize2 == NotificationSize.NORMAL) {
            formatNormalNotificationLayoutView(context, remoteViews, notificationType, caller);
        } else if (notificationSize2 == NotificationSize.BIG) {
            formatBigNotificationLayoutView(context, remoteViews, notificationType, caller);
            setButtonListeners(context, remoteViews, caller, notificationType, i);
        }
        return remoteViews;
    }

    @NonNull
    private static String getTickerText(Context context, Caller caller, NotificationType notificationType) {
        return getTitleTextFromType(context, notificationType) + context.getResources().getString(C1566R.string.notification_ticker_from_number) + caller.getNumber() + context.getResources().getString(C1566R.string.notification_ticker_endline);
    }

    @NonNull
    private static String getTitleTextFromType(Context context, NotificationType notificationType) {
        return C16781.f299x200e62b2[notificationType.ordinal()] != 1 ? context.getResources().getString(C1566R.string.notification_missed_call) : context.getResources().getString(C1566R.string.notification_blocked_call);
    }

    private static int getUniqueId(Caller caller, NotificationType notificationType) {
        long idFromType = getIdFromType(notificationType);
        long currentTimeMillis = System.currentTimeMillis();
        Long integerNumber = caller.getIntegerNumber();
        Long l = integerNumber;
        if (integerNumber == null) {
            l = 0L;
        }
        return (int) ((((((currentTimeMillis * 10) ^ ((caller.getNumber().length() + currentTimeMillis) + (l.longValue() * 10))) ^ (String.valueOf(currentTimeMillis).length() + l.longValue())) * 2) + idFromType) % FileUtils.ONE_GB);
    }

    public static BitmapDrawable recolorIcon(Context context, int i, int i2) {
        Resources resources = context.getResources();
        Bitmap copy = BitmapFactory.decodeResource(resources, i).copy(Bitmap.Config.ARGB_8888, true);
        Canvas canvas = new Canvas(copy);
        Paint paint = new Paint();
        paint.setColor(i2);
        paint.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.MULTIPLY));
        canvas.drawBitmap(copy, 0.0f, 0.0f, paint);
        return new BitmapDrawable(resources, copy);
    }

    private static void setButtonListeners(Context context, RemoteViews remoteViews, Caller caller, NotificationType notificationType, int i) {
        Intent intent = new Intent(context, NotificationReceiver.class);
        intent.setAction(Constants.NOTIFICATION_SHOULD_BLOCK);
        intent.putExtra(Constants.NOTIFICATION_TRAN_ID, i);
        intent.putExtra(Constants.CALLER_NUMBER, caller.getNumber());
        remoteViews.setOnClickPendingIntent(C1566R.C1569id.notification_event_block_button_fl, PendingIntent.getBroadcast(context, i, intent, 268435456));
        Intent intent2 = new Intent(context, NotificationReceiver.class);
        intent2.setAction(Constants.NOTIFICATION_SHOULD_REPORT);
        intent2.putExtra(Constants.NOTIFICATION_TRAN_ID, i);
        intent2.putExtra(Constants.CALLER_NUMBER, caller.getNumber());
        remoteViews.setOnClickPendingIntent(C1566R.C1569id.notification_event_report_button_fl, PendingIntent.getBroadcast(context, i, intent2, 268435456));
    }

    public static void setupNotificationChannel(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            Timber.m37d("setting up notification channel", new Object[0]);
            NotificationChannel notificationChannel = new NotificationChannel(NOTIFICATION_CHANNEL_ID, context.getString(2131755161), 3);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (notificationManager != null) {
                notificationManager.createNotificationChannel(notificationChannel);
            } else {
                Timber.m25w("notification manager was null, cannot create channel", new Object[0]);
            }
        } else {
            Timber.m37d("Skipping notification channel setup", new Object[0]);
        }
    }

    private static boolean shouldShowBlockNotification(String str, PhoneEventType phoneEventType) {
        return phoneEventType == PhoneEventType.CALL && !Text.isBlank(str);
    }

    public static void showAppNotRegisteredNotification(Context context, boolean z) {
        String string = context.getResources().getString(C1566R.string.notification_not_registered_title);
        String string2 = context.getResources().getString(C1566R.string.notification_not_registered_subtitle);
        if (z) {
            Intent intent = new Intent(context, NotificationReceiver.class);
            intent.setAction(Constants.NOTIFICATION_NOT_REGISTERED_INTENT);
            intent.setFlags(4194304);
            intent.setClass(context, NotificationReceiver.class);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 1000, intent, 134217728);
            AnalyticsUtil.INSTANCE.trackNotRegisteredNotificationSent();
            showNativeNotificationBig(context, string, string2, broadcast, 1000);
            return;
        }
        showNativeNotification(context, string, string2, PendingIntent.getActivity(context, 0, new Intent(context, SplashActivity.class), 134217728), 1000);
    }

    public static void showBlockNotification(Context context, Realm realm, PhoneEventType phoneEventType, boolean z, String str) {
        showBlockNotification(context, realm, phoneEventType, z, str, -1);
    }

    public static void showBlockNotification(Context context, Realm realm, PhoneEventType phoneEventType, boolean z, String str, int i) {
        if (i < 0) {
            i = getCallerType(realm, str, context);
        }
        if (i > 0) {
            ContactUtil.isNumberInContacts(str);
        }
        if (shouldShowBlockNotification(str, phoneEventType)) {
        }
    }

    public static void showCallNotification(Context context, String str, PhoneEventType phoneEventType, NotificationType notificationType) {
        if (!AppManagerImpl.INSTANCE.shouldShowNotification()) {
            Timber.m37d("Can't show notification when EULA is not accepted.", new Object[0]);
        } else if (shouldShowBlockNotification(str, phoneEventType)) {
            Caller caller = CallerFactory.getInstance().getCaller(str);
            if (caller.getIsInContactsSynchronous() && notificationType == NotificationType.MISSED) {
                Timber.m37d("Caller was in contacts, will not display missed notification.", new Object[0]);
            } else if (PreferenceUtil.getIsPostCallCenterEnabled()) {
                boolean isOffender = caller.isOffender(false);
                boolean isScammer = caller.isScammer();
                boolean isFeatureAvailable = LicenseFeatureRealm.isFeatureAvailable(Feature.MISSED_CALL_NOTIFICATIONS_GREEN);
                boolean isFeatureAvailable2 = LicenseFeatureRealm.isFeatureAvailable(Feature.MISSED_CALL_NOTIFICATIONS_NONGREEN);
                boolean isFeatureAvailable3 = LicenseFeatureRealm.isFeatureAvailable(Feature.POST_CC_SCAM);
                if (notificationType == NotificationType.MISSED) {
                    if (!isOffender && !isFeatureAvailable) {
                        return;
                    }
                    if (isScammer) {
                        if (!isFeatureAvailable3 && !isFeatureAvailable2) {
                            return;
                        }
                    } else if (isOffender && !isFeatureAvailable2) {
                        return;
                    }
                }
                trackNotificationAnalytics(notificationType);
                int uniqueId = getUniqueId(caller, notificationType);
                NotificationCompat.Builder color = new NotificationCompat.Builder(context, NOTIFICATION_CHANNEL_ID).setTicker(getTickerText(context, caller, notificationType)).setSmallIcon(C1566R.C1568drawable.status_bar_icon).setAutoCancel(true).setPriority(2).setColor(context.getResources().getColor(2131099752));
                Intent intent = new Intent(context, NotificationReceiver.class);
                intent.setAction(Constants.NOTIFICATION_PRESSED_INTENT);
                intent.putExtra(Constants.NOTIFICATION_TRAN_ID, uniqueId);
                intent.putExtra(Constants.CALLER_NUMBER, caller.getNumber());
                color.setContentIntent(PendingIntent.getBroadcast(context, uniqueId, intent, 134217728));
                Intent intent2 = new Intent(context, NotificationReceiver.class);
                intent2.setAction(Constants.NOTIFICATION_DELETED_INTENT);
                int uniqueId2 = getUniqueId(caller, notificationType);
                intent2.putExtra(Constants.NOTIFICATION_TRAN_ID, uniqueId2);
                color.setDeleteIntent(PendingIntent.getBroadcast(context, uniqueId2, intent2, 268435456));
                Notification build = color.build();
                build.contentView = getRemoteViewsPopulated(context, caller, notificationType, NotificationSize.NORMAL, uniqueId);
                build.bigContentView = getRemoteViewsPopulated(context, caller, notificationType, NotificationSize.BIG, uniqueId);
                ((NotificationManager) context.getSystemService("notification")).notify(uniqueId, build);
            }
        }
    }

    public static boolean showDashboardNotification(Context context) {
        NotificationCompat.Builder style = new NotificationCompat.Builder(context, NOTIFICATION_CHANNEL_ID).setAutoCancel(true).setContentTitle("PrivacyStar").setContentText("Tap to view your monthly Performance Report").setSmallIcon(C1566R.C1568drawable.status_bar_icon).setPriority(0).setColor(context.getResources().getColor(C1566R.color.native_notification_color)).setStyle(new NotificationCompat.BigTextStyle().bigText("Tap to view your monthly Performance Report!"));
        int nextInt = new Random().nextInt(Integer.MAX_VALUE);
        Intent intent = new Intent(context, NotificationReceiver.class);
        intent.setAction(Constants.NOTIFICATION_DASHBOARD_INTENT);
        style.setContentIntent(PendingIntent.getBroadcast(context, nextInt, intent, 134217728));
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (notificationManager == null) {
            return false;
        }
        notificationManager.notify(nextInt, style.build());
        return true;
    }

    public static void showNativeNotification(Context context, String str, String str2, PendingIntent pendingIntent, int i) {
        NotificationCompat.Builder color = new NotificationCompat.Builder(context, NOTIFICATION_CHANNEL_ID).setAutoCancel(true).setContentTitle(str).setContentText(str2).setTicker(context.getString(C1566R.string.notification_ticker_new_message)).setSmallIcon(C1566R.C1568drawable.status_bar_icon).setPriority(0).setColor(context.getResources().getColor(C1566R.color.native_notification_color));
        color.setContentIntent(pendingIntent);
        ((NotificationManager) context.getSystemService("notification")).notify(i, color.build());
    }

    public static void showNativeNotificationBig(Context context, String str, String str2, PendingIntent pendingIntent, int i) {
        NotificationCompat.Builder addAction = new NotificationCompat.Builder(context, NOTIFICATION_CHANNEL_ID).setAutoCancel(true).setContentTitle(str).setContentText(str2).setTicker(context.getString(C1566R.string.notification_ticker_new_message)).setSmallIcon(C1566R.C1568drawable.status_bar_icon).setPriority(0).setColor(context.getResources().getColor(C1566R.color.native_notification_color)).setStyle(new NotificationCompat.BigTextStyle().bigText(str2)).addAction(C1566R.C1568drawable.app_logo_minimal_notification, context.getString(C1566R.string.notification_not_registered_button), pendingIntent);
        addAction.setContentIntent(pendingIntent);
        ((NotificationManager) context.getSystemService("notification")).notify(i, addAction.build());
    }

    public static void showPushMessageNotification(Context context, String str, String str2, String str3) {
        int parseIntegerFromUuid = NumbersUtil.parseIntegerFromUuid(str) * 100;
        Intent intent = new Intent(context, NotificationReceiver.class);
        intent.setAction(Constants.NOTIFICATION_MESSAGE_INTENT);
        intent.putExtra(Constants.MESSAGE_ID, str);
        showNativeNotification(context, str2, str3, PendingIntent.getBroadcast(context, parseIntegerFromUuid, intent, 134217728), parseIntegerFromUuid);
    }

    private static void trackNotificationAnalytics(NotificationType notificationType) {
        if (notificationType == NotificationType.MISSED) {
            AnalyticsManager.INSTANCE.fire(Event.MissedCallEvent.INSTANCE);
        }
    }
}
