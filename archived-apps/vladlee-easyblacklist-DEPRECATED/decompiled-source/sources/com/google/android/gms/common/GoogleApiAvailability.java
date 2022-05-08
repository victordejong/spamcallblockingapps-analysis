package com.google.android.gms.common;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.core.app.C0612j;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.base.C1563R;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.api.internal.zabp;
import com.google.android.gms.common.api.internal.zabq;
import com.google.android.gms.common.api.internal.zabt;
import com.google.android.gms.common.internal.ConnectionErrorMessages;
import com.google.android.gms.common.internal.DialogRedirect;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.base.zar;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GoogleApiAvailability.class */
public class GoogleApiAvailability extends GoogleApiAvailabilityLight {
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";

    /* renamed from: c */
    private String f6152c;

    /* renamed from: a */
    private static final Object f6150a = new Object();

    /* renamed from: b */
    private static final GoogleApiAvailability f6151b = new GoogleApiAvailability();
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.common.GoogleApiAvailability$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GoogleApiAvailability$a.class */
    public final class HandlerC1566a extends zar {

        /* renamed from: a */
        private final Context f6153a;

        public HandlerC1566a(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.f6153a = context.getApplicationContext();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 1) {
                int i = message.what;
                StringBuilder sb = new StringBuilder(50);
                sb.append("Don't know how to handle this message: ");
                sb.append(i);
                Log.w("GoogleApiAvailability", sb.toString());
                return;
            }
            int isGooglePlayServicesAvailable = GoogleApiAvailability.this.isGooglePlayServicesAvailable(this.f6153a);
            if (GoogleApiAvailability.this.isUserResolvableError(isGooglePlayServicesAvailable)) {
                GoogleApiAvailability.this.showErrorNotification(this.f6153a, isGooglePlayServicesAvailable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Dialog m5993a(Context context, int i, DialogRedirect dialogRedirect, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = null;
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843529, typedValue, true);
        if ("Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
            builder = new AlertDialog.Builder(context, 5);
        }
        AlertDialog.Builder builder2 = builder;
        if (builder == null) {
            builder2 = new AlertDialog.Builder(context);
        }
        builder2.setMessage(ConnectionErrorMessages.getErrorMessage(context, i));
        if (onCancelListener != null) {
            builder2.setOnCancelListener(onCancelListener);
        }
        String errorDialogButtonMessage = ConnectionErrorMessages.getErrorDialogButtonMessage(context, i);
        if (errorDialogButtonMessage != null) {
            builder2.setPositiveButton(errorDialogButtonMessage, dialogRedirect);
        }
        String errorTitle = ConnectionErrorMessages.getErrorTitle(context, i);
        if (errorTitle != null) {
            builder2.setTitle(errorTitle);
        }
        return builder2.create();
    }

    /* renamed from: a */
    private static Task<Map<ApiKey<?>, String>> m5992a(HasApiKey<?> hasApiKey, HasApiKey<?>... hasApiKeyArr) {
        Preconditions.checkNotNull(hasApiKey, "Requested API must not be null.");
        for (HasApiKey<?> hasApiKey2 : hasApiKeyArr) {
            Preconditions.checkNotNull(hasApiKey2, "Requested API must not be null.");
        }
        ArrayList arrayList = new ArrayList(hasApiKeyArr.length + 1);
        arrayList.add(hasApiKey);
        arrayList.addAll(Arrays.asList(hasApiKeyArr));
        return GoogleApiManager.zaba().zaa(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5996a(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        if (activity instanceof FragmentActivity) {
            SupportErrorDialogFragment.newInstance(dialog, onCancelListener).show(((FragmentActivity) activity).m7852f(), str);
            return;
        }
        ErrorDialogFragment.newInstance(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    /* renamed from: a */
    private final void m5994a(Context context, int i, PendingIntent pendingIntent) {
        int i2;
        NotificationChannel notificationChannel;
        if (i == 18) {
            m5995a(context);
        } else if (pendingIntent != null) {
            String errorNotificationTitle = ConnectionErrorMessages.getErrorNotificationTitle(context, i);
            String errorNotificationMessage = ConnectionErrorMessages.getErrorNotificationMessage(context, i);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            C0612j.C0615c a = new C0612j.C0615c(context, (byte) 0).m8722b().m8731a().m8724a((CharSequence) errorNotificationTitle).m8725a(new C0612j.C0614b().m8732a(errorNotificationMessage));
            if (DeviceProperties.isWearable(context)) {
                Preconditions.checkState(PlatformVersion.isAtLeastKitKatWatch());
                a.m8730a(context.getApplicationInfo().icon).m8720c();
                if (DeviceProperties.isWearableWithoutPlayStore(context)) {
                    a.m8729a(C1563R.C1564drawable.common_full_open_on_phone, resources.getString(C1563R.string.common_open_on_phone), pendingIntent);
                } else {
                    a.m8727a(pendingIntent);
                }
            } else {
                a.m8730a(17301642).m8719c(resources.getString(C1563R.string.common_google_play_services_notification_ticker)).m8728a(System.currentTimeMillis()).m8727a(pendingIntent).m8721b(errorNotificationMessage);
            }
            if (PlatformVersion.isAtLeastO()) {
                Preconditions.checkState(PlatformVersion.isAtLeastO());
                String b = m5991b();
                String str = b;
                if (b == null) {
                    NotificationChannel notificationChannel2 = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                    String defaultNotificationChannelName = ConnectionErrorMessages.getDefaultNotificationChannelName(context);
                    if (notificationChannel2 == null) {
                        notificationChannel = new NotificationChannel("com.google.android.gms.availability", defaultNotificationChannelName, 4);
                    } else {
                        str = "com.google.android.gms.availability";
                        if (!defaultNotificationChannelName.contentEquals(notificationChannel2.getName())) {
                            notificationChannel2.setName(defaultNotificationChannelName);
                            notificationChannel = notificationChannel2;
                        }
                    }
                    notificationManager.createNotificationChannel(notificationChannel);
                    str = "com.google.android.gms.availability";
                }
                a.m8723a(str);
            }
            Notification e = a.m8716e();
            if (i == 1 || i == 2 || i == 3) {
                i2 = 10436;
                GooglePlayServicesUtilLight.sCanceledAvailabilityNotification.set(false);
            } else {
                i2 = 39789;
            }
            notificationManager.notify(i2, e);
        } else if (i == 6) {
            Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
        }
    }

    /* renamed from: b */
    private final String m5991b() {
        String str;
        synchronized (f6150a) {
            str = this.f6152c;
        }
        return str;
    }

    public static GoogleApiAvailability getInstance() {
        return f6151b;
    }

    public static Dialog zaa(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(ConnectionErrorMessages.getErrorMessage(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        m5996a(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5995a(Context context) {
        new HandlerC1566a(context).sendEmptyMessageDelayed(1, 120000L);
    }

    public Task<Void> checkApiAvailability(GoogleApi<?> googleApi, GoogleApi<?>... googleApiArr) {
        return m5992a(googleApi, googleApiArr).continueWith(new C1568a());
    }

    public Task<Void> checkApiAvailability(HasApiKey<?> hasApiKey, HasApiKey<?>... hasApiKeyArr) {
        return m5992a(hasApiKey, hasApiKeyArr).onSuccessTask(C1636b.f6582a);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public int getClientVersion(Context context) {
        return super.getClientVersion(context);
    }

    public Dialog getErrorDialog(Activity activity, int i, int i2) {
        return getErrorDialog(activity, i, i2, null);
    }

    public Dialog getErrorDialog(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return m5993a(activity, i, DialogRedirect.getInstance(activity, getErrorResolutionIntent(activity, i, "d"), i2), onCancelListener);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public Intent getErrorResolutionIntent(Context context, int i, String str) {
        return super.getErrorResolutionIntent(context, i, str);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public PendingIntent getErrorResolutionPendingIntent(Context context, int i, int i2) {
        return super.getErrorResolutionPendingIntent(context, i, i2);
    }

    public PendingIntent getErrorResolutionPendingIntent(Context context, ConnectionResult connectionResult) {
        return connectionResult.hasResolution() ? connectionResult.getResolution() : getErrorResolutionPendingIntent(context, connectionResult.getErrorCode(), 0);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public final String getErrorString(int i) {
        return super.getErrorString(i);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public int isGooglePlayServicesAvailable(Context context) {
        return super.isGooglePlayServicesAvailable(context);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public int isGooglePlayServicesAvailable(Context context, int i) {
        return super.isGooglePlayServicesAvailable(context, i);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public final boolean isUserResolvableError(int i) {
        return super.isUserResolvableError(i);
    }

    public Task<Void> makeGooglePlayServicesAvailable(Activity activity) {
        int i = GOOGLE_PLAY_SERVICES_VERSION_CODE;
        Preconditions.checkMainThread("makeGooglePlayServicesAvailable must be called from the main thread");
        int isGooglePlayServicesAvailable = isGooglePlayServicesAvailable(activity, i);
        if (isGooglePlayServicesAvailable == 0) {
            return Tasks.forResult(null);
        }
        zabt zac = zabt.zac(activity);
        zac.zab(new ConnectionResult(isGooglePlayServicesAvailable, null), 0);
        return zac.getTask();
    }

    public void setDefaultNotificationChannelId(Context context, String str) {
        if (PlatformVersion.isAtLeastO()) {
            Preconditions.checkNotNull(((NotificationManager) context.getSystemService("notification")).getNotificationChannel(str));
        }
        synchronized (f6150a) {
            this.f6152c = str;
        }
    }

    public boolean showErrorDialogFragment(Activity activity, int i, int i2) {
        return showErrorDialogFragment(activity, i, i2, null);
    }

    public boolean showErrorDialogFragment(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog errorDialog = getErrorDialog(activity, i, i2, onCancelListener);
        if (errorDialog == null) {
            return false;
        }
        m5996a(activity, errorDialog, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    public void showErrorNotification(Context context, int i) {
        m5994a(context, i, getErrorResolutionPendingIntent(context, i, 0, "n"));
    }

    public void showErrorNotification(Context context, ConnectionResult connectionResult) {
        m5994a(context, connectionResult.getErrorCode(), getErrorResolutionPendingIntent(context, connectionResult));
    }

    public final zabq zaa(Context context, zabp zabpVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zabq zabqVar = new zabq(zabpVar);
        context.registerReceiver(zabqVar, intentFilter);
        zabqVar.zac(context);
        if (isUninstalledAppPossiblyUpdating(context, "com.google.android.gms")) {
            return zabqVar;
        }
        zabpVar.zas();
        zabqVar.unregister();
        return null;
    }

    public final boolean zaa(Activity activity, LifecycleFragment lifecycleFragment, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog a = m5993a(activity, i, DialogRedirect.getInstance(lifecycleFragment, getErrorResolutionIntent(activity, i, "d"), 2), onCancelListener);
        if (a == null) {
            return false;
        }
        m5996a(activity, a, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    public final boolean zaa(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent errorResolutionPendingIntent = getErrorResolutionPendingIntent(context, connectionResult);
        if (errorResolutionPendingIntent == null) {
            return false;
        }
        m5994a(context, connectionResult.getErrorCode(), GoogleApiActivity.zaa(context, errorResolutionPendingIntent, i));
        return true;
    }
}
