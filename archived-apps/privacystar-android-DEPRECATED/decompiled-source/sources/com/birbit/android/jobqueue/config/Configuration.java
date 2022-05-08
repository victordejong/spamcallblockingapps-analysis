package com.birbit.android.jobqueue.config;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.DefaultQueueFactory;
import com.birbit.android.jobqueue.QueueFactory;
import com.birbit.android.jobqueue.log.CustomLogger;
import com.birbit.android.jobqueue.log.JqLog;
import com.birbit.android.jobqueue.network.NetworkUtil;
import com.birbit.android.jobqueue.network.NetworkUtilImpl;
import com.birbit.android.jobqueue.p005di.DependencyInjector;
import com.birbit.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue;
import com.birbit.android.jobqueue.scheduling.Scheduler;
import com.birbit.android.jobqueue.timer.SystemTimer;
import com.birbit.android.jobqueue.timer.Timer;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/config/Configuration.class */
public class Configuration {
    public static final String DEFAULT_ID = "default_job_manager";
    public static final int DEFAULT_LOAD_FACTOR_PER_CONSUMER = 3;
    public static final int DEFAULT_THREAD_KEEP_ALIVE_SECONDS = 15;
    public static final int DEFAULT_THREAD_PRIORITY = 5;
    public static final int MAX_CONSUMER_COUNT = 5;
    public static final int MIN_CONSUMER_COUNT = 0;
    Context appContext;
    boolean batchSchedulerRequests;
    int consumerKeepAlive;
    CustomLogger customLogger;
    DependencyInjector dependencyInjector;

    /* renamed from: id */
    String f88id;
    boolean inTestMode;
    int loadFactor;
    int maxConsumerCount;
    int minConsumerCount;
    NetworkUtil networkUtil;
    QueueFactory queueFactory;
    boolean resetDelaysOnRestart;
    Scheduler scheduler;
    ThreadFactory threadFactory;
    int threadPriority;
    Timer timer;

    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/config/Configuration$Builder.class */
    public static final class Builder {
        private Pattern idRegex = Pattern.compile("^([A-Za-z]|[0-9]|_|-)+$");
        private Configuration configuration = new Configuration();

        public Builder(@NonNull Context context) {
            this.configuration.appContext = context.getApplicationContext();
        }

        @NonNull
        public Configuration build() {
            if (this.configuration.queueFactory == null) {
                this.configuration.queueFactory = new DefaultQueueFactory();
            }
            if (this.configuration.networkUtil == null) {
                this.configuration.networkUtil = new NetworkUtilImpl(this.configuration.appContext);
            }
            if (this.configuration.timer == null) {
                this.configuration.timer = new SystemTimer();
            }
            return this.configuration;
        }

        @NonNull
        public Builder consumerKeepAlive(int i) {
            this.configuration.consumerKeepAlive = i;
            return this;
        }

        @NonNull
        public Builder consumerThreadPriority(int i) {
            this.configuration.threadPriority = i;
            return this;
        }

        @NonNull
        public Builder customLogger(@Nullable CustomLogger customLogger) {
            this.configuration.customLogger = customLogger;
            return this;
        }

        @NonNull
        /* renamed from: id */
        public Builder m393id(@NonNull String str) {
            if (str == null || !this.idRegex.matcher(str).matches()) {
                throw new IllegalArgumentException("id cannot be null or empty and can only include alphanumeric characters, - or _ .");
            }
            this.configuration.f88id = str;
            return this;
        }

        @NonNull
        public Builder inTestMode() {
            this.configuration.inTestMode = true;
            return this;
        }

        @NonNull
        public Builder injector(@Nullable DependencyInjector dependencyInjector) {
            this.configuration.dependencyInjector = dependencyInjector;
            return this;
        }

        @NonNull
        public Builder jobSerializer(@NonNull SqliteJobQueue.JobSerializer jobSerializer) {
            this.configuration.queueFactory = new DefaultQueueFactory(jobSerializer);
            return this;
        }

        @NonNull
        public Builder loadFactor(int i) {
            this.configuration.loadFactor = i;
            return this;
        }

        @NonNull
        public Builder maxConsumerCount(int i) {
            this.configuration.maxConsumerCount = i;
            return this;
        }

        @NonNull
        public Builder minConsumerCount(int i) {
            this.configuration.minConsumerCount = i;
            return this;
        }

        @NonNull
        public Builder networkUtil(@Nullable NetworkUtil networkUtil) {
            this.configuration.networkUtil = networkUtil;
            return this;
        }

        @NonNull
        public Builder queueFactory(@Nullable QueueFactory queueFactory) {
            if (this.configuration.queueFactory == null || queueFactory == null) {
                this.configuration.queueFactory = queueFactory;
                return this;
            }
            throw new RuntimeException("already set a queue factory. This might happen ifyou've provided a custom job serializer");
        }

        @NonNull
        public Builder resetDelaysOnRestart() {
            this.configuration.resetDelaysOnRestart = true;
            return this;
        }

        @NonNull
        public Builder scheduler(@Nullable Scheduler scheduler) {
            return scheduler(scheduler, true);
        }

        @NonNull
        public Builder scheduler(@Nullable Scheduler scheduler, boolean z) {
            this.configuration.scheduler = scheduler;
            this.configuration.batchSchedulerRequests = z;
            return this;
        }

        @NonNull
        public Builder threadFactory(@Nullable ThreadFactory threadFactory) {
            this.configuration.threadFactory = threadFactory;
            return this;
        }

        @NonNull
        public Builder timer(@Nullable Timer timer) {
            this.configuration.timer = timer;
            return this;
        }
    }

    private Configuration() {
        this.f88id = DEFAULT_ID;
        this.maxConsumerCount = 5;
        this.minConsumerCount = 0;
        this.consumerKeepAlive = 15;
        this.loadFactor = 3;
        this.customLogger = new JqLog.ErrorLogger();
        this.inTestMode = false;
        this.resetDelaysOnRestart = false;
        this.threadPriority = 5;
        this.batchSchedulerRequests = true;
        this.threadFactory = null;
    }

    public boolean batchSchedulerRequests() {
        return this.batchSchedulerRequests;
    }

    @NonNull
    public Context getAppContext() {
        return this.appContext;
    }

    public int getConsumerKeepAlive() {
        return this.consumerKeepAlive;
    }

    @Nullable
    public CustomLogger getCustomLogger() {
        return this.customLogger;
    }

    @Nullable
    public DependencyInjector getDependencyInjector() {
        return this.dependencyInjector;
    }

    @NonNull
    public String getId() {
        return this.f88id;
    }

    public int getLoadFactor() {
        return this.loadFactor;
    }

    public int getMaxConsumerCount() {
        return this.maxConsumerCount;
    }

    public int getMinConsumerCount() {
        return this.minConsumerCount;
    }

    @NonNull
    public NetworkUtil getNetworkUtil() {
        return this.networkUtil;
    }

    @NonNull
    public QueueFactory getQueueFactory() {
        return this.queueFactory;
    }

    @Nullable
    public Scheduler getScheduler() {
        return this.scheduler;
    }

    @Nullable
    public ThreadFactory getThreadFactory() {
        return this.threadFactory;
    }

    public int getThreadPriority() {
        return this.threadPriority;
    }

    @NonNull
    public Timer getTimer() {
        return this.timer;
    }

    public boolean isInTestMode() {
        return this.inTestMode;
    }

    public boolean resetDelaysOnRestart() {
        return this.resetDelaysOnRestart;
    }
}
