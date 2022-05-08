package zendesk.support.guide;

import android.content.Context;
import android.support.p004v7.widget.RecyclerView;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.zendesk.logger.Logger;
import com.zendesk.sdk.C1790R;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.LocaleUtil;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import zendesk.support.HelpCenterProvider;
import zendesk.support.SearchArticle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpSearchRecyclerViewAdapter.class */
public class HelpSearchRecyclerViewAdapter extends RecyclerView.Adapter {
    private static final int TYPE_ARTICLE = 531;
    private static final int TYPE_NO_RESULTS = 441;
    private static final int TYPE_PADDING = 423;
    private final HelpCenterProvider helpCenterProvider;
    private final HelpCenterUiConfig helpCenterUiConfig;
    private String query;
    private boolean resultsCleared = false;
    private List<SearchArticle> searchArticles;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder.class */
    private class HelpSearchViewHolder extends RecyclerView.ViewHolder {
        private Context context;
        private TextView subtitleTextView;
        private TextView titleTextView;

        HelpSearchViewHolder(View view, Context context) {
            super(view);
            this.titleTextView = (TextView) view.findViewById(C1790R.C1793id.title);
            this.subtitleTextView = (TextView) view.findViewById(C1790R.C1793id.subtitle);
            this.context = context;
        }

        void bindTo(final SearchArticle searchArticle) {
            if (searchArticle == null || searchArticle.getArticle() == null) {
                Logger.m295e("HelpCenterActivity", "The article was null, cannot bind the view.", new Object[0]);
                return;
            }
            String title = searchArticle.getArticle().getTitle() != null ? searchArticle.getArticle().getTitle() : "";
            int indexOf = HelpSearchRecyclerViewAdapter.this.query == null ? -1 : title.toLowerCase(Locale.getDefault()).indexOf(HelpSearchRecyclerViewAdapter.this.query.toLowerCase(Locale.getDefault()));
            if (indexOf != -1) {
                SpannableString spannableString = new SpannableString(title);
                spannableString.setSpan(new StyleSpan(1), indexOf, HelpSearchRecyclerViewAdapter.this.query.length() + indexOf, 18);
                this.titleTextView.setText(spannableString);
            } else {
                this.titleTextView.setText(title);
            }
            this.subtitleTextView.setText(this.context.getString(C1790R.string.help_search_subtitle_format, searchArticle.getCategory().getName(), searchArticle.getSection().getName()));
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.guide.HelpSearchRecyclerViewAdapter.HelpSearchViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    HelpSearchRecyclerViewAdapter.this.helpCenterProvider.submitRecordArticleView(searchArticle.getArticle(), LocaleUtil.forLanguageTag(searchArticle.getArticle().getLocale()), new ZendeskCallback<Void>() { // from class: zendesk.support.guide.HelpSearchRecyclerViewAdapter.HelpSearchViewHolder.1.1
                        @Override // com.zendesk.service.ZendeskCallback
                        public void onError(ErrorResponse errorResponse) {
                            Logger.m295e("HelpCenterActivity", "Error submitting Help Center reporting: [reason] %s [isNetworkError] %s [status] %d", errorResponse.getReason(), Boolean.valueOf(errorResponse.isNetworkError()), Integer.valueOf(errorResponse.getStatus()));
                        }

                        public void onSuccess(Void r2) {
                        }
                    });
                    ViewArticleActivity.builder(searchArticle.getArticle()).show(HelpSearchViewHolder.this.itemView.getContext(), HelpSearchRecyclerViewAdapter.this.helpCenterUiConfig.getUiConfigs());
                }
            });
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpSearchRecyclerViewAdapter$NoResultsViewHolder.class */
    private class NoResultsViewHolder extends RecyclerView.ViewHolder {
        NoResultsViewHolder(View view) {
            super(view);
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpSearchRecyclerViewAdapter$PaddingViewHolder.class */
    private class PaddingViewHolder extends RecyclerView.ViewHolder {
        PaddingViewHolder(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HelpSearchRecyclerViewAdapter(List<SearchArticle> list, String str, HelpCenterUiConfig helpCenterUiConfig, HelpCenterProvider helpCenterProvider) {
        this.searchArticles = list;
        this.query = str;
        this.helpCenterUiConfig = helpCenterUiConfig;
        this.helpCenterProvider = helpCenterProvider;
    }

    private int getPaddingExtraItem() {
        return this.helpCenterUiConfig.isContactUsButtonVisible() ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearResults() {
        this.resultsCleared = true;
        this.searchArticles = Collections.emptyList();
        this.query = "";
        notifyDataSetChanged();
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.resultsCleared) {
            return 0;
        }
        return Math.max(this.searchArticles.size() + getPaddingExtraItem(), 1);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return (i == 0 && this.searchArticles.size() == 0) ? TYPE_NO_RESULTS : (i <= 0 || i != this.searchArticles.size()) ? TYPE_ARTICLE : TYPE_PADDING;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (TYPE_ARTICLE == getItemViewType(i)) {
            ((HelpSearchViewHolder) viewHolder).bindTo(this.searchArticles.get(i));
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == TYPE_PADDING) {
            return new PaddingViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C1790R.C1794layout.zs_row_padding, viewGroup, false));
        }
        if (i == TYPE_NO_RESULTS) {
            return new NoResultsViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C1790R.C1794layout.zs_row_no_articles_found, viewGroup, false));
        }
        if (i != TYPE_ARTICLE) {
            return null;
        }
        return new HelpSearchViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C1790R.C1794layout.zs_row_search_article, viewGroup, false), viewGroup.getContext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void update(List<SearchArticle> list, String str) {
        this.resultsCleared = false;
        this.searchArticles = list;
        this.query = str;
        notifyDataSetChanged();
    }
}
