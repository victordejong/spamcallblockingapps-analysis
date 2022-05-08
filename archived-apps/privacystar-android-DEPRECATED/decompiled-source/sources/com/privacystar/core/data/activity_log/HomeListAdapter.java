package com.privacystar.core.data.activity_log;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.LayoutRes;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupMenu;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.activity_log.HomeListAdapter;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.providers.DataProviderFlags;
import com.privacystar.core.data.providers.LocalLogProvider;
import com.privacystar.core.data.providers.LogProvider;
import com.privacystar.core.p011ui.util.LogItemBinder;
import com.privacystar.core.service.IViewClickCallback;
import com.privacystar.core.service.PreferenceUtil;
import io.realm.Realm;
import java.util.Observable;
import java.util.Observer;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/activity_log/HomeListAdapter.class */
public class HomeListAdapter extends RecyclerView.Adapter<ViewHolder> {
    public static final int EXTRA_VIEWS_AT_TOP = 0;
    public static final int TYPE_CONTENT = 1;
    public static final int TYPE_HEADER = 0;
    IViewClickCallback<CallDetails> clickCallback;
    LogProvider contentProvider;
    PopupMenu filterMenu;
    private LinearLayoutManager layoutManager;
    private Realm realm;
    private int expandedPosition = -1;
    private PSLogFilters currentFilter = PSLogFilters.ALL_ACTIVITY;
    LogItemBinder itemBinder = new LogItemBinder();

