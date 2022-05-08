package zendesk.support.guide;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.VisibleForTesting;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.graphics.drawable.DrawableCompat;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.zendesk.logger.Logger;
import com.zendesk.sdk.C1790R;
import java.util.List;
import zendesk.core.NetworkInfoProvider;
import zendesk.support.CategoryItem;
import zendesk.support.HelpCenterProvider;
import zendesk.support.HelpItem;
import zendesk.support.SectionItem;
import zendesk.support.SeeAllArticlesItem;
import zendesk.support.UiUtils;
import zendesk.support.guide.HelpCenterMvp;
import zendesk.support.guide.HelpMvp;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpRecyclerViewAdapter.class */
public class HelpRecyclerViewAdapter extends RecyclerView.Adapter<HelpViewHolder> implements HelpMvp.View {
    private Context context;
    private int defaultCategoryTitleColour;
    private final HelpCenterUiConfig helpCenterUiConfig;
    private int highlightCategoryTitleColour;
    private HelpMvp.Presenter presenter;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpRecyclerViewAdapter$ArticleViewHolder.class */
    public class ArticleViewHolder extends HelpViewHolder {
        ArticleViewHolder(View view) {
            super(view);
            this.textView = (TextView) view;
        }

        @Override // zendesk.support.guide.HelpRecyclerViewAdapter.HelpViewHolder
        public void bindTo(final HelpItem helpItem, int i) {
            if (helpItem == null || helpItem.getId() == null) {
                Logger.m295e("HelpCenterActivity", "Article item was null, cannot bind", new Object[0]);
                return;
            }
            this.textView.setText(UiUtils.decodeHtmlEntities(helpItem.getName()));
            this.textView.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.guide.HelpRecyclerViewAdapter.ArticleViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ViewArticleActivity.builder(helpItem.getId().longValue()).show(HelpRecyclerViewAdapter.this.context, HelpRecyclerViewAdapter.this.helpCenterUiConfig.getUiConfigs());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder.class */
    public class CategoryViewHolder extends HelpViewHolder {
        private static final int ROTATION_END_LEVEL = 10000;
        private static final String ROTATION_PROPERTY_NAME = "level";
        private static final int ROTATION_START_LEVEL = 0;
        private boolean expanded;
        private Drawable expanderDrawable;

        CategoryViewHolder(View view) {
            super(view);
            TextView textView = (TextView) view;
            this.textView = textView;
            this.expanderDrawable = DrawableCompat.wrap(ContextCompat.getDrawable(view.getContext(), C1790R.C1792drawable.zs_help_ic_expand_more)).mutate();
            DrawableCompat.setTint(this.expanderDrawable, UiUtils.themeAttributeToColor(16842808, HelpRecyclerViewAdapter.this.context, C1790R.color.zs_fallback_text_color));
            DrawableCompat.setTintMode(this.expanderDrawable, PorterDuff.Mode.SRC_IN);
            if (Build.VERSION.SDK_INT >= 17) {
                textView.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, this.expanderDrawable, (Drawable) null);
            } else {
                textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.expanderDrawable, (Drawable) null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHighlightColor(boolean z) {
            if (z) {
                this.textView.setTextColor(HelpRecyclerViewAdapter.this.highlightCategoryTitleColour);
                this.expanderDrawable.setColorFilter(HelpRecyclerViewAdapter.this.highlightCategoryTitleColour, PorterDuff.Mode.SRC_IN);
                return;
            }
            this.textView.setTextColor(HelpRecyclerViewAdapter.this.defaultCategoryTitleColour);
            this.expanderDrawable.setColorFilter(HelpRecyclerViewAdapter.this.defaultCategoryTitleColour, PorterDuff.Mode.SRC_IN);
        }

        @Override // zendesk.support.guide.HelpRecyclerViewAdapter.HelpViewHolder
        public void bindTo(HelpItem helpItem, final int i) {
            int i2 = 0;
            if (helpItem == null) {
                Logger.m295e("HelpCenterActivity", "Category item was null, cannot bind", new Object[0]);
                return;
            }
            this.textView.setText(UiUtils.decodeHtmlEntities(helpItem.getName()));
            final CategoryItem categoryItem = (CategoryItem) helpItem;
            this.expanded = categoryItem.isExpanded();
            Drawable drawable = this.expanderDrawable;
            if (this.expanded) {
                i2 = 10000;
            }
            drawable.setLevel(i2);
            setHighlightColor(categoryItem.isExpanded());
            this.textView.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.guide.HelpRecyclerViewAdapter.CategoryViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CategoryViewHolder.this.expanded = HelpRecyclerViewAdapter.this.presenter.onCategoryClick(categoryItem, i);
                    Drawable drawable2 = CategoryViewHolder.this.expanderDrawable;
                    int i3 = 10000;
                    int i4 = CategoryViewHolder.this.expanded ? 0 : 10000;
                    if (!CategoryViewHolder.this.expanded) {
                        i3 = 0;
                    }
                    ObjectAnimator.ofInt(drawable2, "level", i4, i3).start();
                    CategoryViewHolder.this.setHighlightColor(CategoryViewHolder.this.expanded);
                }
            });
        }

