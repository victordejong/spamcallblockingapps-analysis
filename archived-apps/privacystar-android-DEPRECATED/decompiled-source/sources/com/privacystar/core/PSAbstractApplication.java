package com.privacystar.core;

import android.content.ContentResolver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.support.multidex.MultiDexApplication;
import android.support.p001v4.content.LocalBroadcastManager;
import android.support.p004v7.app.AppCompatDelegate;
import com.birbit.android.jobqueue.JobManager;
import com.birbit.android.jobqueue.config.Configuration;
import com.birbit.android.jobqueue.log.CustomLogger;
import com.birbit.android.jobqueue.scheduling.FrameworkJobSchedulerService;
import com.birbit.android.jobqueue.scheduling.GcmJobSchedulerService;
import com.crashlytics.android.Crashlytics;
import com.firstorion.libcyd.TokenRefreshResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.firebase.FirebaseApp;
import com.privacystar.core.application.AppManagerImpl;
import com.privacystar.core.application.CrashLibrary;
import com.privacystar.core.data.model.LicenseFeature;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.data.realm.DefaultMigration;
import com.privacystar.core.data.shared_prefs.Preferences;
import com.privacystar.core.receiver.CYDTokenRefreshReceiver;
import com.privacystar.core.service.PreferenceService;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.anchor.AnchorAnalyticService;
import com.privacystar.core.service.analytics.apptentive.ApptentiveService;
import com.privacystar.core.service.calleryd.CallerYDHelper;
import com.privacystar.core.service.jobs.DashboardNotificationJob;
import com.privacystar.core.service.jobs.FcmJobService;
import com.privacystar.core.service.jobs.JobService;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.NotificationUtil;
import io.fabric.sdk.android.Fabric;
import io.realm.CompactOnLaunchCallback;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import timber.log.Timber;
import zendesk.core.AnonymousIdentity;
import zendesk.core.Zendesk;
import zendesk.support.Support;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/PSAbstractApplication.class */
public abstract class PSAbstractApplication extends MultiDexApplication {
    protected static WeakReference<PSApplication> pSApplication;
    protected JobManager jobManager;
    protected CompactOnLaunchCallback realmCompactRules = PSAbstractApplication$$Lambda$0.$instance;
    protected RealmConfiguration realmConfiguration;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/PSAbstractApplication$CrashReportingTree.class */
    protected static class CrashReportingTree extends Timber.Tree {
        private static final int MINIMUM_PRIORITY = 4;

        protected CrashReportingTree() {
        }