    /* renamed from: com.privacystar.core.data.activity_log.HomeListAdapter$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/activity_log/HomeListAdapter$1.class */
    static /* synthetic */ class C15761 {
        static final /* synthetic */ int[] $SwitchMap$com$privacystar$core$data$activity_log$PSLogFilters = new int[PSLogFilters.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$privacystar$core$data$activity_log$PSLogFilters[PSLogFilters.ALL_ACTIVITY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$privacystar$core$data$activity_log$PSLogFilters[PSLogFilters.BLOCK_ACTIVITY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/activity_log/HomeListAdapter$ViewHolder.class */
    public static class ViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener, Observer {
        private HomeListAdapter adapter;
        private CallDetails boundModel;
        View boundView;
        IViewClickCallback<CallDetails> clickListener;
        private LogItemBinder itemBinder;
        private Object mObject = new Object();

        public ViewHolder(View view, IViewClickCallback<CallDetails> iViewClickCallback, LogItemBinder logItemBinder) {
            super(view);
            this.boundView = view;
            this.itemBinder = logItemBinder;
            setClickListener(iViewClickCallback);
        }

        CallDetails getBoundModel() {
            return this.boundModel;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final /* synthetic */ void lambda$update$0$HomeListAdapter$ViewHolder() {
            Realm defaultInstance = Realm.getDefaultInstance();
            try {
                this.itemBinder.bindActivityLogItem(this.itemView.findViewById(C1566R.C1569id.log_item_root_theme), getBoundModel(), this, true, PSApplication.context(), defaultInstance);
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

        /* JADX INFO: Access modifiers changed from: package-private */
        public void onBodyClick(View view) {
            Timber.m28v("Item clicked... listener is null? %b... mBound model is null? %b", Boolean.valueOf(this.clickListener == null), Boolean.valueOf(this.boundModel == null));
            if (this.clickListener != null) {
                Timber.m28v("Opening details for model: %s", this.boundModel);
                this.clickListener.onViewClick(this.boundModel);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void onBodyExpandClick(View view) {
            Timber.m28v("Item clicked... listener is null? %b... mBound model is null? %b", Boolean.valueOf(this.clickListener == null), Boolean.valueOf(this.boundModel == null));
            if (this.clickListener != null) {
                Timber.m28v("Opening details for model: %s", this.boundModel);
                this.clickListener.onViewSpecialClick(this.boundModel, getAdapterPosition(), LogExpandedAction.NONE);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LogExpandedAction logExpandedAction = (LogExpandedAction) view.getTag();
            if (logExpandedAction != null && this.clickListener != null) {
                Timber.m28v("Opening details for model: %s", this.boundModel);
                this.clickListener.onViewSpecialClick(this.boundModel, getAdapterPosition(), logExpandedAction);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean onItemLongClick(View view) {
            Timber.m28v("Item long clicked... listener is null? %b... mBound model is null? %b", Boolean.valueOf(this.clickListener == null), Boolean.valueOf(this.boundModel == null));
            if (this.clickListener != null) {
                return this.clickListener.onViewLongClick(this.boundModel);
            }
            return false;
        }

        public void setAdapter(HomeListAdapter homeListAdapter) {
            this.adapter = homeListAdapter;
        }

        void setBoundModel(CallDetails callDetails) {
            synchronized (this) {
                if (this.boundModel != null) {
                    this.boundModel.getCaller().deleteObserver(this);
                }
                this.boundModel = callDetails;
                this.boundModel.getCaller().addObserver(this);
            }
        }

        void setClickListener(IViewClickCallback<CallDetails> iViewClickCallback) {
            this.clickListener = iViewClickCallback;
            if (this.clickListener != null) {
                if (PreferenceUtil.getActivityLogGrouping() == LogGrouping.ADJACENT_CALLER_EVENTS) {
                    this.boundView.setOnClickListener(new View.OnClickListener(this) { // from class: com.privacystar.core.data.activity_log.HomeListAdapter$ViewHolder$$Lambda$0
                        private final HomeListAdapter.ViewHolder arg$1;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.arg$1 = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            this.arg$1.onBodyExpandClick(view);
                        }
                    });
                } else {
                    this.boundView.setOnClickListener(new View.OnClickListener(this) { // from class: com.privacystar.core.data.activity_log.HomeListAdapter$ViewHolder$$Lambda$1
                        private final HomeListAdapter.ViewHolder arg$1;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.arg$1 = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            this.arg$1.onBodyClick(view);
                        }
                    });
                }
                this.boundView.setOnLongClickListener(new View.OnLongClickListener(this) { // from class: com.privacystar.core.data.activity_log.HomeListAdapter$ViewHolder$$Lambda$2
                    private final HomeListAdapter.ViewHolder arg$1;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.arg$1 = this;
                    }

                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view) {
                        return this.arg$1.onItemLongClick(view);
                    }
                });
            }
        }

        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            Timber.m28v("LogViewHolder observed an update in Caller model, notifying adapter.", new Object[0]);
            new Handler(Looper.getMainLooper()).post(new Runnable(this) { // from class: com.privacystar.core.data.activity_log.HomeListAdapter$ViewHolder$$Lambda$3
                private final HomeListAdapter.ViewHolder arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.arg$1.lambda$update$0$HomeListAdapter$ViewHolder();
                }
            });
        }
    }

    public HomeListAdapter(Realm realm, LogProvider logProvider, IViewClickCallback<CallDetails> iViewClickCallback, LinearLayoutManager linearLayoutManager) {
        this.realm = realm;
        this.contentProvider = logProvider;
        this.clickCallback = iViewClickCallback;
        this.layoutManager = linearLayoutManager;
        this.contentProvider.setup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onFilterChange */
    public boolean bridge$lambda$0$HomeListAdapter(MenuItem menuItem) {
        PSLogFilters pSLogFilters;
        switch (menuItem.getItemId()) {
            case C1566R.C1569id.home_filter_all_activity /* 2131296782 */:
                pSLogFilters = PSLogFilters.ALL_ACTIVITY;
                break;
            case C1566R.C1569id.home_filter_block_activity /* 2131296783 */:
                pSLogFilters = PSLogFilters.BLOCK_ACTIVITY;
                break;
            default:
                Timber.m25w("Undefined menu item. No filter changes made.", new Object[0]);
                return false;
        }
        setListFilter(pSLogFilters);
        notifyDataSetChanged();
        return true;
    }

    private void setDefault() {
        setListFilter(PSLogFilters.ALL_ACTIVITY);
    }

    private void setFilterTitleText(PSLogFilters pSLogFilters) {
        switch (C15761.$SwitchMap$com$privacystar$core$data$activity_log$PSLogFilters[pSLogFilters.ordinal()]) {
            case 1:
            case 2:
                return;
            default:
                Timber.m25w("Invalid filter title option.", new Object[0]);
                return;
        }
    }

    private void setupFilterMenu(Context context) {
        this.filterMenu.getMenuInflater().inflate(C1566R.C1572menu.home_filter_menu, this.filterMenu.getMenu());
        this.filterMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener(this) { // from class: com.privacystar.core.data.activity_log.HomeListAdapter$$Lambda$0
            private final HomeListAdapter arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                return this.arg$1.bridge$lambda$0$HomeListAdapter(menuItem);
            }
        });
    }

    public int getCurrentContentProviders() {
        return this.contentProvider.getContentType();
    }

    public int getExpandedPosition() {
        return this.expandedPosition;
    }

    @LayoutRes
    protected int getGroupingLayout() {
        return C1566R.C1571layout.log_item_grouped;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.contentProvider.finishedLoading() ? this.contentProvider.getContentSize() + 0 : this.contentProvider.getContentUpperBound() + 0;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return (i > -1 || i < -1) ? 1 : 0;
    }

    public PSLogFilters getListFilter() {
        return this.currentFilter;
    }

    public void notifyContentProviderChanged() {
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        if (i > -1 || i < -1) {
            CallDetails contentAt = this.contentProvider.getContentAt(i + 0);
            if (contentAt == null) {
                viewHolder.clickListener = null;
                return;
            }
            int i2 = 0;
            boolean z = i == this.expandedPosition;
            View findViewById = viewHolder.itemView.findViewById(C1566R.C1569id.log_item_root_theme);
            Realm defaultInstance = Realm.getDefaultInstance();
            try {
                this.itemBinder.bindActivityLogItem(findViewById, contentAt, viewHolder, true, PSApplication.context(), defaultInstance);
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
                View findViewById2 = viewHolder.itemView.findViewById(C1566R.C1569id.log_item_expanded_ll);
                if (!z) {
                    i2 = 8;
                }
                findViewById2.setVisibility(i2);
                viewHolder.boundView.setActivated(z);
                viewHolder.setBoundModel(contentAt);
            } finally {
                try {
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            viewHolder.clickListener = null;
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i != 1) {
            return null;
        }
        ViewHolder viewHolder = new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(getGroupingLayout(), viewGroup, false), this.clickCallback, this.itemBinder);
        viewHolder.setAdapter(this);
        return viewHolder;
    }

    public void setExpandedPosition(int i) {
        this.expandedPosition = i;
    }

    public void setListFilter(PSLogFilters pSLogFilters) {
        this.currentFilter = pSLogFilters;
        this.contentProvider = LocalLogProvider.getLogProvider(pSLogFilters);
        if (DataProviderFlags.isFlagSet(this.contentProvider.getContentType(), 32) && (this.contentProvider instanceof LocalLogProvider)) {
            ((LocalLogProvider) this.contentProvider).setAdapter(this);
        }
        this.contentProvider.update();
    }
}