        public boolean isExpanded() {
            return this.expanded;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpRecyclerViewAdapter$ExtraPaddingViewHolder.class */
    public class ExtraPaddingViewHolder extends HelpViewHolder {
        ExtraPaddingViewHolder(View view) {
            super(view);
        }

        @Override // zendesk.support.guide.HelpRecyclerViewAdapter.HelpViewHolder
        public void bindTo(HelpItem helpItem, int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder.class */
    public static abstract class HelpViewHolder extends RecyclerView.ViewHolder {
        TextView textView;

        HelpViewHolder(View view) {
            super(view);
        }

        public abstract void bindTo(HelpItem helpItem, int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpRecyclerViewAdapter$LoadingViewHolder.class */
    public class LoadingViewHolder extends HelpViewHolder {
        LoadingViewHolder(View view) {
            super(view);
        }

        @Override // zendesk.support.guide.HelpRecyclerViewAdapter.HelpViewHolder
        public void bindTo(HelpItem helpItem, int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpRecyclerViewAdapter$NoResultsViewHolder.class */
    public class NoResultsViewHolder extends HelpViewHolder {
        NoResultsViewHolder(View view) {
            super(view);
        }

        @Override // zendesk.support.guide.HelpRecyclerViewAdapter.HelpViewHolder
        public void bindTo(HelpItem helpItem, int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpRecyclerViewAdapter$SectionViewHolder.class */
    public class SectionViewHolder extends HelpViewHolder {
        SectionViewHolder(View view) {
            super(view);
            this.textView = (TextView) view.findViewById(C1790R.C1793id.section_title);
        }

        @Override // zendesk.support.guide.HelpRecyclerViewAdapter.HelpViewHolder
        public void bindTo(HelpItem helpItem, int i) {
            if (helpItem == null) {
                Logger.m295e("HelpCenterActivity", "Section item was null, cannot bind", new Object[0]);
            } else {
                this.textView.setText(UiUtils.decodeHtmlEntities(helpItem.getName()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpRecyclerViewAdapter$SeeAllViewHolder.class */
    public class SeeAllViewHolder extends HelpViewHolder {
        private ProgressBar progressBar;

        SeeAllViewHolder(View view) {
            super(view);
            this.textView = (TextView) view.findViewById(C1790R.C1793id.help_section_action_button);
            this.progressBar = (ProgressBar) view.findViewById(C1790R.C1793id.help_section_loading_progress);
        }

        @Override // zendesk.support.guide.HelpRecyclerViewAdapter.HelpViewHolder
        public void bindTo(final HelpItem helpItem, int i) {
            if (!(helpItem instanceof SeeAllArticlesItem)) {
                Logger.m295e("HelpCenterActivity", "SeeAll item was null, cannot bind", new Object[0]);
                return;
            }
            final SeeAllArticlesItem seeAllArticlesItem = (SeeAllArticlesItem) helpItem;
            if (seeAllArticlesItem.isLoading()) {
                this.textView.setVisibility(8);
                this.progressBar.setVisibility(0);
            } else {
                this.textView.setVisibility(0);
                this.progressBar.setVisibility(8);
            }
            SectionItem section = seeAllArticlesItem.getSection();
            this.textView.setText(section != null ? HelpRecyclerViewAdapter.this.context.getString(C1790R.string.support_help_see_all_n_articles_label, Integer.valueOf(section.getTotalArticlesCount())) : HelpRecyclerViewAdapter.this.context.getString(C1790R.string.support_help_see_all_articles_label));
            this.textView.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.guide.HelpRecyclerViewAdapter.SeeAllViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SeeAllViewHolder.this.textView.setVisibility(8);
                    SeeAllViewHolder.this.progressBar.setVisibility(0);
                    HelpRecyclerViewAdapter.this.presenter.onSeeAllClick((SeeAllArticlesItem) helpItem);
                    seeAllArticlesItem.setLoading(true);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HelpRecyclerViewAdapter(HelpCenterUiConfig helpCenterUiConfig, HelpCenterProvider helpCenterProvider, NetworkInfoProvider networkInfoProvider) {
        this.presenter = new HelpAdapterPresenter(this, new HelpModel(helpCenterProvider), networkInfoProvider, helpCenterUiConfig);
        this.helpCenterUiConfig = helpCenterUiConfig;
    }

    private View inflateView(ViewGroup viewGroup, int i) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
    }

    @Override // zendesk.support.guide.HelpMvp.View
    public void addItem(int i, HelpItem helpItem) {
        notifyItemInserted(i);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.presenter.getItemCount();
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.presenter.getItemViewType(i);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.context = recyclerView.getContext();
        this.highlightCategoryTitleColour = UiUtils.themeAttributeToColor(C1790R.C1791attr.colorPrimary, this.context, C1790R.color.zs_fallback_text_color);
        this.defaultCategoryTitleColour = ContextCompat.getColor(this.context, C1790R.color.zs_help_text_color_primary);
        this.presenter.onAttached();
    }

    public void onBindViewHolder(HelpViewHolder helpViewHolder, int i) {
        if (helpViewHolder == null) {
            Logger.m289w("HelpCenterActivity", "Holder was null, possible unexpected item type", new Object[0]);
        } else {
            helpViewHolder.bindTo(this.presenter.getItemForBinding(i), i);
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public HelpViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 1:
                return new CategoryViewHolder(inflateView(viewGroup, C1790R.C1794layout.zs_row_category));
            case 2:
                return new SectionViewHolder(inflateView(viewGroup, C1790R.C1794layout.zs_row_section));
            case 3:
                return new ArticleViewHolder(inflateView(viewGroup, C1790R.C1794layout.zs_row_article));
            case 4:
                return new SeeAllViewHolder(inflateView(viewGroup, C1790R.C1794layout.zs_row_action));
            case 5:
                return new LoadingViewHolder(inflateView(viewGroup, C1790R.C1794layout.zs_row_loading_progress));
            case 6:
            default:
                Logger.m289w("HelpCenterActivity", "Unknown item type, returning null for holder", new Object[0]);
                return null;
            case 7:
                return new NoResultsViewHolder(inflateView(viewGroup, C1790R.C1794layout.zs_row_no_articles_found));
            case 8:
                return new ExtraPaddingViewHolder(inflateView(viewGroup, C1790R.C1794layout.zs_row_padding));
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.presenter.onDetached();
        this.context = null;
    }

    @Override // zendesk.support.guide.HelpMvp.View
    public void removeItem(int i) {
        notifyItemRemoved(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setContentUpdateListener(HelpCenterMvp.Presenter presenter) {
        if (this.presenter != null) {
            this.presenter.setContentPresenter(presenter);
        }
    }

    @Override // zendesk.support.guide.HelpMvp.View
    public void showItems(List<HelpItem> list) {
        notifyDataSetChanged();
    }
}
