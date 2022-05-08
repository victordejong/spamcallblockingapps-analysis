package com.tmobile.services.nameid.activity;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.activity.ActivityPresenter;
import com.tmobile.services.nameid.activity.MessageActivityRecyclerViewAdapter;
import com.tmobile.services.nameid.model.activity.EventSummaryItem;
import com.tmobile.services.nameid.p007ui.UIAnalyticConfigurator;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.RecyclerViewClickListener;
import com.tmobile.services.nameid.utility.WidgetUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/MessageActivityRecyclerViewAdapter.class */
public class MessageActivityRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    @NonNull

    /* renamed from: a */
    private RecyclerViewClickListener f13163a;
    @Nonnull

    /* renamed from: b */
    private List<EventSummaryItem> f13164b = new ArrayList();

    /* renamed from: c */
    private boolean f13165c = false;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/MessageActivityRecyclerViewAdapter$FooterViewHolder.class */
    public static class FooterViewHolder extends RecyclerView.ViewHolder {
        FooterViewHolder(View view, final RecyclerViewClickListener recyclerViewClickListener) {
            super(view);
            TextView textView = (TextView) view.findViewById(C1517R.C1520id.footer_item_text_view);
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.activity.q0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MessageActivityRecyclerViewAdapter.FooterViewHolder.this.m6901a(recyclerViewClickListener, view2);
                }
            });
        }

        /* renamed from: a */
        public /* synthetic */ void m6901a(RecyclerViewClickListener recyclerViewClickListener, View view) {
            recyclerViewClickListener.mo5380a(getLayoutPosition());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/MessageActivityRecyclerViewAdapter$ItemType.class */
    public enum ItemType {
        NORMAL(1),
        FOOTER(2);
        
        private final int value;

        ItemType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/MessageActivityRecyclerViewAdapter$MessageActivityViewHolder.class */
    public static class MessageActivityViewHolder extends WidgetUtils.GenericViewHolder {
        public MessageActivityViewHolder(View view, RecyclerViewClickListener recyclerViewClickListener) {
            super(view, recyclerViewClickListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MessageActivityRecyclerViewAdapter(RecyclerViewClickListener recyclerViewClickListener) {
        this.f13163a = recyclerViewClickListener;
    }

    /* renamed from: h */
    private void m6902h() {
        ActivityPresenter.MessageFilterType fromValue = ActivityPresenter.MessageFilterType.fromValue(PreferenceUtils.m5394c("PREF_LAST_USED_MESSAGE_FILTER", 0));
        if (!this.f13164b.isEmpty() && fromValue == ActivityPresenter.MessageFilterType.ALL) {
            List<EventSummaryItem> list = this.f13164b;
            PreferenceUtils.m5384m("PREF_EVENT_SUMMARY_LAST_DISPLAYED_DATE", list.get(list.size() - 1).getDate().getTime());
        }
    }

    @Nullable
    /* renamed from: c */
    public EventSummaryItem m6907c(int i) {
        if (i < 0 || i >= this.f13164b.size()) {
            return null;
        }
        return this.f13164b.get(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m6906d(int i) {
        return i == this.f13164b.size();
    }

    /* renamed from: e */
    public void m6905e(List<EventSummaryItem> list) {
        LogUtil.m5643d("MessageActivityRecyclerViewAdapter#prependActivityItems", "prepending items to RecyclerView - adding " + list.size() + "items to " + this.f13164b.size() + " items");
        StringBuilder sb = new StringBuilder();
        sb.append("old list has ");
        sb.append(this.f13164b.size());
        sb.append(" items");
        LogUtil.m5643d("MessageActivityRecyclerViewAdapter#prependActivityItems", sb.toString());
        ArrayList arrayList = new ArrayList();
        for (EventSummaryItem eventSummaryItem : list) {
            arrayList.add(eventSummaryItem.copy());
        }
        for (EventSummaryItem eventSummaryItem2 : this.f13164b) {
            if (!list.contains(eventSummaryItem2)) {
                LogUtil.m5643d("MessageActivityRecyclerViewAdapter#prependActivityItems", "adding item: " + eventSummaryItem2.toString());
                arrayList.add(eventSummaryItem2);
            }
        }
        LogUtil.m5643d("MessageActivityRecyclerViewAdapter#prependActivityItems", "new list has " + arrayList.size() + " items");
        try {
            Collections.sort(arrayList, Collections.reverseOrder());
            LogUtil.m5643d("MessageActivityRecyclerViewAdapter#prependActivityItems", "new list has been sorted.");
            this.f13164b = arrayList;
            m6902h();
        } catch (Exception e) {
            LogUtil.m5643d("MessageActivityRecyclerViewAdapter#", "Error sorting message activity: " + e);
        }
    }

    /* renamed from: f */
    public void m6904f(List<EventSummaryItem> list) {
        LogUtil.m5643d("MessageActivityRecyclerViewAdapter#setEventSummaryItems", "setting items in RecyclerView - empty?" + list.isEmpty());
        ArrayList arrayList = new ArrayList(list);
        this.f13164b = arrayList;
        Collections.sort(arrayList, Collections.reverseOrder());
        m6902h();
    }

    /* renamed from: g */
    public void m6903g(boolean z) {
        LogUtil.m5643d("MessageActivityRecyclerViewAdapter#setShowNoMoreItems", "setting showNoMoreItems=" + z);
        this.f13165c = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f13164b.size() + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return m6906d(i) ? ItemType.FOOTER.getValue() : ItemType.NORMAL.getValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (getItemViewType(i) == ItemType.FOOTER.getValue()) {
            ((FooterViewHolder) viewHolder).itemView.setVisibility(this.f13165c ? 0 : 8);
        } else if (i >= 0 && i < this.f13164b.size()) {
            EventSummaryItem eventSummaryItem = this.f13164b.get(i);
            if (eventSummaryItem != null) {
                WidgetUtils.m5238e(eventSummaryItem, (MessageActivityViewHolder) viewHolder);
            } else {
                LogUtil.m5631p("MessageActivityRecyclerViewAdapter#onBindViewHolder", "item was null, cannot setup view holder");
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == ItemType.FOOTER.getValue()) {
            return new FooterViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C1517R.layout.footer_item, viewGroup, false), this.f13163a);
        }
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C1517R.layout.activity_item_message, viewGroup, false);
        UIAnalyticConfigurator.m6241k().m6239m("Message Activity Item", inflate);
        return new MessageActivityViewHolder(inflate, this.f13163a);
    }
}
