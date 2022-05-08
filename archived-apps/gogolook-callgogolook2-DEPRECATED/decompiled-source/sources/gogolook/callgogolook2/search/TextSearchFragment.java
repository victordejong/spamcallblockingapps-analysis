package gogolook.callgogolook2.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Pair;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.background.systemalarm.CommandHandler;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.VisibleRegion;
import com.google.gson.Gson;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.SmsFilterRulesHelper;
import gogolook.callgogolook2.gson.TextSearchResult;
import gogolook.callgogolook2.gson.TextSearchResultEntry;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.search.SearchHistoryAdapter;
import gogolook.callgogolook2.search.views.view.LabelViewHolder;
import gogolook.callgogolook2.search.views.view.SearchBar;
import gogolook.callgogolook2.search.views.view.SearchBarEditText;
import gogolook.callgogolook2.search.views.view.TrendingLabelView;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6836l;
import p081h.p203i.p204a.p224e.p280k.AbstractC8825g;
import p081h.p203i.p204a.p224e.p280k.C8827h;
import p081h.p203i.p204a.p224e.p282l.AbstractC8866e;
import p081h.p203i.p204a.p224e.p282l.C8855b;
import p081h.p203i.p204a.p224e.p282l.C8856c;
import p081h.p203i.p204a.p224e.p282l.p284k.C8906a;
import p081h.p203i.p204a.p224e.p282l.p284k.C8907b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8908c;
import p081h.p203i.p392f.p393a.p394b.AbstractC10181a;
import p081h.p203i.p392f.p393a.p394b.C10183c;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p518j.AbstractC12476c;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p531k0.C12860e;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p538m0.C13021d;
import p459j.p460a.p551p0.AbstractC13318c;
import p459j.p460a.p551p0.AbstractC13333j;
import p459j.p460a.p551p0.AbstractC13334k;
import p459j.p460a.p551p0.C13319d;
import p459j.p460a.p551p0.C13322f;
import p459j.p460a.p551p0.C13324g;
import p459j.p460a.p551p0.C13331h;
import p459j.p460a.p551p0.C13332i;
import p459j.p460a.p551p0.C13335l;
import p459j.p460a.p551p0.C13336m;
import p459j.p460a.p551p0.C13351n;
import p459j.p460a.p551p0.p552o.p553a.AbstractC13354a;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13938c4;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C13985e2;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14099o3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14132r;
import p459j.p460a.p582w0.C14135r2;
import p459j.p460a.p582w0.C14194v1;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14216x2;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14325z1;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p585b5.C13929c;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p582w0.p590x4.C14302t;
import p459j.p460a.p582w0.p594z4.C14356f;
import p459j.p460a.p613z0.C14612d;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p459j.p460a.p613z0.p617p.DialogC14669c;
import p626l.p641z.p642c.AbstractC15118l;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.Subscription;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.functions.Func1;
import p660rx.schedulers.Schedulers;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment.class */
public class TextSearchFragment extends AbstractC12476c implements AbstractC8866e, C13930d.AbstractC13931a, AbstractC13334k {

    /* renamed from: g0 */
    public static final String f12579g0 = TextSearchFragment.class.getSimpleName();

    /* renamed from: A */
    public ProgressDialog f12580A;

    /* renamed from: B */
    public SearchHistoryAdapter f12581B;

    /* renamed from: C */
    public C13324g f12582C;

    /* renamed from: D */
    public Subscription f12583D;

    /* renamed from: G */
    public TextSearchMarker f12586G;

    /* renamed from: H */
    public C8856c f12587H;

    /* renamed from: I */
    public C10183c<TextSearchMarker> f12588I;

    /* renamed from: J */
    public C14612d<TextSearchMarker> f12589J;

    /* renamed from: K */
    public View f12590K;

    /* renamed from: L */
    public View f12591L;

    /* renamed from: N */
    public ObjectAnimator f12592N;

    /* renamed from: O */
    public ValueAnimator f12593O;

    /* renamed from: P */
    public ObjectAnimator f12594P;

    /* renamed from: Q */
    public ObjectAnimator f12595Q;

    /* renamed from: R */
    public ObjectAnimator f12596R;

    /* renamed from: S */
    public ObjectAnimator f12597S;

    /* renamed from: W */
    public C8906a f12601W;

    /* renamed from: X */
    public C8906a f12602X;

    /* renamed from: Y */
    public String f12603Y;

    /* renamed from: a0 */
    public BroadcastReceiver f12605a0;

    /* renamed from: b0 */
    public ConnectivityManager.NetworkCallback f12606b0;

    /* renamed from: g */
    public MapView f12612g;

    /* renamed from: h */
    public Unbinder f12613h;

    /* renamed from: i */
    public LayoutInflater f12614i;

    /* renamed from: j */
    public Activity f12615j;

    /* renamed from: k */
    public ContentResolver f12616k;

    /* renamed from: l */
    public Handler f12617l;

    /* renamed from: m */
    public boolean f12618m;
    @BindView(R$id.bottom_layout)
    public RelativeLayout mBottomLayout;
    @BindView(R$id.btn_my_location)
    public Button mMyLocation;
    @BindView(R$id.btn_search_area)
    public Button mSearchArea;
    @BindView(2131363147)
    public SearchBar mSearchBar;
    @BindView(R$id.text_search_container)
    public RelativeLayout mSearchContainer;
    @BindView(R$id.rl_history)
    public RelativeLayout mSearchHistory;
    @BindView(R$id.rv_search_history)
    public RecyclerView mSearchHistoryRecyclerView;
    @BindView(R$id.btn_search_list_result)
    public Button mSearchListResult;
    @BindView(R$id.rl_search_result)
    public RelativeLayout mSearchResult;
    @BindView(R$id.rv_search_result)
    public RecyclerView mSearchResultRecyclerView;

    /* renamed from: n */
    public boolean f12619n;

    /* renamed from: o */
    public boolean f12620o;

    /* renamed from: p */
    public boolean f12621p;

    /* renamed from: q */
    public String f12622q;

    /* renamed from: r */
    public AbstractC6825f f12623r;

    /* renamed from: s */
    public LocationRequest f12624s;

    /* renamed from: t */
    public double f12625t;

    /* renamed from: u */
    public double f12626u;

    /* renamed from: w */
    public int f12628w;

    /* renamed from: x */
    public boolean f12629x;

    /* renamed from: y */
    public int f12630y;

    /* renamed from: f */
    public final List<TextSearchMarker> f12610f = new ArrayList();

    /* renamed from: v */
    public int f12627v = 1;

    /* renamed from: z */
    public boolean f12631z = false;

    /* renamed from: E */
    public boolean f12584E = false;

    /* renamed from: F */
    public String f12585F = null;

    /* renamed from: T */
    public boolean f12598T = false;

    /* renamed from: U */
    public int f12599U = 0;

    /* renamed from: V */
    public EnumC5128l1 f12600V = EnumC5128l1.NORMAL_LIST_SEARCH;

    /* renamed from: Z */
    public int f12604Z = 0;

    /* renamed from: c0 */
    public C13929c f12607c0 = new C13929c(this, false);

    /* renamed from: d0 */
    public AbstractC13333j f12608d0 = new C13336m(this);

    /* renamed from: e0 */
    public boolean f12609e0 = false;

    /* renamed from: f0 */
    public boolean f12611f0 = false;

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$a.class */
    public class C5092a implements TextView.OnEditorActionListener {
        public C5092a() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 2) {
                return true;
            }
            TextSearchFragment.this.m26247j(true);
            return true;
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$a0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$a0.class */
    public class C5093a0 implements Action1<C12378a.C12380b> {

        /* renamed from: a */
        public final /* synthetic */ String f12633a;

        /* renamed from: b */
        public final /* synthetic */ C13331h f12634b;

        public C5093a0(String str, C13331h hVar) {
            this.f12633a = str;
            this.f12634b = hVar;
        }

