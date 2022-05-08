package com.privacystar.core.data.providers;

import android.support.annotation.NonNull;
import android.support.p004v7.widget.RecyclerView;
import com.privacystar.core.data.activity_log.LogGrouping;
import com.privacystar.core.data.activity_log.PSLogFilters;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.providers.custom.OffenderRecentActivityProvider;
import com.privacystar.core.data.providers.standard.AdjacentGroupingComparator;
import com.privacystar.core.data.providers.standard.CallDetailsMerger;
import com.privacystar.core.service.PreferenceUtil;
import java.util.ArrayList;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/LocalLogProvider.class */
public class LocalLogProvider implements LogProvider, OffenderRecentActivityProvider.OffenderTableCallback {
    private RecyclerView.Adapter adapter;
    private int flags;
    private boolean isContentLoaded;
    private LogGrouping logGrouping;
    private DataProvider<CallDetails> provider;
    private List<DataProvider<CallDetails>> uncombinedProviders;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.privacystar.core.data.providers.LocalLogProvider$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/LocalLogProvider$1.class */
    public static /* synthetic */ class C15911 {
        static final /* synthetic */ int[] $SwitchMap$com$privacystar$core$data$activity_log$LogGrouping;
        static final /* synthetic */ int[] $SwitchMap$com$privacystar$core$data$activity_log$PSLogFilters = new int[PSLogFilters.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004a -> B:19:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004e -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0052 -> B:25:0x0033). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0056 -> B:21:0x003e). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$privacystar$core$data$activity_log$PSLogFilters[PSLogFilters.ALL_ACTIVITY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$privacystar$core$data$activity_log$PSLogFilters[PSLogFilters.BLOCK_ACTIVITY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            $SwitchMap$com$privacystar$core$data$activity_log$LogGrouping = new int[LogGrouping.values().length];
            try {
                $SwitchMap$com$privacystar$core$data$activity_log$LogGrouping[LogGrouping.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$privacystar$core$data$activity_log$LogGrouping[LogGrouping.ADJACENT_CALLER_EVENTS.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$privacystar$core$data$activity_log$LogGrouping[LogGrouping.MOST_RECENT_CALLER_EVENT.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public LocalLogProvider() {
        this(0);
        Timber.m25w("LocalLogProvider instantiated without content.", new Object[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LocalLogProvider(int r7) {
        /*
            r6 = this;
            r0 = r6
            r0.<init>()
            r0 = r6
            com.privacystar.core.data.activity_log.LogGrouping r1 = com.privacystar.core.data.activity_log.LogGrouping.NONE
            r0.logGrouping = r1
            r0 = 0
            r8 = r0
            r0 = r6
            r1 = 0
            r0.isContentLoaded = r1
            r0 = r6
            r1 = r7
            r0.flags = r1
            r0 = r6
            r1 = r6
            int r1 = r1.flags
            com.privacystar.core.data.activity_log.LogGrouping r1 = com.privacystar.core.data.activity_log.LogGrouping.fromDataProviderFlags(r1)
            r0.logGrouping = r1
            java.lang.String r0 = "LocalLogProvider instantiated with grouping: %s"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r6
            com.privacystar.core.data.activity_log.LogGrouping r4 = r4.logGrouping
            java.lang.String r4 = r4.toString()
            r2[r3] = r4
            timber.log.Timber.m37d(r0, r1)
            r0 = r6
            java.util.ArrayList r1 = new java.util.ArrayList
            r2 = r1
            r2.<init>()
            r0.uncombinedProviders = r1
            r0 = r7
            r1 = 1
            boolean r0 = com.privacystar.core.data.providers.DataProviderFlags.isFlagSet(r0, r1)
            if (r0 == 0) goto L_0x006d
            r0 = r6
            java.util.List<com.privacystar.core.data.providers.DataProvider<com.privacystar.core.data.call.call_details.CallDetails>> r0 = r0.uncombinedProviders
            com.privacystar.core.data.providers.standard.CallLogDataProvider r1 = new com.privacystar.core.data.providers.standard.CallLogDataProvider
            r2 = r1
            r2.<init>()
            boolean r0 = r0.add(r1)
            r0 = r6
            java.util.List<com.privacystar.core.data.providers.DataProvider<com.privacystar.core.data.call.call_details.CallDetails>> r0 = r0.uncombinedProviders
            com.privacystar.core.data.providers.custom.BlockHistoryDataProvider r1 = new com.privacystar.core.data.providers.custom.BlockHistoryDataProvider
            r2 = r1
            r2.<init>()
            boolean r0 = r0.add(r1)
            goto L_0x00cc
        L_0x006d:
            r0 = r7
            r1 = 2
            boolean r0 = com.privacystar.core.data.providers.DataProviderFlags.isFlagSet(r0, r1)
            if (r0 == 0) goto L_0x0086
            r0 = r6
            java.util.List<com.privacystar.core.data.providers.DataProvider<com.privacystar.core.data.call.call_details.CallDetails>> r0 = r0.uncombinedProviders
            com.privacystar.core.data.providers.standard.CallLogDataProvider r1 = new com.privacystar.core.data.providers.standard.CallLogDataProvider
            r2 = r1
            r2.<init>()
            boolean r0 = r0.add(r1)
        L_0x0086:
            r0 = r7
            r1 = 8
            boolean r0 = com.privacystar.core.data.providers.DataProviderFlags.isFlagSet(r0, r1)
            if (r0 == 0) goto L_0x00a0
            r0 = r6
            java.util.List<com.privacystar.core.data.providers.DataProvider<com.privacystar.core.data.call.call_details.CallDetails>> r0 = r0.uncombinedProviders
            com.privacystar.core.data.providers.custom.BlockHistoryDataProvider r1 = new com.privacystar.core.data.providers.custom.BlockHistoryDataProvider
            r2 = r1
            r2.<init>()
            boolean r0 = r0.add(r1)
        L_0x00a0:
            r0 = r7
            r1 = 16
            boolean r0 = com.privacystar.core.data.providers.DataProviderFlags.isFlagSet(r0, r1)
            if (r0 == 0) goto L_0x00ba
            r0 = r6
            java.util.List<com.privacystar.core.data.providers.DataProvider<com.privacystar.core.data.call.call_details.CallDetails>> r0 = r0.uncombinedProviders
            com.privacystar.core.data.providers.custom.CallerIDDataProvider r1 = new com.privacystar.core.data.providers.custom.CallerIDDataProvider
            r2 = r1
            r2.<init>()
            boolean r0 = r0.add(r1)
        L_0x00ba:
            r0 = r7
            r1 = 32
            boolean r0 = com.privacystar.core.data.providers.DataProviderFlags.isFlagSet(r0, r1)
            if (r0 == 0) goto L_0x00cc
            r0 = r6
            com.privacystar.core.data.providers.custom.OffenderRecentActivityProvider.newDefaultInstance(r0)
            r0 = r8
            r7 = r0
            goto L_0x00ce
        L_0x00cc:
            r0 = 1
            r7 = r0
        L_0x00ce:
            r0 = r7
            if (r0 == 0) goto L_0x00d7
            r0 = r6
            boolean r0 = r0.setup()
        L_0x00d7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.providers.LocalLogProvider.<init>(int):void");
    }

    public static LogProvider getLogProvider(PSLogFilters pSLogFilters) {
        return getLogProvider(pSLogFilters, PreferenceUtil.getActivityLogGrouping());
    }

    public static LogProvider getLogProvider(PSLogFilters pSLogFilters, LogGrouping logGrouping) {
        int i = 1;
        switch (C15911.$SwitchMap$com$privacystar$core$data$activity_log$PSLogFilters[pSLogFilters.ordinal()]) {
            case 1:
                break;
            case 2:
                i = 8;
                break;
            default:
                Timber.m25w("Invalid log filter request. Returning ALL log content.", new Object[0]);
                i = 1;
                break;
        }
        if (C15911.$SwitchMap$com$privacystar$core$data$activity_log$LogGrouping[logGrouping.ordinal()] == 2) {
            i += 256;
        }
        return LogProviderPool.getInstance().getLogProvider(i);
    }

    @Override // com.privacystar.core.data.providers.custom.OffenderRecentActivityProvider.OffenderTableCallback
    public void finishedLoading(OffenderRecentActivityProvider offenderRecentActivityProvider) {
        this.uncombinedProviders.add(offenderRecentActivityProvider);
        setup();
        if (this.adapter != null) {
            this.adapter.notifyDataSetChanged();
        }
    }

    @Override // com.privacystar.core.data.providers.LogProvider
    public boolean finishedLoading() {
        return this.isContentLoaded;
    }

    @Override // com.privacystar.core.data.providers.LogProvider
    public CallDetails getContentAt(int i) {
        return this.provider.get(i);
    }

    @Override // com.privacystar.core.data.providers.LogProvider
    @NonNull
    public List<CallDetails> getContentRange(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        if (i < 0) {
            Timber.m25w("Start index [%d] cannot be <0.", Integer.valueOf(i));
            return arrayList;
        }
        int contentSize = getContentSize();
        int i3 = i2;
        if (i2 > contentSize) {
            Timber.m37d("End index [%d] greater than content size. Only returning up to max size [%d].", Integer.valueOf(i2), Integer.valueOf(contentSize));
            i3 = contentSize;
        }
        LogCursor<CallDetails> cursor = this.provider.getCursor();
        cursor.jumpTo(i);
        if (cursor.getPosition() != i) {
            Timber.m25w("Error seeking cursor to requested index %d.", Integer.valueOf(i));
            return arrayList;
        }
        for (int i4 = i; i4 < i3 && cursor.hasNext(); i4++) {
            arrayList.add(cursor.getNext());
        }
        Timber.m37d("Returning a content list with size %d.", Integer.valueOf(arrayList.size()));
        return arrayList;
    }

    @Override // com.privacystar.core.data.providers.LogProvider
    public int getContentSize() {
        if (this.isContentLoaded) {
            return this.provider.size();
        }
        Timber.m28v("Content size requested, but it is not fully processed, returning upper bound of potential size.", new Object[0]);
        return getContentUpperBound();
    }

    @Override // com.privacystar.core.data.providers.LogProvider
    public int getContentType() {
        return this.flags;
    }

    @Override // com.privacystar.core.data.providers.LogProvider
    public int getContentUpperBound() {
        int i = 0;
        for (DataProvider<CallDetails> dataProvider : this.uncombinedProviders) {
            i += dataProvider.size();
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$setupAsync$0$LocalLogProvider(LogProviderCB logProviderCB) {
        if (this.isContentLoaded) {
            logProviderCB.logProviderLoaded(this, true);
            return;
        }
        setup();
        logProviderCB.logProviderLoaded(this, this.isContentLoaded);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$updateAsync$1$LocalLogProvider(LogProviderCB logProviderCB) {
        update();
        logProviderCB.logProviderLoaded(this, true);
    }

    public void setAdapter(RecyclerView.Adapter adapter) {
        this.adapter = adapter;
    }

    @Override // com.privacystar.core.data.providers.LogProvider
    public boolean setup() {
        if (!this.isContentLoaded) {
            CombinedProvider combinedProvider = new CombinedProvider(new CallDetailsMerger(), (DataProvider[]) this.uncombinedProviders.toArray(new DataProvider[0]));
            switch (C15911.$SwitchMap$com$privacystar$core$data$activity_log$LogGrouping[this.logGrouping.ordinal()]) {
                case 1:
                    this.provider = combinedProvider;
                    break;
                case 2:
                    this.provider = new AdjacentGroupingProvider(new AdjacentGroupingComparator(), combinedProvider);
                    break;
                case 3:
                    Timber.m25w("Most recent call event grouping (2.0 method) is not implemented.", new Object[0]);
                    break;
                default:
                    Timber.m25w("Invalid grouping option set.", new Object[0]);
                    this.provider = combinedProvider;
                    break;
            }
            while (this.provider.hasNext()) {
                this.provider.getNext();
            }
            this.isContentLoaded = true;
        }
        return this.isContentLoaded;
    }

    @Override // com.privacystar.core.data.providers.LogProvider
    public void setupAsync(final LogProviderCB logProviderCB) {
        Timber.m37d("Performing async setup on LocalLogProvider with filterFlags: %s", Integer.toBinaryString(this.flags));
        new Thread(new Runnable(this, logProviderCB) { // from class: com.privacystar.core.data.providers.LocalLogProvider$$Lambda$0
            private final LocalLogProvider arg$1;
            private final LogProviderCB arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = logProviderCB;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.arg$1.lambda$setupAsync$0$LocalLogProvider(this.arg$2);
            }
        }).start();
    }

    @Override // com.privacystar.core.data.providers.LogProvider
    public void update() {
        this.provider.update();
        while (this.provider.hasNext()) {
            this.provider.getNext();
        }
    }

    @Override // com.privacystar.core.data.providers.LogProvider
    public void updateAsync(final LogProviderCB logProviderCB) {
        Timber.m37d("Performing async update on LocalLogProvider with filterFlags: %d", Integer.valueOf(this.flags));
        new Thread(new Runnable(this, logProviderCB) { // from class: com.privacystar.core.data.providers.LocalLogProvider$$Lambda$1
            private final LocalLogProvider arg$1;
            private final LogProviderCB arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = logProviderCB;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.arg$1.lambda$updateAsync$1$LocalLogProvider(this.arg$2);
            }
        }).start();
    }
}
