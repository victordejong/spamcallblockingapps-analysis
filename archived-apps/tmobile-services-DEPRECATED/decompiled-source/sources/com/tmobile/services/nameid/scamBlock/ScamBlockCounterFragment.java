package com.tmobile.services.nameid.scamBlock;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.scamBlock.ScamBlock;
import com.tmobile.services.nameid.scamBlock.ScamBlockCounter;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.RecyclerViewClickListener;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt__JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0092\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010:\u001a\u000209¢\u0006\u0004\b?\u0010@J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\b\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ+\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u001d\u0010\u0017\u001a\u00020\u00032\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u0017\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u001e8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010(\u001a\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u0010)R\u0016\u0010,\u001a\u00020+8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u0010/\u001a\u00020.8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00101\u001a\u00020\u001a8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00104\u001a\u0002038\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00107\u001a\u0002068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u0010:\u001a\u0002098\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010=\u001a\u00020<8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>¨\u0006A"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlockCounterFragment;", "com/tmobile/services/nameid/scamBlock/ScamBlockCounter$View", "Landroidx/fragment/app/DialogFragment;", "", "goToBlockedActivity", "()V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onDestroyView", "onPause", "setBlockedMode", "", "Lcom/tmobile/services/nameid/model/activity/ActivityItem;", "data", "setData", "(Ljava/util/List;)V", "setReceivedMode", "", "n", "setScamCallCount", "(I)V", "", "LOG_TAG", "Ljava/lang/String;", "Lcom/tmobile/services/nameid/scamBlock/ScamBlockRecyclerViewAdapter;", "adapter", "Lcom/tmobile/services/nameid/scamBlock/ScamBlockRecyclerViewAdapter;", "Landroid/widget/ImageView;", "closeButton", "Landroid/widget/ImageView;", "Landroid/widget/TextView;", "countSubtitle", "Landroid/widget/TextView;", "countTextView", "Lkotlin/coroutines/CoroutineContext;", "job", "Lkotlin/coroutines/CoroutineContext;", "Landroidx/recyclerview/widget/LinearLayoutManager;", "layoutManager", "Landroidx/recyclerview/widget/LinearLayoutManager;", "layoutResId", "I", "Lcom/tmobile/services/nameid/scamBlock/ScamBlockCounter$Presenter;", "presenter", "Lcom/tmobile/services/nameid/scamBlock/ScamBlockCounter$Presenter;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "scamBlockState", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "<init>", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockCounterFragment.class */
public final class ScamBlockCounterFragment extends DialogFragment implements ScamBlockCounter.View {

    /* renamed from: f */
    private final String f13768f = "ScamBlockCounterFrag#";

    /* renamed from: g */
    private final int f13769g = C1517R.layout.fragment_scam_block_counter;

    /* renamed from: h */
    private TextView f13770h;

    /* renamed from: i */
    private TextView f13771i;

    /* renamed from: j */
    private ImageView f13772j;

    /* renamed from: k */
    private RecyclerView f13773k;

    /* renamed from: l */
    private LinearLayoutManager f13774l;

    /* renamed from: m */
    private ScamBlockRecyclerViewAdapter f13775m;

    /* renamed from: n */
    private final CoroutineContext f13776n;

    /* renamed from: o */
    private final CoroutineScope f13777o;

    /* renamed from: p */
    private final ScamBlock.State f13778p;

    /* renamed from: q */
    private HashMap f13779q;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockCounterFragment$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13780a;