        @Override // timber.log.Timber.Tree
        protected void log(int i, String str, String str2, Throwable th) {
            if (i >= 4) {
                CrashLibrary.log(i, str, str2);
                if (th != null) {
                    CrashLibrary.logException(th);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/PSAbstractApplication$TimberJobLogger.class */
    public class TimberJobLogger implements CustomLogger {
        static final String TAG = "TaskQueue";

        TimberJobLogger() {
        }

        @Override // com.birbit.android.jobqueue.log.CustomLogger
        /* renamed from: d */
        public void mo303d(String str, Object... objArr) {
        }

        @Override // com.birbit.android.jobqueue.log.CustomLogger
        /* renamed from: e */
        public void mo302e(String str, Object... objArr) {
            Timber.tag(TAG);
            Timber.m25w(str, objArr);
        }

        @Override // com.birbit.android.jobqueue.log.CustomLogger
        /* renamed from: e */
        public void mo301e(Throwable th, String str, Object... objArr) {
            Timber.tag(TAG);
            Timber.m23w(th, str, objArr);
        }

        @Override // com.birbit.android.jobqueue.log.CustomLogger
        public boolean isDebugEnabled() {
            return false;
        }

        @Override // com.birbit.android.jobqueue.log.CustomLogger
        /* renamed from: v */
        public void mo300v(String str, Object... objArr) {
            Timber.tag(TAG);
            Timber.m28v(str, objArr);
        }
    }

    public static void addPnbFreeToLicense() {
        final Realm defaultInstance = Realm.getDefaultInstance();
        try {
            defaultInstance.executeTransaction(new Realm.Transaction(defaultInstance) { // from class: com.privacystar.core.PSAbstractApplication$$Lambda$1
                private final Realm arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = defaultInstance;
                }

                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm) {
                    PSAbstractApplication.lambda$addPnbFreeToLicense$0$PSAbstractApplication(this.arg$1, realm);
                }
            });
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    public static ContentResolver contentResolver() {
        return pSApplication.get().getContentResolver();
    }

    public static Context context() {
        return pSApplication.get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void createInstance(PSApplication pSApplication2) {
        synchronized (PSAbstractApplication.class) {
            try {
                pSApplication = new WeakReference<>(pSApplication2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static PSApplication getInstance() {
        return pSApplication.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$addPnbFreeToLicense$0$PSAbstractApplication(Realm realm, Realm realm2) {
        Iterator it = realm.where(LicenseFeature.class).findAll().iterator();
        boolean z = false;
        boolean z2 = false;
        while (it.hasNext()) {
            LicenseFeature licenseFeature = (LicenseFeature) it.next();
            boolean z3 = z;
            if (licenseFeature.getFeature() == Feature.CALL_BLOCKING.getId()) {
                z3 = true;
            }
            z = z3;
            if (licenseFeature.getFeature() == Feature.APPROVE_LIST.getId()) {
                z2 = true;
                z = z3;
            }
        }
        if (!z) {
            ((LicenseFeature) realm2.createObject(LicenseFeature.class)).setFeature(Feature.CALL_BLOCKING.getId());
        }
        if (!z2) {
            ((LicenseFeature) realm2.createObject(LicenseFeature.class)).setFeature(Feature.APPROVE_LIST.getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ boolean lambda$new$1$PSAbstractApplication(long j, long j2) {
        return j > 52428800 && ((double) j2) / ((double) j) < 0.5d;
    }

    private void setupCrashReporting() {
        if (BuildUtil.INSTANCE.isDevelopmentBuild()) {
            Timber.m28v("Skipping crash reporting setup", new Object[0]);
            return;
        }
        Timber.m28v("Setting up crash reporting", new Object[0]);
        Fabric.with(this, new Crashlytics());
    }

    public static SharedPreferences setupSharedPreferences(Context context) {
        return new PreferenceService.Builder().setContext(context).setMode(0).setPreferencesName(context.getPackageName()).setUseDefaultPreferences(true).build();
    }

    protected void configureJobManager() {
        Configuration.Builder customLogger = new Configuration.Builder(this).minConsumerCount(1).maxConsumerCount(5).loadFactor(3).consumerKeepAlive(120).customLogger(new TimberJobLogger());
        if (Build.VERSION.SDK_INT >= 21) {
            customLogger.scheduler(FrameworkJobSchedulerService.createSchedulerFor(this, JobService.class), true);
        } else if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this) == 0) {
            customLogger.scheduler(GcmJobSchedulerService.createSchedulerFor(this, FcmJobService.class), true);
        }
        this.jobManager = new JobManager(customLogger.build());
    }

    protected RealmConfiguration generateDebugRealmConfiguration() {
        return new RealmConfiguration.Builder().schemaVersion(5L).migration(new DefaultMigration()).compactOnLaunch(this.realmCompactRules).build();
    }

    protected abstract RealmConfiguration generateRealmConfiguration();

    /* JADX INFO: Access modifiers changed from: protected */
    public RealmConfiguration generateReleaseRealmConfiguration() {
        return new RealmConfiguration.Builder().schemaVersion(5L).migration(new DefaultMigration()).compactOnLaunch(this.realmCompactRules).build();
    }

    public JobManager getJobManager() {
        JobManager jobManager;
        synchronized (this) {
            if (this.jobManager == null) {
                configureJobManager();
            }
            jobManager = this.jobManager;
        }
        return jobManager;
    }

    public RealmConfiguration getRealmConfiguration() {
        if (this.realmConfiguration == null) {
            this.realmConfiguration = generateRealmConfiguration();
        }
        return this.realmConfiguration;
    }

    protected void initializeCYD() {
        Timber.m37d("Initializing CallerYD.", new Object[0]);
        Timber.m37d("CallerYD enabled: [%s]", Boolean.valueOf(CallerYDHelper.INSTANCE.getCydApp().getIsEnabled(this)));
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        Preferences.Companion.init(this);
        FirebaseApp.initializeApp(this);
        setupSharedPreferences(this);
        if (AppManagerImpl.INSTANCE.isZendeskSDKEnabled()) {
            Zendesk.INSTANCE.init(this, getString(C1566R.string.zendesk_url), getString(C1566R.string.zendesk_app_id), getString(C1566R.string.zendesk_client_id));
            Zendesk.INSTANCE.setIdentity(new AnonymousIdentity.Builder().build());
            Support.INSTANCE.init(Zendesk.INSTANCE);
        }
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
        setupRealm();
        setupLogging();
        setupCrashReporting();
        setupStetho();
        setupMisc();
        if (AnalyticsManager.INSTANCE.isApptentiveEnabled()) {
            ApptentiveService.INSTANCE.register(this, getString(C1566R.string.apptentive_key), getString(C1566R.string.apptentive_signature));
        }
        if (AnalyticsManager.INSTANCE.isAnchorAnalyticsEnabled() && !BuildUtil.INSTANCE.isDevelopmentBuild()) {
            AnchorAnalyticService.INSTANCE.register();
        }
        configureJobManager();
        NotificationUtil.setupNotificationChannel(this);
        initializeCYD();
        startCYDReceivers();
        if (PreferenceUtil.getLastRegistrationRequest() != 0) {
            PSApplication.getInstance().getJobManager().addJobInBackground(new DashboardNotificationJob());
        }
        addPnbFreeToLicense();
    }

    protected abstract void setupLogging();

    protected abstract void setupMisc();

    protected void setupRealm() {
        Realm.init(this);
        Realm.setDefaultConfiguration(getRealmConfiguration());
    }

    protected abstract void setupStetho();

    protected void startCYDReceivers() {
        LocalBroadcastManager.getInstance(this).registerReceiver(new CYDTokenRefreshReceiver(), new IntentFilter(TokenRefreshResult.ACTION));
    }
}