        /* renamed from: a */
        public void call(C12378a.C12380b bVar) {
            if (TextSearchFragment.this.m26228p0() && TextSearchFragment.this.mSearchBar.keywordEdit.getText().toString().equalsIgnoreCase(this.f12633a)) {
                if (bVar != null && bVar.f27921b == 200) {
                    try {
                        TextSearchResult textSearchResult = (TextSearchResult) new Gson().m30982a(bVar.f27922c, (Class<Object>) TextSearchResult.class);
                        ArrayList<TextSearchResultEntry> arrayList = textSearchResult.results;
                        TextSearchFragment.this.f12582C.m4239a(this.f12633a, TextSearchFragment.this.f12625t, TextSearchFragment.this.f12626u);
                        if (!this.f12634b.f30010d) {
                            if (C14217x3.m2137h(TextSearchFragment.this.f12615j) && arrayList.size() != 0) {
                                TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
                                if (TextSearchFragment.this.m26230o0()) {
                                    textSearchResultEntry.name = "GPS_OFF";
                                    textSearchResultEntry.listType = 0;
                                    if (!TextSearchFragment.this.f12582C.m4219f().contains(textSearchResultEntry)) {
                                        arrayList.add(0, textSearchResultEntry);
                                    }
                                } else if ((TextSearchFragment.this.f12626u == 0.0d || TextSearchFragment.this.f12625t == 0.0d) && TextSearchFragment.this.f12618m) {
                                    textSearchResultEntry.name = "NO_LOCATION";
                                    textSearchResultEntry.listType = 0;
                                    if (!TextSearchFragment.this.f12582C.m4219f().contains(textSearchResultEntry)) {
                                        arrayList.add(0, textSearchResultEntry);
                                    }
                                }
                            }
                            TextSearchFragment.this.f12582C.m4235a(arrayList, textSearchResult.total, 4, false, this.f12634b.f30013g);
                        } else {
                            Iterator<TextSearchResultEntry> it = arrayList.iterator();
                            int i = 0;
                            while (it.hasNext()) {
                                TextSearchResultEntry next = it.next();
                                if (!(next.lnglat.size() < 2 || 0.0d == next.lnglat.get(0).doubleValue() || 0.0d == next.lnglat.get(1).doubleValue())) {
                                    i++;
                                }
                            }
                            TextSearchFragment.this.f12582C.m4235a(arrayList, textSearchResult.total, 4, true, this.f12634b.f30013g);
                            TextSearchFragment.this.f12610f.clear();
                            if (TextSearchFragment.this.f12587H != null) {
                                TextSearchFragment.this.f12587H.m16875a();
                            }
                            if (TextSearchFragment.this.f12588I != null) {
                                TextSearchFragment.this.f12588I.m13201a();
                            }
                            if (!TextSearchFragment.this.f12593O.isRunning()) {
                                C13351n a = C13351n.m4136a();
                                if (i == 0) {
                                    if (TextSearchFragment.this.mSearchListResult.getVisibility() == 0) {
                                        TextSearchFragment.this.f12597S.setFloatValues(0.0f, a.f30054a);
                                        TextSearchFragment.this.f12597S.start();
                                    }
                                    if (TextSearchFragment.this.m26222s0()) {
                                        TextSearchFragment.this.mSearchResult.setVisibility(8);
                                        TextSearchFragment.this.mSearchResultRecyclerView.setVisibility(8);
                                        C14687h.m862a(TextSearchFragment.this.f12615j, (int) R$string.search_mapview_noresult_toast, 0).m858c();
                                    }
                                    TextSearchFragment.this.f12600V = EnumC5128l1.MAP_SEARCH_NO_RESULT;
                                    TextSearchFragment.this.mSearchListResult.setVisibility(8);
                                } else {
                                    if (TextSearchFragment.this.mSearchListResult.getVisibility() == 8) {
                                        TextSearchFragment.this.f12597S.setFloatValues(a.f30054a, 0.0f);
                                        TextSearchFragment.this.f12597S.start();
                                    } else if (TextSearchFragment.this.mSearchListResult.getVisibility() == 0 && TextSearchFragment.this.f12591L != null) {
                                        TextSearchFragment.this.f12597S.setFloatValues(-a.f30068o, 0.0f);
                                        TextSearchFragment.this.f12597S.start();
                                    }
                                    if (TextSearchFragment.this.m26226q0()) {
                                        TextSearchFragment.this.mSearchListResult.setVisibility(8);
                                        TextSearchFragment.this.mSearchArea.setVisibility(8);
                                        TextSearchFragment.this.mMyLocation.setVisibility(8);
                                    } else if (TextSearchFragment.this.m26222s0()) {
                                        TextSearchFragment.this.mSearchListResult.setVisibility(0);
                                        TextSearchFragment.this.mSearchArea.setVisibility(0);
                                        TextSearchFragment.this.mMyLocation.setVisibility(0);
                                        TextSearchFragment.this.mSearchResult.setVisibility(8);
                                        TextSearchFragment.this.mSearchResultRecyclerView.setVisibility(8);
                                    }
                                    TextSearchFragment.this.m26254h0();
                                    if (TextSearchFragment.this.f12598T) {
                                        TextSearchFragment.this.m26259g(true);
                                    } else {
                                        return;
                                    }
                                }
                            }
                            TextSearchFragment.this.f12586G = null;
                            TextSearchFragment.this.f12599U = 0;
                            TextSearchFragment.this.m26210y0();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                TextSearchFragment.this.m26301a(this.f12633a, 4, false);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$a1 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$a1.class */
    public class RunnableC5094a1 implements Runnable {
        public RunnableC5094a1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextSearchFragment.this.mSearchBar.keywordEdit.setText("");
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$b.class */
    public class C5095b implements TextWatcher {
        public C5095b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String obj = editable.toString();
            if (TextSearchFragment.this.isVisible() && TextSearchFragment.this.isAdded() && !TextSearchFragment.this.isDetached()) {
                if (!TextSearchFragment.this.f12611f0 || !TextUtils.isEmpty(obj)) {
                    TextSearchFragment.this.m26270e(obj);
                }
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$b0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$b0.class */
    public class C5096b0 implements Action1<Throwable> {

        /* renamed from: a */
        public final /* synthetic */ String f12638a;

        public C5096b0(String str) {
            this.f12638a = str;
        }

        /* renamed from: a */
        public void call(Throwable th) {
            if (TextSearchFragment.this.m26228p0()) {
                TextSearchFragment.this.m26301a(this.f12638a, 4, false);
            }
            C13973d4.m2952a(th);
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$b1 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$b1.class */
    public class RunnableC5097b1 implements Runnable {
        public RunnableC5097b1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextSearchFragment.this.m26214w0();
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$c.class */
    public class C5098c implements AbstractC13354a {
        public C5098c() {
        }

        @Override // p459j.p460a.p551p0.p552o.p553a.AbstractC13354a
        /* renamed from: a */
        public void mo4133a() {
            if (TextSearchFragment.this.isAdded() && TextSearchFragment.this.m26228p0()) {
                if (TextUtils.isEmpty(TextSearchFragment.this.mSearchBar.keywordEdit.getText().toString())) {
                    TextSearchFragment.this.f12582C.m4238a("", new ArrayList<>(), -1);
                    TextSearchFragment.this.mSearchResult.setVisibility(8);
                    TextSearchFragment.this.mSearchHistory.setVisibility(0);
                    return;
                }
                TextSearchFragment textSearchFragment = TextSearchFragment.this;
                textSearchFragment.m26301a(textSearchFragment.mSearchBar.keywordEdit.getText().toString().trim(), TextSearchFragment.this.f12582C.m4222d(), false);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$c0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$c0.class */
    public class C5099c0 implements Single.OnSubscribe<C12378a.C12380b> {

        /* renamed from: a */
        public final /* synthetic */ String f12642a;

        /* renamed from: b */
        public final /* synthetic */ C13331h f12643b;

        public C5099c0(String str, C13331h hVar) {
            this.f12642a = str;
            this.f12643b = hVar;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super C12378a.C12380b> singleSubscriber) {
            System.currentTimeMillis();
            HashMap hashMap = new HashMap();
            try {
                String replaceAll = URLEncoder.encode(this.f12642a, "UTF-8").replaceAll("\\++", "%20");
                String valueOf = String.valueOf(TextSearchFragment.this.f12604Z);
                singleSubscriber.onSuccess((TextSearchFragment.this.f12625t == 0.0d || TextSearchFragment.this.f12626u == 0.0d) ? C12378a.m6277a(C12378a.EnumC12382d.GET_TEXT_SEARCH_V2, (JSONObject) null, hashMap, C14017g4.m2810n(), replaceAll, String.valueOf(TextSearchFragment.this.f12630y), String.valueOf(20), String.valueOf(true), TextSearchFragment.this.f12603Y, String.valueOf(false), valueOf).m6261c() : !this.f12643b.f30010d ? C12378a.m6277a(C12378a.EnumC12382d.GET_TEXT_SEARCH_V2, (JSONObject) null, hashMap, C14017g4.m2810n(), replaceAll, String.valueOf(TextSearchFragment.this.f12630y), String.valueOf(20), String.valueOf(TextSearchFragment.this.f12626u), String.valueOf(TextSearchFragment.this.f12625t), String.valueOf(true), TextSearchFragment.this.f12603Y, String.valueOf(false), valueOf).m6261c() : C12378a.m6277a(C12378a.EnumC12382d.GET_TEXT_SEARCH_V2, (JSONObject) null, hashMap, C14017g4.m2810n(), replaceAll, String.valueOf(TextSearchFragment.this.f12626u), String.valueOf(TextSearchFragment.this.f12625t), String.valueOf(TextSearchFragment.this.f12627v), String.valueOf(true), TextSearchFragment.this.f12603Y, String.valueOf(false), valueOf).m6261c());
            } catch (Exception e) {
                singleSubscriber.onError(e);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$c1 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$c1.class */
    public class DialogInterface$OnClickListenerC5100c1 implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC5100c1(TextSearchFragment textSearchFragment) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$d.class */
    public class View$OnClickListenerC5101d implements View.OnClickListener {
        public View$OnClickListenerC5101d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextSearchFragment.this.f12608d0.mo4151g();
            TextSearchFragment.this.mSearchBar.keywordEdit.setCursorVisible(true);
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$d0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$d0.class */
    public class C5102d0 implements Action1<C12378a.C12380b> {
        public C5102d0() {
        }

        /* renamed from: a */
        public void call(C12378a.C12380b bVar) {
            if (bVar != null && bVar.f27921b == 404) {
                C14687h.m861a(TextSearchFragment.this.f12615j, C12378a.m6279a(bVar.f27921b), 1).m858c();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$d1 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$d1.class */
    public class DialogInterface$OnClickListenerC5103d1 implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f12647a;

        public DialogInterface$OnClickListenerC5103d1(String str) {
            this.f12647a = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            TextSearchFragment.this.f12616k.delete(C13021d.f29448a, "_number =? ", new String[]{this.f12647a});
            dialogInterface.dismiss();
            TextSearchFragment.this.f12608d0.mo4149i();
            C14687h.m861a(TextSearchFragment.this.f12615j, TextSearchFragment.this.getString(R$string.delete_number_toast), 1).m858c();
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$e.class */
    public class View$OnClickListenerC5104e implements View.OnClickListener {
        public View$OnClickListenerC5104e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextSearchFragment.this.f12608d0.mo4167b().f30010d = false;
            TextSearchFragment.this.f12610f.clear();
            if (TextSearchFragment.this.f12587H != null) {
                TextSearchFragment.this.f12587H.m16875a();
            }
            if (TextSearchFragment.this.f12588I != null) {
                TextSearchFragment.this.f12588I.m13201a();
            }
            if (!TextSearchFragment.this.f12593O.isRunning() && !TextSearchFragment.this.f12592N.isRunning()) {
                TextSearchFragment.this.mSearchBar.keywordEdit.setText((CharSequence) null);
                C14217x3.m2180a((View) TextSearchFragment.this.mSearchBar.voiceButton, true);
                TextSearchFragment.this.mSearchBar.deleteButton.setVisibility(8);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$e0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$e0.class */
    public class C5105e0 implements Single.OnSubscribe<C12378a.C12380b> {

        /* renamed from: a */
        public final /* synthetic */ String f12650a;

        /* renamed from: b */
        public final /* synthetic */ int f12651b;

        /* renamed from: c */
        public final /* synthetic */ int f12652c;

        public C5105e0(String str, int i, int i2) {
            this.f12650a = str;
            this.f12651b = i;
            this.f12652c = i2;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super C12378a.C12380b> singleSubscriber) {
            HashMap hashMap = new HashMap();
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("session_id", TextSearchFragment.this.f12603Y);
                jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.f12650a);
                jSONObject.put("click_position", this.f12651b);
                jSONObject.put("no_of_query", this.f12652c);
                singleSubscriber.onSuccess(C12378a.m6277a(C12378a.EnumC12382d.POST_TEXT_SEARCH_USER_EVENT, jSONObject, hashMap, C14017g4.m2810n()).m6261c());
            } catch (Exception e) {
                singleSubscriber.onError(e);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$e1 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$e1.class */
    public class View$OnClickListenerC5106e1 implements View.OnClickListener {
        public View$OnClickListenerC5106e1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextSearchFragment.this.m26214w0();
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$f.class */
    public class View$OnClickListenerC5107f implements View.OnClickListener {
        public View$OnClickListenerC5107f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextSearchFragment.this.m26263f(true);
            TextSearchFragment.this.f12608d0.mo4167b().f30010d = true;
            TextSearchFragment.this.f12608d0.mo4167b().f30013g = EnumC5125k1.SEARCH_AREA;
            TextSearchFragment.this.f12600V = EnumC5128l1.MAP_SEARCH;
            TextSearchFragment.this.m26269e(false);
            TextSearchFragment.this.f12608d0.mo4153f();
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$f0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$f0.class */
    public class RunnableC5108f0 implements Runnable {

        /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$f0$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$f0$a.class */
        public class DialogInterface$OnClickListenerC5109a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC5109a(RunnableC5108f0 f0Var) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        public RunnableC5108f0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextSearchFragment.this.m26274d0();
            TextSearchFragment.this.f12618m = true;
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(TextSearchFragment.this.f12615j);
            fVar.m979b(TextSearchFragment.this.m6059b(R$string.textsearch_dialogue_connecterror_text));
            fVar.m978b(TextSearchFragment.this.m6059b(R$string.textsearch_dialogue_connecterror_y), new DialogInterface$OnClickListenerC5109a(this));
            fVar.m982b();
            TextSearchFragment textSearchFragment = TextSearchFragment.this;
            textSearchFragment.m26302a(textSearchFragment.mSearchBar, false);
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$f1 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$f1.class */
    public class C5110f1 extends RecyclerView.OnScrollListener {
        public C5110f1() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            if (i == 1) {
                TextSearchFragment.this.m26254h0();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$g.class */
    public class View$OnClickListenerC5111g implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C13351n f12658a;

        public View$OnClickListenerC5111g(C13351n nVar) {
            this.f12658a = nVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextSearchFragment.this.f12608d0.mo4167b().f30010d = false;
            TextSearchFragment.this.f12600V = EnumC5128l1.MAP_LIST_SEARCH;
            TextSearchFragment.this.f12586G = null;
            TextSearchFragment.this.f12599U = 0;
            TextSearchFragment.this.m26210y0();
            TextSearchFragment.this.m26364B0();
            if (TextSearchFragment.this.f12597S != null) {
                TextSearchFragment.this.f12597S.setFloatValues(-this.f12658a.f30068o, 0.0f);
                TextSearchFragment.this.f12597S.start();
            }
            TextSearchFragment.this.mSearchResult.setVisibility(0);
            TextSearchFragment.this.mSearchResultRecyclerView.setVisibility(0);
            if (TextSearchFragment.this.f12592N != null) {
                TextSearchFragment.this.f12592N.reverse();
            }
            if (TextSearchFragment.this.f12593O != null) {
                TextSearchFragment.this.f12593O.reverse();
            }
            C14299q.m1762S0();
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$g0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$g0.class */
    public class HandlerC5112g0 extends HandlerC12947l {
        public HandlerC5112g0(TextSearchFragment textSearchFragment) {
        }

        @Override // p459j.p460a.p533l.HandlerC12947l
        /* renamed from: a */
        public void mo4944a(Object obj) {
            C14037j3.m2731a().mo2704a(new C14194v1());
            if (obj != null && (obj instanceof String)) {
                C14299q.m1734c("SearchResult", TextUtils.equals("0", (String) obj) ? 2.0d : 0.0d);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$g1 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$g1.class */
    public class C5113g1 extends RecyclerView.OnScrollListener {
        public C5113g1() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            if (i == 1) {
                TextSearchFragment.this.m26254h0();
                if (TextSearchFragment.this.f12582C.m4222d() < 4 || TextSearchFragment.this.m26228p0()) {
                    TextSearchFragment textSearchFragment = TextSearchFragment.this;
                    textSearchFragment.m26301a(textSearchFragment.mSearchBar.keywordEdit.getText().toString().trim(), -1, false);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$h.class */
    public class View$OnClickListenerC5114h implements View.OnClickListener {
        public View$OnClickListenerC5114h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextSearchFragment.this.m26327Z();
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$h0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$h0.class */
    public class C5115h0 implements AbstractC8825g {
        public C5115h0() {
        }

        @Override // p081h.p203i.p204a.p224e.p280k.AbstractC8825g
        public void onLocationChanged(Location location) {
            if (TextSearchFragment.this.f12623r.mo21491g()) {
                TextSearchFragment.this.m26321a(location);
                C8827h.f20170d.mo16892a(TextSearchFragment.this.f12623r, this);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$h1 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$h1.class */
    public class C5116h1 implements AbstractC6825f.AbstractC6827b, AbstractC6825f.AbstractC6828c {
        public C5116h1() {
        }

        /* renamed from: a */
        public final void m26202a() {
            TextSearchFragment.this.m26243k(false);
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6828c
        /* renamed from: a */
        public void mo21591a(ConnectionResult connectionResult) {
            m26202a();
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b
        /* renamed from: f */
        public void mo21503f(int i) {
            m26202a();
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b
        /* renamed from: j */
        public void mo21502j(Bundle bundle) {
            m26202a();
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$i.class */
    public class C5117i extends AnimatorListenerAdapter {
        public C5117i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            boolean z = ((Integer) ((ValueAnimator) animator).getAnimatedValue()).intValue() == C14135r2.m2390c(TextSearchFragment.this.f12615j);
            if (TextSearchFragment.this.f12600V.equals(EnumC5128l1.MAP_SEARCH)) {
                TextSearchFragment.this.mSearchResult.setVisibility(8);
                TextSearchFragment.this.mSearchResultRecyclerView.setVisibility(8);
                TextSearchFragment.this.m26239l(true);
                TextSearchFragment.this.m26259g(true);
            }
            if (!z) {
                TextSearchFragment.this.mSearchArea.setVisibility(0);
                TextSearchFragment.this.mSearchListResult.setVisibility(0);
                TextSearchFragment.this.mMyLocation.setVisibility(0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            int intValue = ((Integer) ((ValueAnimator) animator).getAnimatedValue()).intValue();
            boolean z = (intValue == 0 || intValue == C14135r2.m2390c(TextSearchFragment.this.f12615j)) ? false : true;
            TextSearchFragment.this.m26239l(!z);
            if (TextSearchFragment.this.f12600V.equals(EnumC5128l1.MAP_LIST_SEARCH)) {
                TextSearchFragment.this.mSearchResult.setVisibility(0);
                TextSearchFragment.this.mSearchResultRecyclerView.setVisibility(0);
            }
            if (z) {
                TextSearchFragment.this.mSearchArea.setVisibility(8);
                TextSearchFragment.this.mSearchListResult.setVisibility(8);
                TextSearchFragment.this.mMyLocation.setVisibility(8);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$i0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$i0.class */
    public class C5118i0 implements LocationListener {

        /* renamed from: a */
        public final /* synthetic */ LocationManager f12665a;

        public C5118i0(LocationManager locationManager) {
            this.f12665a = locationManager;
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            TextSearchFragment.this.m26321a(location);
            this.f12665a.removeUpdates(this);
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$i1 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$i1.class */
    public enum EnumC5119i1 {
        BEFORE_TYPE,
        DURING_TYPE,
        AFTER_SUBMIT
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$j.class */
    public class C5120j implements ValueAnimator.AnimatorUpdateListener {
        public C5120j() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) TextSearchFragment.this.mSearchResult.getLayoutParams();
            layoutParams.width = intValue;
            layoutParams.addRule(14);
            TextSearchFragment.this.mSearchResult.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$j0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$j0.class */
    public class C5121j0 extends C5116h1 {

        /* renamed from: b */
        public final /* synthetic */ boolean f12672b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5121j0(boolean z) {
            super();
            this.f12672b = z;
        }

        @Override // gogolook.callgogolook2.search.TextSearchFragment.C5116h1, p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b
        /* renamed from: j */
        public void mo21502j(Bundle bundle) {
            super.mo21502j(bundle);
            if (this.f12672b && C14217x3.m2110w()) {
                TextSearchFragment.this.m26243k(true);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$j1 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$j1.class */
    public enum EnumC5122j1 {
        RECENT,
        TRENDING,
        AUTO_COMPLETE
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$k */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$k.class */
    public class C5123k implements Action1<Pair<C12942i, Boolean>> {

        /* renamed from: a */
        public final /* synthetic */ ContextMenu f12678a;

        /* renamed from: b */
        public final /* synthetic */ boolean f12679b;

        /* renamed from: c */
        public final /* synthetic */ String f12680c;

        public C5123k(ContextMenu contextMenu, boolean z, String str) {
            this.f12678a = contextMenu;
            this.f12679b = z;
            this.f12680c = str;
        }

        /* renamed from: a */
        public void call(Pair<C12942i, Boolean> pair) {
            int i;
            TextSearchFragment textSearchFragment;
            TextSearchFragment.this.f12615j.getMenuInflater().inflate(R$menu.context_menu, this.f12678a);
            TextSearchFragment.this.f12620o = ((C12942i) pair.first).m4960d();
            boolean booleanValue = ((Boolean) pair.second).booleanValue();
            MenuItem findItem = this.f12678a.findItem(R$id.menu_block);
            MenuItem findItem2 = this.f12678a.findItem(R$id.menu_save);
            this.f12678a.findItem(R$id.menu_delete).setVisible(this.f12679b);
            if (TextSearchFragment.this.f12620o) {
                textSearchFragment = TextSearchFragment.this;
                i = R$string.title_unblock;
            } else {
                textSearchFragment = TextSearchFragment.this;
                i = R$string.title_block;
            }
            findItem.setTitle(textSearchFragment.m6059b(i));
            boolean z = true;
            findItem.setVisible(true);
            findItem2.setVisible(!TextSearchFragment.this.f12621p);
            this.f12678a.findItem(R$id.menu_call).setVisible(false);
            MenuItem findItem3 = this.f12678a.findItem(R$id.menu_add_to_wish);
            if (TextUtils.isEmpty(this.f12680c) || TextUtils.equals(TextSearchFragment.this.m6059b(R$string.unknown_number), this.f12680c) || booleanValue) {
                z = false;
            }
            findItem3.setVisible(z);
            if (C14217x3.m2160b(this.f12680c) || TextUtils.equals(TextSearchFragment.this.m6059b(R$string.unknown_number), this.f12680c)) {
                this.f12678a.findItem(R$id.menu_message).setVisible(false);
                this.f12678a.findItem(R$id.menu_save).setVisible(false);
            } else if (!C14108o4.m2477i(this.f12680c)) {
                this.f12678a.findItem(R$id.menu_message).setVisible(false);
            }
            new DialogC14669c.C14674d(TextSearchFragment.this.f12615j, this.f12678a).m891a();
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$k0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$k0.class */
    public class C5124k0 implements AbstractC6836l<LocationSettingsResult> {

        /* renamed from: a */
        public final /* synthetic */ boolean f12682a;

        public C5124k0(boolean z) {
            this.f12682a = z;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo21564a(LocationSettingsResult locationSettingsResult) {
            Status b = locationSettingsResult.mo21814b();
            int c = b.m31988c();
            if (c == 0) {
                TextSearchFragment.this.m26350I0();
            } else if (c != 6) {
                if (c == 8502) {
                    TextSearchFragment.this.m26251i(this.f12682a);
                }
            } else if (this.f12682a) {
                try {
                    b.m31989a(TextSearchFragment.this.f12615j, 102);
                } catch (IntentSender.SendIntentException e) {
                    C14080m2.m2612a((Throwable) e);
                }
            } else {
                TextSearchFragment.this.m26274d0();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$k1 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$k1.class */
    public enum EnumC5125k1 {
        NONE,
        KEYPAD,
        SEARCH_ICON,
        SEARCH_ON_MAP,
        SEARCH_AREA,
        SEARCH_MORE
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$l */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$l.class */
    public class C5126l extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ C13351n f12691a;

        public C5126l(C13351n nVar) {
            this.f12691a = nVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            int intValue = ((Float) ((ValueAnimator) animator).getAnimatedValue()).intValue();
            if (TextSearchFragment.this.f12599U == 0 && TextSearchFragment.this.f12591L != null && View.TRANSLATION_Y.getName().equals(TextSearchFragment.this.f12594P.getPropertyName()) && intValue == this.f12691a.f30067n) {
                TextSearchFragment.this.m26210y0();
                TextSearchFragment.this.m26364B0();
                TextSearchFragment.this.f12594P.setTarget(null);
                TextSearchFragment.this.f12595Q.setTarget(null);
                TextSearchFragment.this.f12596R.setTarget(null);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$l0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$l0.class */
    public class DialogInterface$OnClickListenerC5127l0 implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC5127l0() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                TextSearchFragment.this.f12629x = true;
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$l1 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$l1.class */
    public enum EnumC5128l1 {
        NORMAL_LIST_SEARCH,
        MAP_SEARCH,
        MAP_LIST_SEARCH,
        MAP_SEARCH_NO_RESULT,
        MAP_CARD_ITEM_OPEN
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$m */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$m.class */
    public class C5129m implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ C13351n f12700a;

        public C5129m(C13351n nVar) {
            this.f12700a = nVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int intValue = ((Float) valueAnimator.getAnimatedValue()).intValue();
            if (TextSearchFragment.this.f12587H != null) {
                C8856c cVar = TextSearchFragment.this.f12587H;
                C13351n nVar = this.f12700a;
                int i = nVar.f30065l;
                cVar.m16874a(i, 0, i, nVar.f30066m - intValue);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$m0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$m0.class */
    public class DialogInterface$OnClickListenerC5130m0 implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC5130m0(TextSearchFragment textSearchFragment) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$n */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$n.class */
    public class C5131n implements C13324g.AbstractC13326b {
        public C5131n() {
        }

        @Override // p459j.p460a.p551p0.C13324g.AbstractC13326b
        /* renamed from: a */
        public void mo4214a(TextSearchResultEntry textSearchResultEntry, String str, int i) {
            if (!C14217x3.m2160b(textSearchResultEntry.num) && C14108o4.m2499a((CharSequence) textSearchResultEntry.num)) {
                C14217x3.m2145e(TextSearchFragment.this.f12615j, textSearchResultEntry.num, TextSearchFragment.this.mSearchHistory.getVisibility() == 0 ? 3 : 4);
                int e = i - TextSearchFragment.this.f12582C.m4220e();
                C14299q.m1721f(i);
                int i2 = textSearchResultEntry.listType;
                C14299q.m1714g(i2 == 4 ? "searchresults_call" : i2 == 2 ? "inapp_call" : "", TextSearchFragment.this.m26230o0() ? 0.0d : 1.0d);
                if (TextSearchFragment.this.m26325a(e, TextSearchFragment.this.f12582C.getItemViewType(i))) {
                    TextSearchFragment textSearchFragment = TextSearchFragment.this;
                    textSearchFragment.m26322a(e, "clicked", textSearchFragment.f12604Z);
                }
                C13335l.m4178e();
                C14289m.m1894a((Integer) 1, str, Integer.valueOf(i));
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$n0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$n0.class */
    public class DialogInterface$OnClickListenerC5132n0 implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC5132n0() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C13915b3.m3055b("hasTextsearchLocationPermission", true);
            TextSearchFragment.this.m26243k(true);
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$o */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$o.class */
    public class C5133o implements AbstractC13318c {
        public C5133o() {
        }

        @Override // p459j.p460a.p551p0.AbstractC13318c
        /* renamed from: a */
        public void mo4266a(View view, int i) {
            int i2;
            TextSearchFragment.this.f12628w = i;
            TextSearchResultEntry item = TextSearchFragment.this.f12582C.getItem(TextSearchFragment.this.f12628w);
            if (item != null && (i2 = item.listType) != 1 && i2 != 7 && i2 != 8 && i2 != 6) {
                TextSearchFragment textSearchFragment = TextSearchFragment.this;
                textSearchFragment.registerForContextMenu(textSearchFragment.mSearchResultRecyclerView);
                TextSearchFragment.this.f12615j.openContextMenu(TextSearchFragment.this.mSearchResultRecyclerView);
                TextSearchFragment textSearchFragment2 = TextSearchFragment.this;
                textSearchFragment2.unregisterForContextMenu(textSearchFragment2.mSearchResultRecyclerView);
                TextSearchFragment.this.mSearchResultRecyclerView.performHapticFeedback(0);
                C14289m.m1894a((Integer) 3, "List", Integer.valueOf(TextSearchFragment.this.f12628w));
            }
        }

        @Override // p459j.p460a.p551p0.AbstractC13318c
        /* renamed from: b */
        public boolean mo4265b(View view, int i) {
            TextSearchResultEntry item = TextSearchFragment.this.f12582C.getItem(i);
            if (item == null) {
                return false;
            }
            switch (view.getId()) {
                case R$id.iftv_call /* 2131362365 */:
                    if (C14217x3.m2160b(item.num) || !C14108o4.m2499a((CharSequence) item.num)) {
                        return true;
                    }
                    C14217x3.m2145e(TextSearchFragment.this.f12615j, item.num, TextSearchFragment.this.mSearchHistory.getVisibility() == 0 ? 3 : 4);
                    int e = i - TextSearchFragment.this.f12582C.m4220e();
                    C14299q.m1721f(i);
                    int i2 = item.listType;
                    C14299q.m1714g(i2 == 4 ? "searchresults_call" : i2 == 2 ? "inapp_call" : "", TextSearchFragment.this.m26230o0() ? 0.0d : 1.0d);
                    if (TextSearchFragment.this.m26325a(e, TextSearchFragment.this.f12582C.getItemViewType(i))) {
                        TextSearchFragment textSearchFragment = TextSearchFragment.this;
                        textSearchFragment.m26322a(e, "clicked", textSearchFragment.f12604Z);
                    }
                    C14289m.m1894a((Integer) 1, "List", Integer.valueOf(i));
                    return true;
                case R$id.search_label_area /* 2131363153 */:
                case R$id.search_label_text /* 2131363154 */:
                    return TextSearchFragment.this.m26320a(view, i);
                default:
                    int i3 = item.listType;
                    if (i3 == 2) {
                        TextSearchFragment.this.m26323a(i, "inapp_row");
                    } else if (i3 == 4) {
                        TextSearchFragment.this.m26323a(i, "searchresults_row");
                    }
                    int i4 = item.listType;
                    if (i4 == 0) {
                        if (item.name.equals("NO_NETWORK") || !item.name.equals("GPS_OFF")) {
                            return true;
                        }
                        if (C14217x3.m2110w() && C13878a3.m3206l()) {
                            TextSearchFragment.this.m26243k(true);
                            return true;
                        } else if (TextSearchFragment.this.m26238l0()) {
                            TextSearchFragment.this.m26366A0();
                            return true;
                        } else if (C14217x3.m2110w()) {
                            return true;
                        } else {
                            TextSearchFragment.this.m26218u0();
                            return true;
                        }
                    } else if (i4 == 6) {
                        TextSearchFragment.this.m26216v0();
                        C14299q.m1758U0();
                        return true;
                    } else if (!C14108o4.m2499a((CharSequence) item.num)) {
                        return true;
                    } else {
                        int e2 = i - TextSearchFragment.this.f12582C.m4220e();
                        int itemViewType = TextSearchFragment.this.f12582C.getItemViewType(i);
                        TextSearchFragment.this.m26300a(item.num, item.e164, e2, "FROM_Search_Results");
                        if (!TextSearchFragment.this.m26325a(e2, itemViewType)) {
                            return true;
                        }
                        TextSearchFragment textSearchFragment2 = TextSearchFragment.this;
                        textSearchFragment2.m26322a(e2, "clicked", textSearchFragment2.f12604Z);
                        return true;
                    }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$o0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$o0.class */
    public class C5134o0 implements Action1<Object> {
        public C5134o0() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if (obj instanceof C14194v1) {
                if (TextSearchFragment.this.f12582C != null) {
                    TextSearchFragment.this.f12582C.notifyDataSetChanged();
                }
                TextSearchFragment.this.f12608d0.mo4149i();
            } else if (obj instanceof C14325z1) {
                C14325z1 z1Var = (C14325z1) obj;
                TextSearchFragment.this.m26318a(z1Var.f32079a, z1Var.f32080b, z1Var.f32081c, z1Var.f32082d, z1Var.f32083e);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$p */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$p.class */
    public class C5135p implements C13324g.AbstractC13327c {
        public C5135p() {
        }

        @Override // p459j.p460a.p551p0.C13324g.AbstractC13327c
        /* renamed from: a */
        public void mo4213a() {
            TextSearchFragment.this.m26358E0();
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$p0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$p0.class */
    public class DialogInterface$OnClickListenerC5136p0 implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC5136p0() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            TextSearchFragment.this.f12609e0 = true;
            C13878a3.m3248a(TextSearchFragment.this.f12615j);
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$q */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$q.class */
    public class C5137q implements AbstractC13318c {
        public C5137q() {
        }

        @Override // p459j.p460a.p551p0.AbstractC13318c
        /* renamed from: a */
        public void mo4266a(View view, int i) {
            int d = TextSearchFragment.this.f12581B.m26377d();
            if (i >= d) {
                TextSearchFragment.this.f12628w = i - d;
                TextSearchFragment textSearchFragment = TextSearchFragment.this;
                textSearchFragment.registerForContextMenu(textSearchFragment.mSearchHistoryRecyclerView);
                TextSearchFragment.this.f12615j.openContextMenu(TextSearchFragment.this.mSearchHistoryRecyclerView);
                TextSearchFragment.this.mSearchHistoryRecyclerView.performHapticFeedback(0);
            }
        }

        @Override // p459j.p460a.p551p0.AbstractC13318c
        /* renamed from: b */
        public boolean mo4265b(View view, int i) {
            String str;
            String str2;
            int d = TextSearchFragment.this.f12581B.m26377d();
            if (i >= d) {
                Cursor a = TextSearchFragment.this.f12581B.m26388a(i - d);
                str = TextSearchFragment.this.f12581B.m26376d(a);
                str2 = TextSearchFragment.this.f12581B.m26381b(a);
            } else {
                str2 = null;
                str = null;
            }
            switch (view.getId()) {
                case R$id.iftv_call /* 2131362365 */:
                    if (!C14108o4.m2499a((CharSequence) str)) {
                        return false;
                    }
                    C13335l.m4178e();
                    C14217x3.m2145e(TextSearchFragment.this.f12615j, str, 3);
                    return true;
                case R$id.search_label_area /* 2131363153 */:
                case R$id.search_label_text /* 2131363154 */:
                    return TextSearchFragment.this.m26320a(view, i);
                default:
                    if (!C14108o4.m2499a((CharSequence) str)) {
                        return false;
                    }
                    C14299q.m1797C("history");
                    C13335l.m4179d();
                    Intent a2 = NumberDetailActivity.m26858a(TextSearchFragment.this.f12615j, str, str2, null, "FROM_Search_History");
                    a2.putExtra("textsearch_history_position", String.valueOf(i));
                    TextSearchFragment.this.startActivity(a2);
                    return true;
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$q0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$q0.class */
    public class C5138q0 implements C8856c.AbstractC8862f {
        public C5138q0() {
        }

        @Override // p081h.p203i.p204a.p224e.p282l.C8856c.AbstractC8862f
        /* renamed from: s */
        public void mo16859s() {
            TextSearchFragment.this.f12598T = true;
            TextSearchFragment.this.m26259g(false);
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$r */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$r.class */
    public class RunnableC5139r implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ EditText f12710a;

        /* renamed from: b */
        public final /* synthetic */ String f12711b;

        public RunnableC5139r(EditText editText, String str) {
            this.f12710a = editText;
            this.f12711b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextSearchFragment.this.f12611f0 = true;
            this.f12710a.setText(this.f12711b);
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$r0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$r0.class */
    public class C5140r0 implements Action1<String> {

        /* renamed from: a */
        public final /* synthetic */ String f12713a;

        public C5140r0(String str) {
            this.f12713a = str;
        }

        /* renamed from: a */
        public void call(String str) {
            if (!TextUtils.isEmpty(str)) {
                C14687h.m861a(TextSearchFragment.this.f12615j, TextSearchFragment.this.getString(R$string.already_contact), 1).m858c();
                return;
            }
            TextSearchFragment.this.f12585F = this.f12713a;
            C14217x3.m2178a(TextSearchFragment.this, this.f12713a, C11052i.m10328e().m10329d(C14108o4.m2474l(this.f12713a)));
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$s */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$s.class */
    public class DialogInterface$OnClickListenerC5141s implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC5141s() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            TextSearchFragment.this.requestPermissions(C13878a3.f31166g, 201);
            C14302t.m1648a(5, 0);
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$s0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$s0.class */
    public class C5142s0 implements C8856c.AbstractC8861e {
        public C5142s0() {
        }

        @Override // p081h.p203i.p204a.p224e.p282l.C8856c.AbstractC8861e
        /* renamed from: a */
        public void mo16860a(LatLng latLng) {
            TextSearchFragment.this.f12586G = null;
            TextSearchFragment.this.f12599U = 0;
            if (TextSearchFragment.this.f12594P.getTarget() != null && TextSearchFragment.this.f12595Q.getTarget() != null && !TextSearchFragment.this.f12594P.isRunning()) {
                C13351n a = C13351n.m4136a();
                TextSearchFragment.this.f12594P.setPropertyName(View.TRANSLATION_Y.getName());
                ObjectAnimator objectAnimator = TextSearchFragment.this.f12594P;
                float f = a.f30067n;
                objectAnimator.setFloatValues(-f, f);
                TextSearchFragment.this.f12595Q.setFloatValues(0.0f, a.f30060g);
                TextSearchFragment.this.f12597S.setFloatValues(-a.f30068o, 0.0f);
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(TextSearchFragment.this.f12594P, TextSearchFragment.this.f12595Q, TextSearchFragment.this.f12597S);
                animatorSet.start();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$t */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$t.class */
    public class C5143t extends RecyclerView.ItemDecoration {
        public C5143t(TextSearchFragment textSearchFragment) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            int a = C14217x3.m2201a(12.0f);
            if (recyclerView != null && view != null && recyclerView.getAdapter() != null) {
                int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
                int itemCount = recyclerView.getAdapter().getItemCount();
                SearchHistoryAdapter.HistoryViewHolder historyViewHolder = (SearchHistoryAdapter.HistoryViewHolder) recyclerView.getChildViewHolder(view);
                int c = ((SearchHistoryAdapter) recyclerView.getAdapter()).m26379c();
                if (childAdapterPosition >= 0 && childAdapterPosition < itemCount && c != -1 && historyViewHolder != null) {
                    if (childAdapterPosition != c - 1) {
                        a = 0;
                    }
                    rect.set(0, a, 0, 0);
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$t0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$t0.class */
    public class C5144t0 implements C8856c.AbstractC8859c {
        public C5144t0() {
        }

        @Override // p081h.p203i.p204a.p224e.p282l.C8856c.AbstractC8859c
        /* renamed from: a */
        public void mo16861a(int i) {
            if (i == 1) {
                TextSearchFragment.this.m26263f(false);
                if (!TextSearchFragment.this.f12631z) {
                    TextSearchFragment.this.f12631z = true;
                }
            } else if (i == 2 || i == 3) {
                TextSearchFragment.this.m26263f(true);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$u */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$u.class */
    public class C5145u extends RecyclerView.ItemDecoration {
        public C5145u(TextSearchFragment textSearchFragment) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            int a = C14217x3.m2201a(12.0f);
            if (recyclerView != null && view != null && recyclerView.getAdapter() != null) {
                int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
                int itemCount = recyclerView.getAdapter().getItemCount();
                C13324g.C13328d dVar = (C13324g.C13328d) recyclerView.getChildViewHolder(view);
                if (childAdapterPosition >= 0 && childAdapterPosition < itemCount && dVar != null) {
                    C13324g gVar = (C13324g) recyclerView.getAdapter();
                    boolean j = gVar.m4215j();
                    boolean h = gVar.m4217h();
                    boolean z = j || gVar.m4216i();
                    rect.set(0, ((z || h) && childAdapterPosition == 0) ? a : (!(z && h) || childAdapterPosition != 1) ? 0 : a, 0, 0);
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$u0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$u0.class */
    public class C5146u0 implements AbstractC15118l<TextSearchMarker, C8906a> {
        public C5146u0() {
        }

        /* renamed from: a */
        public C8906a invoke(TextSearchMarker textSearchMarker) {
            return TextSearchFragment.this.f12601W;
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$v */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$v.class */
    public class C5147v implements Func1<C12942i, Single<Pair<C12942i, Boolean>>> {

        /* renamed from: a */
        public final /* synthetic */ String f12719a;

        /* renamed from: b */
        public final /* synthetic */ String f12720b;

        public C5147v(String str, String str2) {
            this.f12719a = str;
            this.f12720b = str2;
        }

        /* renamed from: a */
        public Single<Pair<C12942i, Boolean>> call(C12942i iVar) {
            TextSearchFragment textSearchFragment = TextSearchFragment.this;
            textSearchFragment.f12621p = !TextUtils.isEmpty(C14217x3.m2155c(textSearchFragment.f12615j, this.f12719a));
            return Single.just(new Pair(iVar, Boolean.valueOf(C14132r.m2399b(this.f12720b))));
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$v0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$v0.class */
    public class C5148v0 implements C10183c.AbstractC10186c<TextSearchMarker> {
        public C5148v0(TextSearchFragment textSearchFragment) {
        }

        @Override // p081h.p203i.p392f.p393a.p394b.C10183c.AbstractC10186c
        /* renamed from: a */
        public boolean mo13186a(AbstractC10181a<TextSearchMarker> aVar) {
            return true;
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$w */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$w.class */
    public class C5149w implements Action1<ArrayList<TextSearchResultEntry>> {

        /* renamed from: a */
        public final /* synthetic */ String f12722a;

        public C5149w(String str) {
            this.f12722a = str;
        }

        /* renamed from: a */
        public void call(ArrayList<TextSearchResultEntry> arrayList) {
            TextSearchFragment.this.f12582C.getItemCount();
            if (EnumC5119i1.DURING_TYPE == TextSearchFragment.this.f12608d0.mo4156e()) {
                TextSearchFragment.this.mo4187p();
            }
            if (!C13891a.m3145q()) {
                TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
                textSearchResultEntry.listType = 7;
                if (!TextSearchFragment.this.f12582C.m4219f().contains(textSearchResultEntry)) {
                    arrayList.add(textSearchResultEntry);
                }
            }
            TextSearchFragment.this.mo4202D();
            TextSearchFragment.this.f12582C.m4237a(this.f12722a, (List<TextSearchResultEntry>) arrayList, 1, true);
            if (TextSearchFragment.this.m26228p0()) {
                TextSearchFragment.this.m26301a(this.f12722a, 1, false);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$w0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$w0.class */
    public class C5150w0 implements C10183c.AbstractC10188e<TextSearchMarker> {
        public C5150w0() {
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo13185a(TextSearchMarker textSearchMarker) {
            TextSearchFragment.this.f12600V = EnumC5128l1.MAP_CARD_ITEM_OPEN;
            if (textSearchMarker.equals(TextSearchFragment.this.f12586G) || TextSearchFragment.this.f12592N.isRunning()) {
                return true;
            }
            int indexOf = TextSearchFragment.this.f12610f.indexOf(TextSearchFragment.this.f12590K);
            if (indexOf != -1) {
                TextSearchFragment textSearchFragment = TextSearchFragment.this;
                textSearchFragment.mBottomLayout.removeView(textSearchFragment.f12590K);
                ((TextSearchMarker) TextSearchFragment.this.f12610f.get(indexOf)).m26192a();
            }
            TextSearchFragment textSearchFragment2 = TextSearchFragment.this;
            textSearchFragment2.f12590K = textSearchFragment2.f12591L;
            for (TextSearchMarker textSearchMarker2 : TextSearchFragment.this.f12610f) {
                C8908c a = TextSearchFragment.this.f12589J.m13164a((C14612d) textSearchMarker2);
                if (a != null) {
                    if (textSearchMarker2.equals(textSearchMarker)) {
                        a.m16801a(TextSearchFragment.this.f12601W);
                        TextSearchFragment textSearchFragment3 = TextSearchFragment.this;
                        Activity activity = textSearchFragment3.f12615j;
                        TextSearchFragment textSearchFragment4 = TextSearchFragment.this;
                        textSearchFragment3.f12591L = textSearchMarker.m26191a(activity, textSearchFragment4, textSearchFragment4.f12614i, TextSearchFragment.this.f12608d0.mo4162c());
                        TextSearchFragment.this.f12586G = textSearchMarker2;
                    } else {
                        a.m16801a(TextSearchFragment.this.f12602X);
                    }
                }
            }
            TextSearchFragment.this.mBottomLayout.bringToFront();
            if (TextSearchFragment.this.f12590K != null) {
                TextSearchFragment.this.f12596R.setTarget(TextSearchFragment.this.f12590K);
                TextSearchFragment.this.f12596R.start();
            }
            if (TextSearchFragment.this.f12591L != null) {
                C13351n a2 = C13351n.m4136a();
                TextSearchFragment textSearchFragment5 = TextSearchFragment.this;
                textSearchFragment5.mBottomLayout.removeView(textSearchFragment5.f12591L);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, a2.f30057d);
                layoutParams.addRule(14);
                layoutParams.addRule(12);
                layoutParams.bottomMargin = -a2.f30057d;
                layoutParams.leftMargin = a2.f30058e;
                layoutParams.rightMargin = a2.f30059f;
                TextSearchFragment textSearchFragment6 = TextSearchFragment.this;
                textSearchFragment6.mBottomLayout.addView(textSearchFragment6.f12591L, layoutParams);
                TextSearchFragment.this.f12591L.setVisibility(0);
                TextSearchFragment.this.f12594P.setTarget(TextSearchFragment.this.f12591L);
                TextSearchFragment.this.f12595Q.setTarget(TextSearchFragment.this.f12591L);
                if (TextSearchFragment.this.f12599U == 0) {
                    TextSearchFragment.this.f12594P.setPropertyName(View.TRANSLATION_Y.getName());
                    ObjectAnimator objectAnimator = TextSearchFragment.this.f12594P;
                    float f = a2.f30067n;
                    objectAnimator.setFloatValues(f, -f);
                    TextSearchFragment.this.f12595Q.setPropertyName(View.ROTATION.getName());
                    TextSearchFragment.this.f12595Q.setFloatValues(a2.f30060g, 0.0f);
                    TextSearchFragment.this.f12597S.setFloatValues(0.0f, -a2.f30068o);
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(TextSearchFragment.this.f12594P, TextSearchFragment.this.f12595Q, TextSearchFragment.this.f12597S);
                    animatorSet.start();
                    TextSearchFragment.m26237m(TextSearchFragment.this);
                } else {
                    TextSearchFragment.this.f12591L.setTranslationY(-a2.f30067n);
                    TextSearchFragment.this.f12594P.setPropertyName(View.TRANSLATION_X.getName());
                    TextSearchFragment.this.f12594P.setFloatValues(a2.f30056c + a2.f30061h, 0.0f);
                    TextSearchFragment.this.f12594P.start();
                }
            }
            C14299q.m1760T0();
            return true;
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$x */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$x.class */
    public class C5151x implements Action1<Throwable> {

        /* renamed from: a */
        public final /* synthetic */ String f12725a;

        public C5151x(String str) {
            this.f12725a = str;
        }

        /* renamed from: a */
        public void call(Throwable th) {
            if (EnumC5119i1.DURING_TYPE == TextSearchFragment.this.f12608d0.mo4156e()) {
                TextSearchFragment.this.mo4187p();
            }
            TextSearchFragment.this.mo4202D();
            if (TextSearchFragment.this.m26228p0()) {
                TextSearchFragment.this.m26301a(this.f12725a, 1, false);
            }
            C13973d4.m2952a(th);
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$x0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$x0.class */
    public class C5152x0 extends ConnectivityManager.NetworkCallback {
        public C5152x0() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            super.onAvailable(network);
            TextSearchFragment.this.m26268e0();
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$y */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$y.class */
    public class C5153y implements Single.OnSubscribe<ArrayList<TextSearchResultEntry>> {

        /* renamed from: a */
        public final /* synthetic */ String f12728a;

        /* renamed from: b */
        public final /* synthetic */ EditText f12729b;

        /* renamed from: c */
        public final /* synthetic */ C13331h f12730c;

        public C5153y(TextSearchFragment textSearchFragment, String str, EditText editText, C13331h hVar) {
            this.f12728a = str;
            this.f12729b = editText;
            this.f12730c = hVar;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super ArrayList<TextSearchResultEntry>> singleSubscriber) {
            String[] b;
            try {
                System.currentTimeMillis();
                C12378a a = C12378a.m6275a(C12378a.EnumC12382d.GET_AUTO_COMPLETE_V3, C14017g4.m2810n(), this.f12728a);
                C12378a.C12380b c = a != null ? a.m6261c() : null;
                if (c == null || c.f27921b != 200) {
                    singleSubscriber.onError(null);
                    return;
                }
                ArrayList arrayList = new ArrayList();
                if (!this.f12729b.getText().toString().equalsIgnoreCase(this.f12728a)) {
                    singleSubscriber.onSuccess(arrayList);
                    return;
                }
                TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
                textSearchResultEntry.listType = 1;
                for (String str : C14099o3.m2510n().m2535b()) {
                    if (str.matches("(?i)".concat(".*").concat(this.f12728a).concat(".*"))) {
                        textSearchResultEntry.autoCompleteLabel.add(new C13332i(str, 6));
                    }
                }
                JSONObject jSONObject = new JSONObject(c.f27922c);
                jSONObject.getInt("total");
                JSONArray jSONArray = jSONObject.getJSONArray("suggestions");
                for (int i = 0; i < jSONArray.length(); i++) {
                    C13332i iVar = new C13332i(jSONArray.getJSONObject(i).getString(SmsFilterRulesHelper.KEYWORD), 7);
                    if (!textSearchResultEntry.autoCompleteLabel.contains(iVar)) {
                        textSearchResultEntry.autoCompleteLabel.add(iVar);
                    }
                }
                if (textSearchResultEntry.autoCompleteLabel.size() != 0) {
                    C14299q.m1741b(textSearchResultEntry.label.size());
                    arrayList.add(textSearchResultEntry);
                } else if (TextUtils.isEmpty(this.f12730c.f30012f) || !this.f12728a.startsWith(this.f12730c.f30012f)) {
                    this.f12730c.f30012f = this.f12728a;
                }
                singleSubscriber.onSuccess(arrayList);
            } catch (Exception e) {
                singleSubscriber.onError(e);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$y0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$y0.class */
    public class C5154y0 extends BroadcastReceiver {
        public C5154y0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NetworkInfo activeNetworkInfo;
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") && (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
                activeNetworkInfo.getTypeName();
                TextSearchFragment.this.m26268e0();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$z */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$z.class */
    public class RunnableC5155z implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C13331h f12732a;

        /* renamed from: b */
        public final /* synthetic */ boolean f12733b;

        public RunnableC5155z(C13331h hVar, boolean z) {
            this.f12732a = hVar;
            this.f12733b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TextSearchFragment.this.isVisible() && TextSearchFragment.this.isAdded() && !TextSearchFragment.this.isDetached()) {
                if (this.f12732a.f30010d && TextSearchFragment.this.f12587H != null && TextSearchFragment.this.f12598T) {
                    TextSearchFragment textSearchFragment = TextSearchFragment.this;
                    textSearchFragment.f12625t = textSearchFragment.f12587H.m16865b().f7022a.f7058a;
                    TextSearchFragment textSearchFragment2 = TextSearchFragment.this;
                    textSearchFragment2.f12626u = textSearchFragment2.f12587H.m16865b().f7022a.f7059b;
                }
                if (TextSearchFragment.this.f12631z) {
                    TextSearchFragment textSearchFragment3 = TextSearchFragment.this;
                    textSearchFragment3.f12627v = (int) Math.ceil(textSearchFragment3.m26329Y() / 1000.0f);
                }
                if (TextSearchFragment.this.m26246j0() && !this.f12733b) {
                    TextSearchFragment.this.f12603Y = C14217x3.m2114s();
                    TextSearchFragment.this.f12604Z = 0;
                }
                if (!this.f12733b) {
                    TextSearchFragment.m26215w(TextSearchFragment.this);
                }
                if (!TextSearchFragment.this.mSearchResultRecyclerView.isComputingLayout()) {
                    TextSearchFragment.this.m26208z0();
                    TextSearchFragment.this.m26335V();
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchFragment$z0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment$z0.class */
    public class RunnableC5156z0 implements Runnable {
        public RunnableC5156z0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TextSearchFragment.this.getActivity() != null && !TextSearchFragment.this.getActivity().isFinishing() && !TextSearchFragment.this.isAdded() && TextSearchFragment.this.m26228p0()) {
                TextSearchFragment.this.f12608d0.mo4167b().f30011e = null;
                TextSearchFragment.this.f12608d0.mo4167b().f30012f = null;
                TextSearchFragment.this.f12582C.m4249a(-1);
                TextSearchFragment textSearchFragment = TextSearchFragment.this;
                textSearchFragment.m26301a(textSearchFragment.f12608d0.mo4162c(), -1, false);
            }
        }
    }

    /* renamed from: m */
    public static /* synthetic */ int m26237m(TextSearchFragment textSearchFragment) {
        int i = textSearchFragment.f12599U;
        textSearchFragment.f12599U = i + 1;
        return i;
    }

    /* renamed from: w */
    public static /* synthetic */ int m26215w(TextSearchFragment textSearchFragment) {
        int i = textSearchFragment.f12604Z;
        textSearchFragment.f12604Z = i + 1;
        return i;
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: A */
    public int mo4204A() {
        return this.f12582C.getItemCount();
    }

    /* renamed from: A0 */
    public final void m26366A0() {
        if (C13878a3.m3228b(this.f12615j, C13878a3.f31166g)) {
            m26324a(R$string.got_it, new DialogInterface$OnClickListenerC5141s());
            return;
        }
        requestPermissions(C13878a3.f31166g, 201);
        C14302t.m1648a(5, 0);
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: B */
    public void mo4203B() {
        this.f12582C.notifyDataSetChanged();
    }

    /* renamed from: B0 */
    public final void m26364B0() {
        m26263f(true);
        for (TextSearchMarker textSearchMarker : this.f12610f) {
            textSearchMarker.m26192a();
            C8908c a = this.f12589J.m13164a((C14612d<TextSearchMarker>) textSearchMarker);
            if (a != null) {
                a.m16801a(this.f12601W);
            }
        }
    }

    /* renamed from: C0 */
    public final void m26362C0() {
        this.f12603Y = C14217x3.m2114s();
        this.f12604Z = 0;
        C13915b3.m3057b("pref_text_search_session_id_last_generate_time", System.currentTimeMillis());
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: D */
    public void mo4202D() {
        TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
        textSearchResultEntry.listType = 9;
        this.f12582C.m4219f().remove(textSearchResultEntry);
    }

    /* renamed from: D0 */
    public final void m26360D0() {
        this.f12615j.getIntent().putExtra("largewidget", false);
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: E */
    public void mo4201E() {
        if (C14217x3.m2137h(this.f12615j)) {
            mo4187p();
        } else {
            m26333W();
        }
    }

    /* renamed from: E0 */
    public void m26358E0() {
        this.f12630y = this.f12582C.m4218g();
        C13324g gVar = this.f12582C;
        if (gVar != null && gVar.m4218g() < this.f12582C.m4226c()) {
            this.f12608d0.mo4167b().f30013g = EnumC5125k1.SEARCH_MORE;
            m26269e(true);
        }
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: F */
    public int mo4200F() {
        return this.f12582C.m4222d();
    }

    /* renamed from: F0 */
    public final void m26356F0() {
        this.mSearchBar.voiceButton.setOnClickListener(new View$OnClickListenerC5106e1());
        C13351n a = C13351n.m4136a();
        this.mSearchHistoryRecyclerView.addOnScrollListener(new C5110f1());
        this.mSearchResultRecyclerView.addOnScrollListener(new C5113g1());
        this.mSearchBar.keywordEdit.setOnEditorActionListener(new C5092a());
        this.mSearchBar.keywordEdit.addTextChangedListener(new C5095b());
        this.mSearchBar.keywordEdit.m26186a(new C5098c());
        this.mSearchBar.keywordEdit.setOnClickListener(new View$OnClickListenerC5101d());
        this.mSearchBar.deleteButton.setOnClickListener(new View$OnClickListenerC5104e());
        this.mSearchArea.setOnClickListener(new View$OnClickListenerC5107f());
        this.mSearchListResult.setOnClickListener(new View$OnClickListenerC5111g(a));
        this.mMyLocation.setOnClickListener(new View$OnClickListenerC5114h());
        this.f12593O.addListener(new C5117i());
        this.f12593O.addUpdateListener(new C5120j());
        this.f12594P.addListener(new C5126l(a));
        this.f12597S.addUpdateListener(new C5129m(a));
        this.f12582C.m4245a(new C5131n());
        RecyclerView recyclerView = this.mSearchResultRecyclerView;
        recyclerView.addOnItemTouchListener(new C13319d(this.f12615j, recyclerView, new C5133o()));
        this.f12582C.m4244a(new C5135p());
        RecyclerView recyclerView2 = this.mSearchHistoryRecyclerView;
        recyclerView2.addOnItemTouchListener(new C13319d(this.f12615j, recyclerView2, new C5137q()));
    }

    /* renamed from: G0 */
    public final void m26354G0() {
        this.f12616k = this.f12615j.getContentResolver();
        this.mSearchHistoryRecyclerView.setLayoutManager(new LinearLayoutManager(this.f12615j, 1, false));
        this.mSearchHistoryRecyclerView.addItemDecoration(new C5143t(this));
        this.mSearchResultRecyclerView.setLayoutManager(new LinearLayoutManager(this.f12615j, 1, false));
        this.mSearchResultRecyclerView.addItemDecoration(new C5145u(this));
        this.f12582C = new C13324g(this.f12615j, new ArrayList());
        this.mSearchResultRecyclerView.setAdapter(this.f12582C);
        this.f12581B = new SearchHistoryAdapter(this.f12615j, new MatrixCursor(C13336m.f30017e), null, null);
        this.mSearchHistoryRecyclerView.setAdapter(this.f12581B);
        C14217x3.m2180a((View) this.mSearchBar.voiceButton, true);
    }

    /* renamed from: H0 */
    public final void m26352H0() {
        m26274d0();
        if (!this.f12615j.isFinishing() && isAdded() && isVisible() && !this.f12584E && getUserVisibleHint()) {
            this.f12580A = ProgressDialog.show(this.f12615j, null, getString(R$string.textsearch_locate), false, true);
        }
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: I */
    public void mo4199I() {
        this.f12630y = 0;
        ArrayList<TextSearchResultEntry> arrayList = new ArrayList<>();
        if (!C14217x3.m2137h(this.f12615j)) {
            TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
            textSearchResultEntry.name = "NO_NETWORK";
            textSearchResultEntry.listType = 0;
            arrayList.add(textSearchResultEntry);
        }
        mo4202D();
        this.f12582C.m4238a("", arrayList, 0);
    }

    /* renamed from: I0 */
    public void m26350I0() {
        if (!this.f12615j.isFinishing() && C13878a3.m3206l()) {
            m26352H0();
            this.f12618m = false;
            this.f12617l.postDelayed(new RunnableC5108f0(), 10000L);
            this.f12619n = true;
            AbstractC6825f fVar = this.f12623r;
            if (fVar == null || !fVar.mo21491g() || !C13878a3.m3206l()) {
                Location i = C14017g4.m2815i();
                if (i != null) {
                    m26321a(i);
                }
                LocationManager locationManager = (LocationManager) this.f12615j.getSystemService("location");
                if (C13878a3.m3206l()) {
                    locationManager.requestLocationUpdates("network", 1000L, 0.0f, new C5118i0(locationManager));
                    return;
                }
                return;
            }
            try {
                Location a = C8827h.f20170d.mo16894a(this.f12623r);
                if (a != null) {
                    m26321a(a);
                }
                C8827h.f20170d.mo16893a(this.f12623r, this.f12624s, new C5115h0());
            } catch (SecurityException e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }

    /* renamed from: J0 */
    public final void m26348J0() {
        Subscription subscription = this.f12583D;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f12583D.unsubscribe();
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: K */
    public void mo1419K() {
        this.f12608d0.mo4149i();
        m26220t0();
        if (this.f12629x && C14217x3.m2110w() && C13878a3.m3206l()) {
            this.f12629x = false;
            if (((LocationManager) this.f12615j.getSystemService("location")).isProviderEnabled("network")) {
                m26350I0();
            }
        }
        C14289m.m1840n();
    }

    /* renamed from: K0 */
    public final void m26346K0() {
        if (this.f12608d0.mo4167b() != null && this.mSearchResult != null && m26228p0()) {
            this.f12608d0.mo4167b().f30012f = null;
            this.f12608d0.mo4167b().f30011e = null;
            if (this.mSearchResult.getVisibility() == 0 && !TextUtils.isEmpty(this.mSearchBar.keywordEdit.getText().toString())) {
                this.f12608d0.mo4171a((String) null);
                m26302a(this.mSearchBar, false);
            }
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: O */
    public int mo1418O() {
        return R$layout.text_search_fragment;
    }

    /* renamed from: V */
    public final void m26335V() {
        TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
        textSearchResultEntry.listType = 9;
        if (!this.f12582C.m4219f().contains(textSearchResultEntry)) {
            this.f12582C.m4219f().add(0, textSearchResultEntry);
        }
    }

    /* renamed from: W */
    public final void m26333W() {
        TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
        textSearchResultEntry.listType = 0;
        textSearchResultEntry.name = "NO_NETWORK";
        if (!this.f12582C.m4219f().contains(textSearchResultEntry)) {
            this.f12582C.m4219f().add(0, textSearchResultEntry);
        }
    }

    /* renamed from: X */
    public final void m26331X() {
        TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
        textSearchResultEntry.listType = 7;
        if (!this.f12582C.m4219f().contains(textSearchResultEntry)) {
            this.f12582C.m4219f().add(textSearchResultEntry);
        }
    }

    /* renamed from: Y */
    public final float m26329Y() {
        VisibleRegion a = this.f12587H.m16863c().m16856a();
        double d = a.f7134e.f7060a.f7059b;
        Location location = new Location(TtmlNode.CENTER);
        location.setLatitude(a.f7134e.m31725c().f7058a);
        location.setLongitude(a.f7134e.m31725c().f7059b);
        Location location2 = new Location(TtmlNode.CENTER);
        location2.setLatitude(location.getLatitude());
        location2.setLongitude(d);
        return location.distanceTo(location2);
    }

    /* renamed from: Z */
    public final void m26327Z() {
        if (m26238l0()) {
            m26366A0();
            return;
        }
        Location a = C8827h.f20170d.mo16894a(this.f12623r);
        if (a != null) {
            this.f12587H.m16872a(C8855b.m16879a(new LatLng(a.getLatitude(), a.getLongitude())));
        }
    }

    /* renamed from: a */
    public final LatLngBounds m26299a(ArrayList<TextSearchResultEntry> arrayList) {
        m26263f(true);
        LatLngBounds.C3581a aVar = new LatLngBounds.C3581a();
        Iterator<TextSearchResultEntry> it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            TextSearchResultEntry next = it.next();
            if (next.lnglat.size() >= 2 && !C14217x3.m2160b(next.address)) {
                LatLng latLng = new LatLng(next.lnglat.get(1).doubleValue(), next.lnglat.get(0).doubleValue());
                if (0.0d != latLng.f7058a || 0.0d != latLng.f7059b) {
                    this.f12610f.add(new TextSearchMarker(latLng, next, i));
                    aVar.m31721a(latLng);
                    i++;
                }
            }
        }
        this.f12588I.m13196a(this.f12610f);
        return i > 0 ? aVar.m31722a() : new LatLngBounds(new LatLng(0.0d, 0.0d), new LatLng(0.0d, 0.0d));
    }

    /* renamed from: a */
    public final void m26324a(@StringRes int i, DialogInterface.OnClickListener onClickListener) {
        DialogC14618f fVar = new DialogC14618f(this.f12615j);
        fVar.setTitle(R$string.permission_title_location);
        fVar.m995c(R$string.permission_content_location);
        fVar.m999b(i, onClickListener);
        fVar.show();
    }

    /* renamed from: a */
    public final void m26323a(int i, String str) {
        C14299q.m1721f(i);
        C14299q.m1714g(str, m26230o0() ? 0.0d : 1.0d);
    }

    /* renamed from: a */
    public final void m26322a(int i, String str, int i2) {
        Single.create(new C5105e0(str, i, i2)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C5102d0(), C14081m3.m2611a());
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: a */
    public void mo4198a(@Nullable Cursor cursor) {
        this.f12608d0.mo4150h();
        this.f12608d0.mo4159d();
        SearchHistoryAdapter searchHistoryAdapter = this.f12581B;
        if (searchHistoryAdapter != null) {
            searchHistoryAdapter.m26370g(cursor);
        }
        C13335l.m4182a(cursor != null ? cursor.getCount() : 0);
    }

    /* renamed from: a */
    public void m26321a(Location location) {
        this.f12617l.removeMessages(0);
        if (!this.f12618m) {
            if (!(!this.f12619n && this.f12626u == location.getLongitude() && this.f12625t == location.getLatitude())) {
                this.f12619n = false;
                this.f12626u = location.getLongitude();
                this.f12625t = location.getLatitude();
                m26346K0();
            }
            m26274d0();
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: a */
    public void mo1412a(View view, @Nullable Bundle bundle) {
        this.f12613h = ButterKnife.bind(this, view);
        C14216x2.m2208a("TextSearchF:onCreateView:map:+");
        this.f12612g = new MapView(this.f12615j);
        this.f12612g.m31768a(bundle);
        this.f12612g.m31764d();
        this.f12612g.m31765c();
        C14216x2.m2208a("TextSearchF:onCreateView:map:-");
        m26354G0();
        m26250i0();
        m26356F0();
        m26239l(false);
        this.f12612g.m31767a(this);
        if (C14017g4.m2805s()) {
            this.f12606b0 = m26297a0();
            C14217x3.m2186a(this.f12615j, this.f12606b0);
        } else {
            this.f12605a0 = m26288b0();
            this.f12615j.registerReceiver(this.f12605a0, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
        this.f12614i = this.f12615j.getLayoutInflater();
        new C13985e2(this.f12615j, Locale.ENGLISH);
        this.f12617l = new Handler();
        m26212x0();
        if (m26262f0()) {
            this.mSearchBar.keywordEdit.post(new RunnableC5094a1());
            m26360D0();
        }
        m26362C0();
        m26275d(false);
        if (m26242k0()) {
            this.mBottomLayout.post(new RunnableC5097b1());
        }
        Intent intent = getActivity() != null ? getActivity().getIntent() : null;
        if (intent != null && intent.hasExtra("KEY_KEYWORD")) {
            this.mSearchBar.keywordEdit.setText(intent.getStringExtra("KEY_KEYWORD"));
            m26302a(this.mSearchBar, true);
        }
    }

    /* renamed from: a */
    public final void m26319a(EditText editText, String str, C13331h hVar) {
        if (isVisible() && isAdded() && !isDetached()) {
            if (C13891a.m3145q() && this.f12608d0.mo4156e() != EnumC5119i1.AFTER_SUBMIT) {
                m26335V();
                Single.create(new C5153y(this, str, editText, hVar)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C5149w(str), new C5151x(str));
            } else if (m26228p0()) {
                m26301a(str, 1, false);
            }
        }
    }

    /* renamed from: a */
    public void m26318a(RecyclerView.ViewHolder viewHolder, List<? extends Object> list, int i, boolean z, EnumC5122j1 j1Var) {
        boolean z2;
        C13332i iVar;
        String str;
        boolean z3;
        LinearLayout linearLayout;
        if (!(list == null || list.size() == 0)) {
            C13351n a = C13351n.m4136a();
            Object obj = list.get(0);
            a.f30052V.setTextSize(a.f30036F);
            if (obj instanceof String) {
                z2 = false;
            } else if (obj instanceof C13332i) {
                z2 = true;
            } else {
                return;
            }
            for (int i2 = 0; i2 < list.size() && !this.f12615j.isFinishing(); i2++) {
                Object obj2 = list.get(i2);
                if (!z2) {
                    str = (String) obj2;
                    iVar = null;
                } else {
                    iVar = (C13332i) obj2;
                    str = iVar.m4206a();
                }
                LabelViewHolder labelViewHolder = (LabelViewHolder) viewHolder;
                RelativeLayout relativeLayout = labelViewHolder.itemContainer;
                int childCount = relativeLayout.getChildCount();
                int i3 = childCount;
                if (childCount == 0) {
                    TextView textView = new TextView(this.f12615j);
                    labelViewHolder.title = textView;
                    textView.setId(R$id.tv_title);
                    textView.setTextColor(a.f30072s);
                    textView.setTextSize(a.f30037G);
                    textView.setText(EnumC5122j1.RECENT.equals(j1Var) ? C14206w4.m2225a((int) R$string.textsearch_before_typein_recent_history) : C14206w4.m2225a((int) R$string.textsearch_before_typein_hot_searches));
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams.leftMargin = a.f30043M;
                    layoutParams.topMargin = (EnumC5122j1.AUTO_COMPLETE.equals(j1Var) || EnumC5122j1.RECENT.equals(j1Var) || (EnumC5122j1.TRENDING.equals(j1Var) && !this.f12581B.m26375e())) ? a.f30045O : a.f30044N;
                    relativeLayout.addView(textView, layoutParams);
                    i3 = relativeLayout.getChildCount();
                }
                if (i3 == 1) {
                    linearLayout = new LinearLayout(this.f12615j);
                    linearLayout.setId(R$id.first_line);
                    linearLayout.setOrientation(0);
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
                    int i4 = a.f30043M;
                    layoutParams2.leftMargin = i4;
                    layoutParams2.rightMargin = i4;
                    layoutParams2.topMargin = a.f30074u;
                    if (EnumC5122j1.RECENT.equals(j1Var)) {
                        layoutParams2.bottomMargin = a.f30074u;
                    }
                    layoutParams2.addRule(3, R$id.tv_title);
                    relativeLayout.addView(linearLayout, layoutParams2);
                    i3 = relativeLayout.getChildCount();
                    z3 = false;
                } else if (i3 >= 2) {
                    linearLayout = (LinearLayout) relativeLayout.getChildAt(i3 - 1);
                    int c = C14135r2.m2390c(this.f12615j) - (a.f30043M * 2);
                    int i5 = 0;
                    while (i5 < linearLayout.getChildCount()) {
                        View childAt = linearLayout.getChildAt(i5);
                        if (childAt instanceof FrameLayout) {
                            View childAt2 = ((FrameLayout) childAt).getChildAt(0);
                            if (childAt2 instanceof TextView) {
                                TextView textView2 = (TextView) childAt2;
                                c = (int) ((c - (i5 != 0 ? a.f30075v : 0)) - a.f30052V.measureText(textView2.getText(), 0, textView2.getText().length()));
                            }
                        }
                        i5++;
                    }
                    z3 = !C14217x3.m2160b(str) && ((float) c) - (((float) a.f30075v) + a.f30052V.measureText(str, 0, str.length())) <= 0.0f;
                } else {
                    z3 = false;
                    linearLayout = null;
                }
                TrendingLabelView trendingLabelView = new TrendingLabelView(this.f12615j);
                trendingLabelView.m26183a(str);
                if (iVar != null) {
                    trendingLabelView.m26184a(iVar.m4205b().intValue());
                }
                if (z3) {
                    if (i3 != i + 1) {
                        linearLayout = new LinearLayout(this.f12615j);
                        linearLayout.setOrientation(0);
                        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
                        int i6 = a.f30043M;
                        layoutParams3.leftMargin = i6;
                        layoutParams3.rightMargin = i6;
                        layoutParams3.topMargin = a.f30074u;
                        if (i < 3 && i3 == i) {
                            layoutParams3.bottomMargin = EnumC5122j1.TRENDING.equals(j1Var) ? a.f30033C : a.f30076w;
                        }
                        if (i3 == 2) {
                            linearLayout.setId(R$id.second_line);
                            layoutParams3.addRule(3, R$id.first_line);
                        } else if (i3 == 3) {
                            linearLayout.setId(R$id.third_line);
                            layoutParams3.addRule(3, R$id.second_line);
                        }
                        relativeLayout.addView(linearLayout, layoutParams3);
                    } else {
                        return;
                    }
                }
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
                if (linearLayout != null) {
                    if (linearLayout.getChildCount() != 0) {
                        layoutParams4.setMargins(a.f30075v, 0, 0, 0);
                    }
                    linearLayout.addView(trendingLabelView, layoutParams4);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m26303a(TextSearchMarker textSearchMarker, String str) {
        boolean z;
        LinearLayout linearLayout;
        LinearLayout linearLayout2 = textSearchMarker.lineTertiaryContainer;
        String concat = " ".concat(str).concat(" ");
        C13351n a = C13351n.m4136a();
        int childCount = linearLayout2.getChildCount();
        if (childCount <= 3) {
            linearLayout = new LinearLayout(this.f12615j);
            linearLayout.setOrientation(0);
            linearLayout2.addView(linearLayout, -2, -2);
            z = true;
        } else {
            linearLayout = (LinearLayout) linearLayout2.getChildAt(childCount - 1);
            int c = C14135r2.m2390c(this.f12615j) - (((a.f30040J + a.f30041K) + a.f30042L) + (a.f30061h * 2));
            int i = 0;
            while (i < linearLayout2.getChildCount()) {
                View childAt = linearLayout2.getChildAt(i);
                if (childAt instanceof TextView) {
                    TextView textView = (TextView) childAt;
                    Drawable[] compoundDrawables = textView.getCompoundDrawables();
                    c = ((int) ((c - (i != 0 ? a.f30039I : 0)) - a.f30053W.measureText(textView.getText(), 0, textView.getText().length()))) - (compoundDrawables[0] != null ? compoundDrawables[0].getIntrinsicWidth() : 0);
                } else {
                    c = c;
                    if (childAt instanceof LinearLayout) {
                        for (int i2 = 0; i2 < linearLayout.getChildCount(); i2++) {
                            View childAt2 = linearLayout.getChildAt(i2);
                            c = c;
                            if (childAt2 instanceof FrameLayout) {
                                FrameLayout frameLayout = (FrameLayout) childAt2;
                                c = c;
                                if (frameLayout.getChildCount() > 0) {
                                    View childAt3 = frameLayout.getChildAt(0);
                                    c = c;
                                    if (childAt3 instanceof TextView) {
                                        TextView textView2 = (TextView) childAt3;
                                        c = ((int) ((c - a.f30079z) - a.f30052V.measureText(textView2.getText(), 0, textView2.getText().length()))) - (a.f30077x * 2);
                                    }
                                }
                            }
                        }
                        c = c;
                    }
                }
                i++;
            }
            z = ((float) ((c - a.f30079z) - (a.f30077x * 2))) - a.f30052V.measureText(concat, 0, concat.length()) > 0.0f;
        }
        if (z) {
            TextView textView3 = new TextView(this.f12615j);
            textView3.setTextSize(a.f30069p);
            textView3.setGravity(17);
            textView3.setTextColor(a.f30073t);
            textView3.setText(concat);
            textView3.setSingleLine();
            FrameLayout frameLayout2 = new FrameLayout(this.f12615j);
            frameLayout2.setBackgroundResource(R$drawable.ndp_others_report);
            int i3 = a.f30077x;
            int i4 = a.f30078y;
            frameLayout2.setPadding(i3, i4, i3, i4);
            frameLayout2.addView(textView3);
            textView3.setEllipsize(TextUtils.TruncateAt.END);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(a.f30079z, 0, 0, 0);
            linearLayout.addView(frameLayout2, layoutParams);
        }
    }

    /* renamed from: a */
    public final void m26302a(SearchBar searchBar, boolean z) {
        Activity activity = this.f12615j;
        if (activity != null && !activity.isFinishing() && isAdded() && this.mSearchResult != null && this.mSearchHistory != null && searchBar != null) {
            AbstractC13333j jVar = this.f12608d0;
            SearchBarEditText searchBarEditText = searchBar.keywordEdit;
            jVar.mo4169a((searchBarEditText == null || searchBarEditText.getText() == null) ? "" : searchBar.keywordEdit.getText().toString(), z);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p282l.AbstractC8866e
    /* renamed from: a */
    public void mo6329a(C8856c cVar) {
        this.f12587H = cVar;
        if (this.f12587H != null) {
            C13351n a = C13351n.m4136a();
            this.f12601W = C8907b.m16806a((int) R$drawable.ic_pin_green);
            this.f12602X = C8907b.m16806a((int) R$drawable.ic_pin_grey);
            this.f12587H.m16862d().m16852d(false);
            C8856c cVar2 = this.f12587H;
            int i = a.f30065l;
            cVar2.m16874a(i, 0, i, a.f30066m);
            this.f12587H.m16868a(new C5138q0());
            this.f12587H.m16869a(new C5142s0());
            this.f12587H.m16870a(new C5144t0());
            this.f12588I = new C10183c<>(this.f12615j, this.f12587H);
            this.f12589J = new C14612d<>(this.f12615j, this.f12587H, this.f12588I, new C5146u0());
            this.f12588I.m13197a(this.f12589J);
            this.f12589J.m1019b(true);
            this.f12587H.m16871a((C8856c.AbstractC8858b) this.f12588I);
            this.f12587H.m16867a((C8856c.AbstractC8863g) this.f12588I);
            this.f12588I.m13200a(new C5148v0(this));
            this.f12588I.m13199a(new C5150w0());
        }
    }

    /* renamed from: a */
    public final void m26301a(String str, int i, boolean z) {
        if (!this.f12615j.isFinishing()) {
            this.f12608d0.mo4170a(str, i, z);
        }
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: a */
    public void mo4197a(String str, C13331h hVar) {
        m26319a(this.mSearchBar.keywordEdit, str, hVar);
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: a */
    public void mo4196a(String str, C13331h hVar, boolean z) {
        if (isVisible() && isAdded() && !isDetached()) {
            if (C13891a.m3145q() && !TextUtils.isEmpty(str)) {
                this.f12615j.runOnUiThread(new RunnableC5155z(hVar, z));
                Single.create(new C5099c0(str, hVar)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C5093a0(str, hVar), new C5096b0(str));
            } else if (m26228p0()) {
                m26301a(str, 4, false);
            }
        }
    }

    /* renamed from: a */
    public void m26300a(String str, String str2, int i, String str3) {
        m26254h0();
        String str4 = "FROM_Search_Results".equals(str3) ? "List" : "Map";
        C14299q.m1791E(str4);
        C14289m.m1894a((Integer) 2, str4, Integer.valueOf(i));
        C13335l.m4179d();
        try {
            m26264f(str);
            Intent a = NumberDetailActivity.m26858a(this.f12615j, str, str2, null, str3);
            a.putExtra("force_update", true);
            a.putExtra("textsearch_position", i);
            startActivity(a);
        } catch (Exception e) {
            C14687h.m861a(this.f12615j, getString(R$string.invalid_number), 1).m858c();
        }
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: a */
    public void mo4195a(@NonNull String str, @NonNull List<TextSearchResultEntry> list, int i, boolean z) {
        this.f12582C.m4237a(str, list, i, z);
    }

    /* renamed from: a */
    public void m26298a(String[] strArr, ArrayList<String> arrayList, TextSearchMarker textSearchMarker) {
        C13351n a = C13351n.m4136a();
        a.f30052V.setTextSize(a.f30070q);
        a.f30053W.setTextSize(a.f30071r);
        ArrayList arrayList2 = new ArrayList();
        for (String str : strArr) {
            String replaceAll = str.replaceAll("[^\\p{L}\\d\\s_]", "");
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String a2 = C14099o3.m2510n().m2546a(Integer.valueOf(it.next()).intValue());
                if (a2 != null && !arrayList2.contains(a2) && a2.matches("(?i)".concat(".*").concat(replaceAll).concat(".*"))) {
                    arrayList2.add(a2);
                    m26303a(textSearchMarker, a2);
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m26325a(int i, int i2) {
        return i >= 0 && !(3 == i2 && 2 == i2) && C13891a.m3145q();
    }

    /* renamed from: a */
    public final boolean m26320a(View view, int i) {
        TrendingLabelView trendingLabelView = view instanceof TrendingLabelView ? (TrendingLabelView) view : view instanceof TextView ? (TrendingLabelView) view.getParent() : null;
        boolean z = false;
        if (trendingLabelView == null) {
            return false;
        }
        this.f12611f0 = true;
        this.f12608d0.mo4167b().f30012f = null;
        this.f12608d0.mo4167b().f30011e = null;
        SearchBarEditText searchBarEditText = this.mSearchBar.keywordEdit;
        String a = trendingLabelView.m26185a();
        if (a.equals(searchBarEditText.getText().toString())) {
            searchBarEditText.setText((CharSequence) null);
            searchBarEditText.post(new RunnableC5139r(searchBarEditText, a));
        } else {
            searchBarEditText.setText(a);
        }
        searchBarEditText.setCursorVisible(false);
        m26254h0();
        this.f12608d0.mo4165b(a);
        int b = trendingLabelView.m26182b();
        if (b != -1) {
            z = true;
        }
        if (z) {
            m26286c(i, b);
            return true;
        }
        m26295b(i, b);
        return true;
    }

    @TargetApi(21)
    /* renamed from: a0 */
    public final ConnectivityManager.NetworkCallback m26297a0() {
        return new C5152x0();
    }

    /* renamed from: b */
    public final void m26295b(int i, int i2) {
        C14299q.m1716g(i);
        C14299q.m1797C(C14289m.m1850h(i2));
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: b */
    public void mo4194b(@NonNull List<String> list) {
        SearchHistoryAdapter searchHistoryAdapter = this.f12581B;
        if (searchHistoryAdapter != null) {
            searchHistoryAdapter.m26383a(list);
        }
    }

    /* renamed from: b0 */
    public final BroadcastReceiver m26288b0() {
        return new C5154y0();
    }

    /* renamed from: c */
    public final void m26286c(int i, int i2) {
        C14299q.m1711h(i);
        C14299q.m1794D(C14289m.m1850h(i2));
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: c */
    public void mo4193c(@NonNull String str) {
        C14687h.m861a(this.f12615j, str, 1).m858c();
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: c */
    public void mo4192c(@NonNull List<C13332i> list) {
        SearchHistoryAdapter searchHistoryAdapter = this.f12581B;
        if (searchHistoryAdapter != null) {
            searchHistoryAdapter.m26380b(list);
        }
    }

    /* renamed from: c0 */
    public final void m26281c0() {
        AbstractC6825f fVar = this.f12623r;
        if (fVar != null) {
            try {
                fVar.mo21492d();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: d */
    public final void m26279d(int i) {
        C14299q.m1794D(C14289m.m1850h(i));
    }

    /* renamed from: d */
    public final void m26275d(boolean z) {
        if (C13878a3.m3206l()) {
            C5121j0 j0Var = new C5121j0(z);
            AbstractC6825f.C6826a aVar = new AbstractC6825f.C6826a(this.f12615j);
            aVar.m21822a(C8827h.f20169c);
            aVar.m21820a((AbstractC6825f.AbstractC6827b) j0Var);
            aVar.m21819a((AbstractC6825f.AbstractC6828c) j0Var);
            this.f12623r = aVar.m21824a();
            this.f12623r.mo21493c();
        }
    }

    /* renamed from: d0 */
    public final void m26274d0() {
        if (!this.f12615j.isFinishing() && isAdded() && isVisible() && !this.f12584E) {
            C14217x3.m2194a(this.f12580A);
        }
        this.f12580A = null;
    }

    /* renamed from: e */
    public final void m26270e(String str) {
        boolean isEmpty = TextUtils.isEmpty(str);
        if (isEmpty) {
            this.f12600V = EnumC5128l1.NORMAL_LIST_SEARCH;
            C14217x3.m2180a((View) this.mSearchBar.voiceButton, true);
            this.mSearchBar.deleteButton.setVisibility(8);
            this.mSearchListResult.setVisibility(8);
            this.mSearchArea.setVisibility(8);
            this.mMyLocation.setVisibility(8);
            m26210y0();
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mSearchResult.getLayoutParams();
            layoutParams.width = C14135r2.m2390c(this.f12615j);
            this.mSearchResult.setLayoutParams(layoutParams);
            this.mSearchResult.setTranslationY(0.0f);
            m26239l(false);
            this.f12608d0.mo4150h();
        } else {
            C14217x3.m2180a((View) this.mSearchBar.voiceButton, false);
            this.f12615j.getIntent().putExtra("KEY_KEYWORD", str);
            this.mSearchBar.deleteButton.setVisibility(0);
        }
        if (this.f12611f0) {
            this.f12611f0 = false;
            if (C14108o4.m2498a(str) || !m26235m0()) {
                this.f12608d0.mo4175a(EnumC5119i1.AFTER_SUBMIT);
            } else {
                m26366A0();
                return;
            }
        } else {
            this.f12608d0.mo4175a(isEmpty ? EnumC5119i1.BEFORE_TYPE : EnumC5119i1.DURING_TYPE);
        }
        m26302a(this.mSearchBar, true);
    }

    /* renamed from: e */
    public final void m26269e(boolean z) {
        if (m26228p0()) {
            mo4196a(this.mSearchBar.keywordEdit.getText().toString(), this.f12608d0.mo4167b(), z);
        }
    }

    /* renamed from: e0 */
    public final void m26268e0() {
        this.f12615j.runOnUiThread(new RunnableC5156z0());
    }

    /* renamed from: f */
    public final void m26264f(String str) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        String l = C14108o4.m2499a((CharSequence) str) ? C14108o4.m2474l(str) : str;
        Cursor query = this.f12616k.query(C13021d.f29448a, new String[]{"_id"}, "_number =?", new String[]{str}, null);
        ContentValues contentValues = new ContentValues();
        if (query != null) {
            if (query.moveToFirst()) {
                contentValues.put("_e164", l);
                contentValues.put("_updatetime", valueOf);
                contentValues.put("_searchtime", Long.toString(System.currentTimeMillis()));
                this.f12616k.update(C13021d.f29448a, contentValues, "_number=?", new String[]{str});
            } else {
                contentValues.put("_number", str);
                contentValues.put("_e164", l);
                contentValues.put("_searchtime", Long.toString(System.currentTimeMillis()));
                contentValues.put("_createtime", valueOf);
                contentValues.put("_updatetime", valueOf);
                this.f12616k.insert(C13021d.f29448a, contentValues);
            }
            query.close();
        }
    }

    /* renamed from: f */
    public final void m26263f(boolean z) {
        C14612d<TextSearchMarker> dVar = this.f12589J;
        if (dVar != null) {
            dVar.m1021a(z);
        }
    }

    /* renamed from: f0 */
    public final boolean m26262f0() {
        return this.f12615j.getIntent().getBooleanExtra("largewidget", false);
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: g */
    public void mo3016g() {
    }

    /* renamed from: g */
    public final void m26259g(boolean z) {
        if (isAdded() && this.f12598T) {
            if (z) {
                this.f12587H.m16872a(C8855b.m16877a(m26299a(this.f12582C.m4219f()), C13351n.m4136a().f30049S));
            } else {
                this.f12587H.m16864b(C8855b.m16877a(m26299a(this.f12582C.m4219f()), C13351n.m4136a().f30049S));
            }
            this.f12588I.m13195b();
        }
    }

    /* renamed from: g0 */
    public final void m26258g0() {
        this.f12629x = false;
        C13938c4.m3006a(this, 103, m6059b(R$string.textsearch_dialogue_gps_text), new DialogInterface$OnClickListenerC5127l0());
    }

    /* renamed from: h */
    public final void m26255h(boolean z) {
        this.f12624s = LocationRequest.m31811H();
        this.f12624s.m31809g(102);
        this.f12624s.m31808g(1000L);
        LocationSettingsRequest.C3575a aVar = new LocationSettingsRequest.C3575a();
        aVar.m31804a(this.f12624s);
        aVar.m31803a(true);
        C8827h.f20171e.mo16887a(this.f12623r, aVar.m31805a()).mo21817a(new C5124k0(z));
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: h */
    public boolean mo4191h() {
        return this.f12582C.m4217h();
    }

    /* renamed from: h0 */
    public final void m26254h0() {
        if (this.f12615j.getCurrentFocus() != null) {
            ((InputMethodManager) this.f12615j.getSystemService("input_method")).hideSoftInputFromWindow(this.f12615j.getCurrentFocus().getWindowToken(), 0);
        }
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: i */
    public void mo4190i() {
        if (this.f12582C.getItemCount() == 0) {
            m26331X();
        } else {
            m26208z0();
        }
    }

    /* renamed from: i */
    public final void m26251i(boolean z) {
        if (((LocationManager) this.f12615j.getSystemService("location")).isProviderEnabled("network")) {
            m26350I0();
            return;
        }
        m26274d0();
        if (z) {
            m26258g0();
        }
    }

    /* renamed from: i0 */
    public final void m26250i0() {
        C13351n a = C13351n.m4136a();
        int b = C14135r2.m2391b(this.f12615j);
        int n = C14217x3.m2122n();
        int i = a.f30055b;
        int i2 = a.f30054a;
        int i3 = a.f30050T;
        int i4 = a.f30051U;
        int c = C14135r2.m2390c(this.f12615j);
        this.f12592N = ObjectAnimator.ofFloat(this.mSearchResult, View.TRANSLATION_Y.getName(), ((((b - n) - i) - i2) - i3) - i4);
        this.f12593O = ValueAnimator.ofInt(c, (c - a.f30063j) - a.f30064k);
        this.f12596R = ObjectAnimator.ofFloat((Object) null, View.TRANSLATION_X.getName(), -c);
        String name = View.TRANSLATION_Y.getName();
        float f = a.f30067n;
        this.f12594P = ObjectAnimator.ofFloat((Object) null, name, f, -f);
        this.f12595Q = ObjectAnimator.ofFloat((Object) null, View.ROTATION.getName(), a.f30060g, 0.0f);
        this.f12597S = ObjectAnimator.ofFloat(this.mMyLocation, View.TRANSLATION_Y.getName(), 0.0f, -a.f30068o);
    }

    /* renamed from: j */
    public final void m26247j(boolean z) {
        if (isAdded() && !isDetached()) {
            String trim = this.mSearchBar.keywordEdit.getText().toString().trim();
            if (TextUtils.isEmpty(trim)) {
                C14687h.m861a(this.f12615j, getString(R$string.search_empty), 1).m858c();
            } else if (C14108o4.m2498a(trim) || !m26235m0()) {
                m26279d(9);
                this.f12608d0.mo4167b().f30013g = EnumC5125k1.KEYPAD;
                this.f12608d0.mo4175a(EnumC5119i1.AFTER_SUBMIT);
                m26254h0();
                SearchBarEditText searchBarEditText = this.mSearchBar.keywordEdit;
                if (searchBarEditText == null || searchBarEditText.getText() == null || !C13565v.m3921g().m3926a(this.mSearchBar.keywordEdit.getText().toString())) {
                    this.f12608d0.mo4165b(trim);
                    this.mSearchBar.keywordEdit.setCursorVisible(false);
                    if (z) {
                        C13322f.m4251e();
                        C13322f.m4253c(trim);
                    }
                    m26301a(trim, 1, false);
                }
            } else {
                m26366A0();
            }
        }
    }

    /* renamed from: j0 */
    public final boolean m26246j0() {
        return System.currentTimeMillis() - C13915b3.m3049d("pref_text_search_session_id_last_generate_time") > CommandHandler.WORK_PROCESSING_TIME_IN_MS;
    }

    /* renamed from: k */
    public void m26243k(boolean z) {
        if (!this.f12615j.isFinishing()) {
            this.f12619n = true;
            m26352H0();
            AbstractC6825f fVar = this.f12623r;
            if (fVar == null || !fVar.mo21491g()) {
                m26251i(z);
            } else {
                m26255h(z);
            }
        }
    }

    /* renamed from: k0 */
    public final boolean m26242k0() {
        return this.f12615j.getIntent().getBooleanExtra("KEY_IS_FROM_VOICE", false);
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: l */
    public void mo4189l() {
        if (this.mSearchResult.getVisibility() == 8) {
            this.mSearchResult.setVisibility(0);
            this.mSearchHistory.setVisibility(8);
        }
    }

    /* renamed from: l */
    public final void m26239l(boolean z) {
        MapView mapView = this.f12612g;
        if (mapView != null) {
            mapView.setVisibility(z ? 0 : 4);
        }
    }

    /* renamed from: l0 */
    public final boolean m26238l0() {
        return !C13878a3.m3206l();
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: m */
    public void mo4188m() {
        this.f12582C.m4238a("", new ArrayList<>(), -1);
        this.mSearchResult.setVisibility(8);
        this.mSearchHistory.setVisibility(0);
    }

    /* renamed from: m0 */
    public final boolean m26235m0() {
        return C13878a3.m3253I() && !C13878a3.m3206l();
    }

    /* renamed from: n0 */
    public final boolean m26232n0() {
        return this.f12600V.equals(EnumC5128l1.MAP_CARD_ITEM_OPEN);
    }

    /* renamed from: o0 */
    public boolean m26230o0() {
        return !C14217x3.m2110w() || !C13878a3.m3206l() || (!this.f12618m && (this.f12626u == 0.0d || this.f12625t == 0.0d)) || !C14217x3.m2125l(this.f12615j);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 101 && i2 == -1) {
            String str = intent.getStringArrayListExtra("android.speech.extra.RESULTS").get(0);
            SearchBarEditText searchBarEditText = this.mSearchBar.keywordEdit;
            if (searchBarEditText != null) {
                searchBarEditText.setText(str);
                C14217x3.m2180a((View) this.mSearchBar.voiceButton, false);
                this.mSearchBar.deleteButton.setVisibility(0);
            }
        } else if (i == 102) {
            if (i2 == -1) {
                m26350I0();
            } else if (i2 == 0) {
                m26274d0();
            }
        } else if (i == 103) {
            m26243k(false);
        } else if (i == 200 && i2 == -1 && !TextUtils.isEmpty(this.f12585F)) {
            C14356f.m1480b(this.f12585F);
            this.f12585F = null;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f12615j = getActivity();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttachFragment(Fragment fragment) {
        super.onAttachFragment(fragment);
    }

    @Override // androidx.fragment.app.Fragment
    @TargetApi(19)
    public boolean onContextItemSelected(MenuItem menuItem) {
        String str;
        int itemId = menuItem.getItemId();
        String str2 = "";
        if (this.mSearchResult.getVisibility() == 0) {
            TextSearchResultEntry item = this.f12582C.getItem(this.f12628w);
            if (item != null) {
                str = item.num;
            }
            str = "";
        } else {
            Cursor a = this.f12581B.m26388a(this.f12628w);
            if (!TextUtils.isEmpty(this.f12581B.m26376d(a))) {
                str = this.f12581B.m26376d(a);
            }
            str = "";
        }
        if (TextUtils.isEmpty(str) || !getUserVisibleHint()) {
            return false;
        }
        if (itemId == 2131362819) {
            C12860e.m5132a((Context) this.f12615j, C14108o4.m2474l(str), (String) null, false, f12579g0, (HandlerC12947l) new HandlerC5112g0(this));
            return true;
        }
        int i = 4;
        if (itemId == 2131362830) {
            Activity activity = this.f12615j;
            if (this.mSearchHistory.getVisibility() == 0) {
                i = 3;
            }
            C14217x3.m2145e(activity, str, i);
            return true;
        } else if (itemId == 2131362858) {
            C12810o.m5267a((Context) this.f12615j, 5, str, (String) null, false, C12810o.m5238g());
            return true;
        } else if (itemId == 2131362820) {
            if (this.f12620o) {
                C12928g.m4997a(this.f12615j, this.f12622q, 3, "", (View.OnClickListener) null, DataUserReport.Source.OTHER);
                return true;
            }
            String l = C14108o4.m2474l(str);
            NumberInfo e = C11052i.m10328e().m10327e(l);
            String str3 = this.f12622q;
            String C = e == null ? "" : e.m28393C();
            if (e != null) {
                str2 = e.m28383M();
            }
            C12928g.m4989a((Context) this.f12615j, false, true, true, this.f12622q, (HandlerC12947l) null, 0, new DataUserReport(str3, l, C, str2, DataUserReport.Source.OTHER));
            C14289m.m1909a(4, 1, l);
            return true;
        } else if (itemId == 2131362871) {
            C14217x3.m2176a(str).subscribe(new C5140r0(str));
            return true;
        } else if (itemId != 2131362843) {
            return true;
        } else {
            try {
                DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this.f12615j);
                fVar.m979b(getString(R$string.delete_search_number));
                fVar.m978b(getString(R$string.okok), new DialogInterface$OnClickListenerC5103d1(str));
                fVar.m984a(getString(R$string.cancel), new DialogInterface$OnClickListenerC5100c1(this));
                fVar.m982b();
                return true;
            } catch (Exception e2) {
                return true;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f12608d0.mo4177a();
    }

    @Override // androidx.fragment.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        String str;
        String str2;
        if (this.mSearchResultRecyclerView.equals(view) || this.mSearchHistoryRecyclerView.equals(view)) {
            boolean z = true;
            if (this.mSearchResultRecyclerView.equals(view)) {
                TextSearchResultEntry item = this.f12582C.getItem(this.f12628w);
                if (item != null && item.listType != 0) {
                    z = false;
                    str = item.num;
                    str2 = TextUtils.isEmpty(str) ? "" : C14108o4.m2474l(item.num);
                } else {
                    return;
                }
            } else {
                Cursor a = this.f12581B.m26388a(this.f12628w);
                if (a != null && !a.isClosed() && a.getCount() > 0) {
                    str = this.f12581B.m26376d(a);
                    str2 = this.f12581B.m26381b(a);
                } else {
                    return;
                }
            }
            String e = C14108o4.m2481e(str);
            if (str2 == null || str2.equals(m6059b(R$string.unknown_number)) || str2.equals("")) {
                e = "";
            }
            this.f12622q = e;
            C12928g.m5000a().m4979c(this.f12615j.getApplicationContext(), e, "", 3).observeOn(Schedulers.m0io()).flatMap(new C5147v(str, str2)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C5123k(contextMenu, z, str), C14081m3.m2611a());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        MapView mapView = this.f12612g;
        if (mapView != null) {
            mapView.m31769a();
        }
        this.f12608d0.mo4171a((String) null);
        C8856c cVar = this.f12587H;
        if (cVar != null) {
            cVar.m16866a(false);
            this.f12587H.m16875a();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        m26274d0();
        m26348J0();
        m26281c0();
        if (C14017g4.m2805s()) {
            ConnectivityManager.NetworkCallback networkCallback = this.f12606b0;
            if (networkCallback != null) {
                C14217x3.m2164b(this.f12615j, networkCallback);
            }
        } else {
            BroadcastReceiver broadcastReceiver = this.f12605a0;
            if (broadcastReceiver != null) {
                this.f12615j.unregisterReceiver(broadcastReceiver);
            }
        }
        this.f12587H = null;
        Unbinder unbinder = this.f12613h;
        if (unbinder != null) {
            unbinder.unbind();
        }
        this.f12584E = true;
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        MapView mapView = this.f12612g;
        if (mapView != null) {
            mapView.m31766b();
        }
        this.f12607c0.m3029c(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (i != 201) {
            return;
        }
        if (C13878a3.m3206l()) {
            m26275d(true);
            if (!C14217x3.m2110w()) {
                m26218u0();
            }
            C14302t.m1648a(5, 1);
            m26247j(false);
        } else if (C13878a3.m3223c(this.f12615j)) {
            C14302t.m1648a(5, 3);
            m26324a(R$string.permission_button_location, new DialogInterface$OnClickListenerC5136p0());
        } else {
            C14302t.m1648a(5, 2);
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        MapView mapView = this.f12612g;
        if (mapView != null) {
            mapView.m31765c();
        }
        this.f12607c0.m3029c(true);
        if (this.f12609e0 && C13878a3.m3206l()) {
            this.f12609e0 = false;
            m26247j(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        MapView mapView = this.f12612g;
        if (mapView != null) {
            mapView.m31764d();
        }
        C13335l.m4181b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        MapView mapView = this.f12612g;
        if (mapView != null) {
            mapView.m31763e();
        }
        C13322f.m4251e();
        C13335l.m4180c();
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: p */
    public void mo4187p() {
        TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
        textSearchResultEntry.listType = 0;
        textSearchResultEntry.name = "NO_NETWORK";
        this.f12582C.m4219f().remove(textSearchResultEntry);
    }

    /* renamed from: p0 */
    public final boolean m26228p0() {
        SearchBar searchBar = this.mSearchBar;
        return (searchBar == null || searchBar.keywordEdit == null) ? false : true;
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: q */
    public void mo4186q() {
        TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
        textSearchResultEntry.listType = 1;
        this.f12582C.m4219f().remove(textSearchResultEntry);
    }

    /* renamed from: q0 */
    public final boolean m26226q0() {
        return this.f12600V.equals(EnumC5128l1.NORMAL_LIST_SEARCH) || this.f12600V.equals(EnumC5128l1.MAP_LIST_SEARCH);
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: r */
    public void mo3015r() {
        C14289m.m1892a("search", this.f12607c0.m3022b());
    }

    /* renamed from: r0 */
    public final boolean m26224r0() {
        return this.f12600V.equals(EnumC5128l1.MAP_SEARCH_NO_RESULT);
    }

    /* renamed from: s0 */
    public final boolean m26222s0() {
        return this.f12600V.equals(EnumC5128l1.MAP_SEARCH);
    }

    /* renamed from: t0 */
    public final void m26220t0() {
        C13324g gVar = this.f12582C;
        if (gVar != null) {
            gVar.notifyDataSetChanged();
        }
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: u */
    public void mo4185u() {
        this.f12582C.m4238a("", new ArrayList<>(), -1);
        this.mSearchResult.setVisibility(0);
        this.mSearchHistory.setVisibility(8);
    }

    /* renamed from: u0 */
    public final void m26218u0() {
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this.f12615j);
        fVar.m979b(getString(R$string.textsearch_dialog_usage_confirmation));
        fVar.m983a(false);
        fVar.m978b(m6059b(R$string.textsearch_dialog_usage_confirmation_agree), new DialogInterface$OnClickListenerC5132n0());
        fVar.m984a(m6059b(R$string.textsearch_dialogue_gps_n), new DialogInterface$OnClickListenerC5130m0(this));
        fVar.m989a().show();
    }

    @Override // p459j.p460a.p551p0.AbstractC13334k
    /* renamed from: v */
    public void mo4184v() {
        boolean z = m26226q0() || (!m26224r0() && !m26222s0() && !m26232n0());
        RelativeLayout relativeLayout = this.mSearchResult;
        if (relativeLayout != null && relativeLayout.getVisibility() == 8 && z) {
            this.mSearchResult.setVisibility(0);
            RelativeLayout relativeLayout2 = this.mSearchHistory;
            if (relativeLayout2 != null) {
                relativeLayout2.setVisibility(8);
            }
        }
        RecyclerView recyclerView = this.mSearchResultRecyclerView;
        if (recyclerView != null && recyclerView.getVisibility() == 8 && z) {
            this.mSearchResultRecyclerView.setVisibility(0);
        }
    }

    /* renamed from: v0 */
    public final void m26216v0() {
        if (m26238l0()) {
            m26366A0();
            return;
        }
        this.f12582C.m4231b();
        MapView mapView = this.f12612g;
        if (mapView != null) {
            this.mSearchContainer.removeView(mapView);
            this.mSearchContainer.addView(this.f12612g);
            this.mSearchArea.bringToFront();
            this.mMyLocation.bringToFront();
            this.mSearchListResult.bringToFront();
            this.mBottomLayout.bringToFront();
        }
        m26263f(true);
        this.f12610f.clear();
        C8856c cVar = this.f12587H;
        if (cVar != null) {
            cVar.m16875a();
            this.f12587H.m16866a(true);
        }
        C10183c<TextSearchMarker> cVar2 = this.f12588I;
        if (cVar2 != null) {
            cVar2.m13201a();
        }
        m26254h0();
        this.f12600V = EnumC5128l1.MAP_SEARCH;
        if (!this.f12593O.isRunning()) {
            this.f12593O.start();
        }
        if (!this.f12592N.isRunning()) {
            this.f12592N.start();
        }
        if (this.f12598T) {
            C14299q.m1758U0();
        }
    }

    /* renamed from: w0 */
    public final void m26214w0() {
        startActivityForResult(C14217x3.m2113t(), 101);
    }

    /* renamed from: x0 */
    public final void m26212x0() {
        this.f12583D = C14037j3.m2731a().mo2703a((Action1) new C5134o0());
    }

    /* renamed from: y0 */
    public final void m26210y0() {
        this.mBottomLayout.removeView(this.f12591L);
        this.mBottomLayout.removeView(this.f12590K);
        this.f12591L = null;
        this.f12590K = null;
    }

    /* renamed from: z0 */
    public final void m26208z0() {
        TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
        textSearchResultEntry.listType = 7;
        this.f12582C.m4219f().remove(textSearchResultEntry);
    }
}