        static {
            int[] iArr = new int[ScamBlock.State.values().length];
            f13780a = iArr;
            iArr[ScamBlock.State.ON.ordinal()] = 1;
            f13780a[ScamBlock.State.FAKE_ON.ordinal()] = 2;
            f13780a[ScamBlock.State.PENDING_ON.ordinal()] = 3;
        }
    }

    public ScamBlockCounterFragment(@NotNull ScamBlock.State scamBlockState) {
        CompletableJob b;
        Intrinsics.m1830e(scamBlockState, "scamBlockState");
        this.f13778p = scamBlockState;
        b = JobKt__JobKt.m1208b(null, 1, null);
        this.f13776n = b;
        this.f13777o = CoroutineScopeKt.m1312a(b.plus(Dispatchers.m1267b()));
    }

    /* renamed from: H0 */
    public static final /* synthetic */ ScamBlockRecyclerViewAdapter m6324H0(ScamBlockCounterFragment scamBlockCounterFragment) {
        ScamBlockRecyclerViewAdapter scamBlockRecyclerViewAdapter = scamBlockCounterFragment.f13775m;
        if (scamBlockRecyclerViewAdapter != null) {
            return scamBlockRecyclerViewAdapter;
        }
        Intrinsics.m1814u("adapter");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L0 */
    public final void m6320L0() {
        BuildersKt__Builders_commonKt.m1370b(this.f13777o, null, null, new ScamBlockCounterFragment$goToBlockedActivity$1(this, null), 3, null);
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlockCounter.View
    /* renamed from: E */
    public void mo6326E() {
        LogUtil.m5643d(this.f13768f, "setBlockedMode");
        TextView textView = this.f13771i;
        if (textView != null) {
            textView.setText(getString(C1517R.string.scam_block_calls_blocked));
        } else {
            Intrinsics.m1814u("countSubtitle");
            throw null;
        }
    }

    /* renamed from: G0 */
    public void m6325G0() {
        HashMap hashMap = this.f13779q;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlockCounter.View
    /* renamed from: a */
    public void mo6319a(int i) {
        String str = this.f13768f;
        LogUtil.m5643d(str, "setScamCallCount = " + i);
        TextView textView = this.f13770h;
        if (textView != null) {
            textView.setText(String.valueOf(i));
        } else {
            Intrinsics.m1814u("countTextView");
            throw null;
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlockCounter.View
    /* renamed from: f */
    public void mo6318f(@NotNull List<? extends ActivityItem> data) {
        Intrinsics.m1830e(data, "data");
        String str = this.f13768f;
        LogUtil.m5639h(str, "setData: " + data.size() + " items");
        ScamBlockRecyclerViewAdapter scamBlockRecyclerViewAdapter = this.f13775m;
        if (scamBlockRecyclerViewAdapter != null) {
            scamBlockRecyclerViewAdapter.m6277d(data);
            ScamBlockRecyclerViewAdapter scamBlockRecyclerViewAdapter2 = this.f13775m;
            if (scamBlockRecyclerViewAdapter2 != null) {
                scamBlockRecyclerViewAdapter2.notifyDataSetChanged();
            } else {
                Intrinsics.m1814u("adapter");
                throw null;
            }
        } else {
            Intrinsics.m1814u("adapter");
            throw null;
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlockCounter.View
    /* renamed from: g0 */
    public void mo6317g0() {
        LogUtil.m5643d(this.f13768f, "setReceivedMode");
        TextView textView = this.f13771i;
        if (textView != null) {
            textView.setText(getString(C1517R.string.scam_block_calls_received));
        } else {
            Intrinsics.m1814u("countSubtitle");
            throw null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        LogUtil.m5643d(this.f13768f, "onCreate");
        super.onCreate(bundle);
        setStyle(0, 16973834);
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.m1830e(inflater, "inflater");
        LogUtil.m5643d(this.f13768f, "onCreateView");
        View view = inflater.inflate(this.f13769g, viewGroup, false);
        View findViewById = view.findViewById(C1517R.C1520id.scam_block_counter_close_button);
        Intrinsics.m1831d(findViewById, "view.findViewById(R.id.s…ock_counter_close_button)");
        ImageView imageView = (ImageView) findViewById;
        this.f13772j = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.scamBlock.ScamBlockCounterFragment$onCreateView$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ScamBlockCounterFragment.this.dismissAllowingStateLoss();
                }
            });
            View findViewById2 = view.findViewById(C1517R.C1520id.count_text);
            Intrinsics.m1831d(findViewById2, "view.findViewById(R.id.count_text)");
            this.f13770h = (TextView) findViewById2;
            View findViewById3 = view.findViewById(C1517R.C1520id.count_subtitle2);
            Intrinsics.m1831d(findViewById3, "view.findViewById(R.id.count_subtitle2)");
            this.f13771i = (TextView) findViewById3;
            View findViewById4 = view.findViewById(C1517R.C1520id.scam_block_counter_recycler_view);
            Intrinsics.m1831d(findViewById4, "view.findViewById(R.id.s…ck_counter_recycler_view)");
            RecyclerView recyclerView = (RecyclerView) findViewById4;
            this.f13773k = recyclerView;
            if (recyclerView != null) {
                recyclerView.setHasFixedSize(false);
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
                this.f13774l = linearLayoutManager;
                RecyclerView recyclerView2 = this.f13773k;
                if (recyclerView2 == null) {
                    Intrinsics.m1814u("recyclerView");
                    throw null;
                } else if (linearLayoutManager != null) {
                    recyclerView2.setLayoutManager(linearLayoutManager);
                    ScamBlockRecyclerViewAdapter scamBlockRecyclerViewAdapter = new ScamBlockRecyclerViewAdapter(new RecyclerViewClickListener() { // from class: com.tmobile.services.nameid.scamBlock.ScamBlockCounterFragment$onCreateView$2
                        @Override // com.tmobile.services.nameid.utility.RecyclerViewClickListener
                        /* renamed from: a */
                        public final void mo5380a(int i) {
                            String str;
                            str = ScamBlockCounterFragment.this.f13768f;
                            LogUtil.m5643d(str, "Item clicked. Is it a footer? " + ScamBlockCounterFragment.m6324H0(ScamBlockCounterFragment.this).m6278c(i));
                            if (ScamBlockCounterFragment.m6324H0(ScamBlockCounterFragment.this).m6278c(i)) {
                                ScamBlockCounterFragment.this.m6320L0();
                            }
                        }
                    }, this.f13778p);
                    this.f13775m = scamBlockRecyclerViewAdapter;
                    RecyclerView recyclerView3 = this.f13773k;
                    if (recyclerView3 == null) {
                        Intrinsics.m1814u("recyclerView");
                        throw null;
                    } else if (scamBlockRecyclerViewAdapter != null) {
                        recyclerView3.setAdapter(scamBlockRecyclerViewAdapter);
                        Context context = getContext();
                        if (context != null) {
                            ((MainActivity) context).m7558y(true, false);
                            new ScamBlockCounterPresenter(this, ScamBlock.f13766d.m6335a());
                            Intrinsics.m1831d(view, "view");
                            return view;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type com.tmobile.services.nameid.MainActivity");
                    } else {
                        Intrinsics.m1814u("adapter");
                        throw null;
                    }
                } else {
                    Intrinsics.m1814u("layoutManager");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("recyclerView");
                throw null;
            }
        } else {
            Intrinsics.m1814u("closeButton");
            throw null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        LogUtil.m5643d(this.f13768f, "onDestroyView");
        Context context = getContext();
        if (context != null) {
            ((MainActivity) context).m7578n0();
            m6325G0();
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type com.tmobile.services.nameid.MainActivity");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (getContext() != null && isAdded()) {
            dismissAllowingStateLoss();
        }
    }
}
