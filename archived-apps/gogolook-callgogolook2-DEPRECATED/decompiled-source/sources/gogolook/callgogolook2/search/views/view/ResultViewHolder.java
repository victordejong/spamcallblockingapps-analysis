package gogolook.callgogolook2.search.views.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.gogolook.commonlib.view.IconFontTextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.view.RoundImageView;
import p459j.p460a.p461a0.C11086o;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/views/view/ResultViewHolder.class */
public class ResultViewHolder extends LabelViewHolder {

    /* renamed from: a */
    public C11086o f12748a;

    /* renamed from: b */
    public String f12749b;

    /* renamed from: c */
    public int f12750c;
    @Nullable
    @BindView(R$id.iftv_call)
    public IconFontTextView call;
    @Nullable
    @BindView(R$id.tv_call_times)
    public TextView callTimes;
    @Nullable
    @BindView(R$id.iv_card_spam_icon)
    public ImageView cardSpamIcon;
    @Nullable
    @BindView(R$id.tv_date)
    public TextView date;
    @Nullable
    @BindView(R$id.tv_distance)
    public TextView distance;
    @Nullable
    @BindView(R$id.tv_favorite_times)
    public TextView favoriteTimes;
    @Nullable
    @BindView(R$id.header_text)
    public TextView headerText;
    @Nullable
    @BindView(R$id.ll_line_fourth)
    public LinearLayout lineFourthContainer;
    @Nullable
    @BindView(R$id.line_primary)
    public TextView linePrimary;
    @Nullable
    @BindView(R$id.line_secondary)
    public LinearLayout lineSecondary;
    @Nullable
    @BindView(R$id.line_secondary_number)
    public TextView lineSecondaryNumber;
    @Nullable
    @BindView(R$id.line_secondary_telecom)
    public TextView lineSecondaryTelecom;
    @Nullable
    @BindView(R$id.line_secondary_waiting)
    public View lineSecondaryWaiting;
    @Nullable
    @BindView(R$id.line_tertiary)
    public TextView lineTertiary;
    @Nullable
    @BindView(R$id.ll_line_tertiary)
    public LinearLayout lineTertiaryContainer;
    @Nullable
    @BindView(R$id.ll_item)
    public View llItem;
    @Nullable
    @BindView(R$id.iv_metaphor)
    public RoundImageView metaphor;
    @Nullable
    @BindView(R$id.iv_chevron_metaphor)
    public RoundImageView rightMetaphor;
    @Nullable
    @BindView(R$id.line_sub_title)
    public TextView subTitle;

    public ResultViewHolder(View view) {
        super(view);
    }
}
