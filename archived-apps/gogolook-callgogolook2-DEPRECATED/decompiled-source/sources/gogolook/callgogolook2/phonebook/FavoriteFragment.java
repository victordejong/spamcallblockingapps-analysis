package gogolook.callgogolook2.phonebook;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextMenu;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.aotter.net.trek.model.Entity;
import gogolook.callgogolook2.FavoriteReportActivity;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.main.logselect.LogSelectionActivity;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import gogolook.callgogolook2.realm.obj.tag.TagRealmObject;
import gogolook.callgogolook2.view.RoundImageView;
import gogolook.callgogolook2.view.widget.WSpinner;
import io.realm.Sort;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p459j.p460a.p461a0.AbstractC11045d;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p463b0.DialogC11128h;
import p459j.p460a.p503e0.C12317g;
import p459j.p460a.p518j.AbstractC12478d;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p531k0.C12846b;
import p459j.p460a.p531k0.C12853c;
import p459j.p460a.p531k0.C12860e;
import p459j.p460a.p531k0.C12861f;
import p459j.p460a.p531k0.p532g.DialogC12864a;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p541n0.C13057d;
import p459j.p460a.p541n0.C13131j;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.C13198r;
import p459j.p460a.p541n0.p542u.p544b.C13224a;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p569u0.C13673f;
import p459j.p460a.p569u0.C13679g;
import p459j.p460a.p569u0.DialogC13661d;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14020h1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14099o3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14132r;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14186u0;
import p459j.p460a.p582w0.C14193v0;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14320y3;
import p459j.p460a.p582w0.C14323z;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p585b5.C13929c;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p582w0.p594z4.EnumC14329a;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p459j.p460a.p613z0.p617p.DialogC14669c;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.Subscription;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment.class */
public class FavoriteFragment extends AbstractC12478d implements C13930d.AbstractC13931a {

    /* renamed from: s */
    public static final String f12374s = FavoriteFragment.class.getSimpleName();

    /* renamed from: t */
    public static final String f12375t = String.valueOf(Integer.MAX_VALUE);

    /* renamed from: a */
    public Context f12376a;

    /* renamed from: b */
    public C12853c f12377b;

    /* renamed from: c */
    public BaseAdapter f12378c;

    /* renamed from: d */
    public ArrayList<Map<EnumC14329a, String>> f12379d;

    /* renamed from: e */
    public Subscription f12380e;
    @BindView(R$id.btn_fab)
    public Button mBtnFab;
    @BindView(R$id.iv_coldstart_close)
    public View mColdStartClose;
    @BindView(R$id.ll_coldstart_container)
    public View mColdStartContainer;
    @BindView(R$id.rv_coldstart)
    public RecyclerView mColdStartList;
    @BindView(R$id.sp_filter)
    public WSpinner mFilterSpinner;
    @BindView(R$id.rl_listview)
    public View mListContainer;
    @BindView(R$id.ll_searching)
    public LinearLayout mLlSearching;
    @BindView(R$id.rv_favorite_list)
    public RecyclerView mRvFavoriteList;
    @BindView(R$id.sp_sort)
    public WSpinner mSortSpinner;

    /* renamed from: n */
    public Dialog f12389n;

    /* renamed from: o */
    public String f12390o;

    /* renamed from: f */
    public boolean f12381f = false;

    /* renamed from: g */
    public boolean f12382g = false;

    /* renamed from: h */
    public boolean f12383h = false;

    /* renamed from: i */
    public boolean f12384i = true;

    /* renamed from: j */
    public boolean f12385j = true;

    /* renamed from: k */
    public int f12386k = 0;

    /* renamed from: l */
    public int f12387l = 0;

    /* renamed from: m */
    public volatile int f12388m = -1;

    /* renamed from: p */
    public C13929c f12391p = new C13929c(this, false);

    /* renamed from: q */
    public Handler f12392q = new HandlerC5005e();

    /* renamed from: r */
    public volatile int[] f12393r = {-1, -1};

    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$ColdStartViewHolder.class */
    public class ColdStartViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a */
        public C11086o f12394a;

        /* renamed from: b */
        public String f12395b;
        @BindView(R$id.iv_fav_count)
        public ImageView ivFavCount;
        @BindView(R$id.iv_metaphor)
        public RoundImageView ivMetaphor;
        @BindView(R$id.iv_type)
        public ImageView ivType;
        @BindView(R$id.tv_fav_count)
        public TextView tvFavCount;
        @BindView(R$id.tv_frequency)
        public TextView tvFrequency;
        @BindView(R$id.tv_name)
        public TextView tvName;

        /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$ColdStartViewHolder$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$ColdStartViewHolder$a.class */
        public class C4994a extends C11086o {
            public C4994a(FavoriteFragment favoriteFragment) {
            }

            @Override // p459j.p460a.p461a0.C11040b
            /* renamed from: b */
            public void mo1836b(String str, NumberInfo numberInfo) {
                if (TextUtils.equals(ColdStartViewHolder.this.f12395b, str)) {
                    RowInfo a = RowInfo.m28256a(str, numberInfo);
                    ColdStartViewHolder.this.tvName.setText((a == null || a.m28224h() == null || TextUtils.isEmpty(a.m28224h().name)) ? ColdStartViewHolder.this.f12395b : a.m28224h().name);
                    CallUtils.m26576a(ColdStartViewHolder.this.ivMetaphor, (ImageView) null, a, (String) null, CallUtils.EnumC4993l.MAIN_CALL_LOG_FRAGMENT);
                }
            }
        }

        public ColdStartViewHolder(FavoriteFragment favoriteFragment, View view) {
            super(view);
            ButterKnife.bind(this, view);
            this.f12394a = new C4994a(favoriteFragment);
        }
    }

    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$ColdStartViewHolder_ViewBinding.class */
    public class ColdStartViewHolder_ViewBinding implements Unbinder {

        /* renamed from: a */
        public ColdStartViewHolder f12397a;

        @UiThread
        public ColdStartViewHolder_ViewBinding(ColdStartViewHolder coldStartViewHolder, View view) {
            this.f12397a = coldStartViewHolder;
            coldStartViewHolder.tvName = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_name, "field 'tvName'", TextView.class);
            coldStartViewHolder.tvFrequency = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_frequency, "field 'tvFrequency'", TextView.class);
            coldStartViewHolder.tvFavCount = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_fav_count, "field 'tvFavCount'", TextView.class);
            coldStartViewHolder.ivMetaphor = (RoundImageView) Utils.findRequiredViewAsType(view, R$id.iv_metaphor, "field 'ivMetaphor'", RoundImageView.class);
            coldStartViewHolder.ivType = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_type, "field 'ivType'", ImageView.class);
            coldStartViewHolder.ivFavCount = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_fav_count, "field 'ivFavCount'", ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ColdStartViewHolder coldStartViewHolder = this.f12397a;
            if (coldStartViewHolder != null) {
                this.f12397a = null;
                coldStartViewHolder.tvName = null;
                coldStartViewHolder.tvFrequency = null;
                coldStartViewHolder.tvFavCount = null;
                coldStartViewHolder.ivMetaphor = null;
                coldStartViewHolder.ivType = null;
                coldStartViewHolder.ivFavCount = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$a.class */
    public class DialogInterface$OnClickListenerC4995a implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4995a(FavoriteFragment favoriteFragment) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$a0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$a0.class */
    public class View$OnClickListenerC4996a0 implements View.OnClickListener {
        public View$OnClickListenerC4996a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FavoriteFragment.this.m26499a(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$b.class */
    public class DialogInterface$OnClickListenerC4997b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f12399a;

        /* renamed from: b */
        public final /* synthetic */ String f12400b;

        public DialogInterface$OnClickListenerC4997b(String str, String str2) {
            this.f12399a = str;
            this.f12400b = str2;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C11052i.m10328e().m10344a(this.f12399a);
            C13625a.m3809a(FavoriteFragment.this.f12376a, this.f12400b, this.f12399a);
            dialogInterface.dismiss();
            C14687h.m861a(FavoriteFragment.this.f12376a, FavoriteFragment.this.m6059b(R$string.toast_delete_from_wishlist), 1).m858c();
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$b0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$b0.class */
    public class C4998b0 implements RecyclerView.OnItemTouchListener {

        /* renamed from: a */
        public GestureDetector f12402a;

        /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$b0$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$b0$a.class */
        public class C4999a extends GestureDetector.SimpleOnGestureListener {
            public C4999a() {
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                View findChildViewUnder;
                C12853c.C12854a aVar;
                int i;
                FavoriteFragment.this.f12388m = -1;
                FavoriteFragment favoriteFragment = FavoriteFragment.this;
                if (favoriteFragment.mRvFavoriteList != null && favoriteFragment.getActivity() != null && !FavoriteFragment.this.getActivity().isFinishing() && (findChildViewUnder = FavoriteFragment.this.mRvFavoriteList.findChildViewUnder(motionEvent.getX(), motionEvent.getY())) != null && (aVar = (C12853c.C12854a) FavoriteFragment.this.mRvFavoriteList.getChildViewHolder(findChildViewUnder)) != null && aVar.f29076s != null && !TextUtils.isEmpty(aVar.f29079v) && !TextUtils.isEmpty(aVar.f29078u) && FavoriteFragment.this.f12379d != null && (i = aVar.f29080w) >= 0 && i < FavoriteFragment.this.f12379d.size()) {
                    FavoriteFragment.this.f12388m = aVar.f29080w;
                    FavoriteFragment.this.getActivity().openContextMenu(FavoriteFragment.this.mRvFavoriteList);
                    FavoriteFragment.this.mRvFavoriteList.performHapticFeedback(0);
                    C12861f.m5126b("click_area", "long");
                }
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return true;
            }
        }

        public C4998b0() {
            this.f12402a = new GestureDetector(FavoriteFragment.this.getActivity(), new C4999a());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            View findChildViewUnder;
            C12853c.C12854a aVar;
            int i;
            if (FavoriteFragment.this.getActivity() == null || FavoriteFragment.this.getActivity().isFinishing() || !this.f12402a.onTouchEvent(motionEvent) || (findChildViewUnder = recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY())) == null || (aVar = (C12853c.C12854a) recyclerView.getChildViewHolder(findChildViewUnder)) == null || aVar.f29076s == null || TextUtils.isEmpty(aVar.f29079v) || TextUtils.isEmpty(aVar.f29078u) || FavoriteFragment.this.f12379d == null || (i = aVar.f29080w) < 0 || i >= FavoriteFragment.this.f12379d.size()) {
                return false;
            }
            View a = FavoriteFragment.this.m26498a(findChildViewUnder, motionEvent.getRawX(), motionEvent.getRawY());
            RowInfo.m28235c(aVar.f29079v, C11052i.m10328e().m10327e(aVar.f29078u));
            switch (a.getId()) {
                case R$id.favorite_list_call_iftv /* 2131362281 */:
                    if (!a.isEnabled()) {
                        return true;
                    }
                    C14299q.m1787G();
                    C12861f.m5126b("click_area", NotificationCompat.CATEGORY_CALL);
                    C14217x3.m2145e(FavoriteFragment.this.getActivity(), aVar.f29079v, 6);
                    return true;
                case R$id.iv_more /* 2131362493 */:
                case R$id.rl_more_container /* 2131363086 */:
                    if (FavoriteFragment.this.f12377b == null) {
                        return true;
                    }
                    String str = aVar.f29076s.get(EnumC14329a.PARENT_ID);
                    if (TextUtils.isEmpty(str)) {
                        return true;
                    }
                    FavoriteFragment.this.f12377b.m5141a(str);
                    return true;
                case R$id.iv_pin /* 2131362500 */:
                    String str2 = aVar.f29076s.get(EnumC14329a.PARENT_ID);
                    if (TextUtils.isEmpty(str2)) {
                        return true;
                    }
                    if (TextUtils.equals(aVar.f29076s.get(EnumC14329a.PINNED), "1")) {
                        C13625a.m3770k(FavoriteFragment.this.getActivity(), str2);
                        C14299q.m1676s("unpin");
                        C12861f.m5126b("click_area", "unpin");
                        return true;
                    }
                    C13625a.m3771j(FavoriteFragment.this.getActivity(), str2);
                    C14299q.m1676s("pin");
                    C12861f.m5126b("click_area", "pin");
                    return true;
                case R$id.tv_category /* 2131363420 */:
                    return false;
                default:
                    C14299q.m1785H();
                    C12861f.m5126b("click_area", "to_ndp");
                    FavoriteFragment favoriteFragment = FavoriteFragment.this;
                    favoriteFragment.startActivity(NumberDetailActivity.m26858a(favoriteFragment.getActivity(), aVar.f29079v, aVar.f29078u, null, "FROM_Favorite"));
                    return true;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean z) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$c.class */
    public class DialogInterface$OnClickListenerC5000c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f12405a;

        public DialogInterface$OnClickListenerC5000c(EditText editText) {
            this.f12405a = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C12861f.m5126b("action_complete", 0);
            ((InputMethodManager) FavoriteFragment.this.f12376a.getSystemService("input_method")).hideSoftInputFromWindow(this.f12405a.getWindowToken(), 0);
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$c0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$c0.class */
    public class HandlerC5001c0 extends HandlerC12947l {
        public HandlerC5001c0() {
        }

        @Override // p459j.p460a.p533l.HandlerC12947l
        /* renamed from: a */
        public void mo4944a(Object obj) {
            if (obj != null) {
                FavoriteFragment.this.m26473g(obj.toString());
            }
            FavoriteFragment.this.f12392q.sendEmptyMessage(0);
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$d.class */
    public class DialogInterface$OnClickListenerC5002d implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f12408a;

        /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$d$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$d$a.class */
        public class HandlerC5003a extends HandlerC12947l {
            public HandlerC5003a() {
            }

            @Override // p459j.p460a.p533l.HandlerC12947l
            /* renamed from: a */
            public void mo4944a(Object obj) {
                if (obj != null) {
                    FavoriteFragment.this.m26473g(obj.toString());
                }
            }
        }

        public DialogInterface$OnClickListenerC5002d(EditText editText) {
            this.f12408a = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C12860e.m5132a((Context) FavoriteFragment.this.getActivity(), C14108o4.m2474l(this.f12408a.getText().toString()), (String) null, false, FavoriteFragment.class.getSimpleName(), (HandlerC12947l) new HandlerC5003a());
            C12861f.m5126b("action_complete", 1);
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$d0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$d0.class */
    public class C5004d0 extends RecyclerView.Adapter<ColdStartViewHolder> {

        /* renamed from: a */
        public final List<C5006e0> f12411a;

        public C5004d0(@NonNull List<C5006e0> list) {
            this.f12411a = list;
        }

        /* renamed from: a */
        public void onBindViewHolder(ColdStartViewHolder coldStartViewHolder, int i) {
            coldStartViewHolder.f12395b = this.f12411a.get(i).f12414a;
            NumberInfo e = C11052i.m10328e().m10327e(coldStartViewHolder.f12395b);
            if (e == null || !e.m28296s0()) {
                coldStartViewHolder.tvName.setText(coldStartViewHolder.f12395b);
                C11052i.m10328e().m10340a(coldStartViewHolder.f12395b, coldStartViewHolder.f12394a, 0, EnumC11047e.Favorite);
            } else {
                RowInfo a = RowInfo.m28256a(coldStartViewHolder.f12395b, e);
                coldStartViewHolder.tvName.setText((a == null || a.m28224h() == null) ? coldStartViewHolder.f12395b : a.m28224h().name);
                CallUtils.m26576a(coldStartViewHolder.ivMetaphor, (ImageView) null, a, (String) null, CallUtils.EnumC4993l.MAIN_CALL_LOG_FRAGMENT);
            }
            coldStartViewHolder.tvFrequency.setText(String.valueOf(this.f12411a.get(i).f12415b));
            int i2 = 0;
            if (e != null) {
                i2 = 0;
                if (e.m28296s0()) {
                    i2 = 0;
                    if (e.whoscall != null) {
                        i2 = 0;
                        if (e.m28378R() != null) {
                            i2 = 0;
                            if (e.m28372X()) {
                                i2 = e.m28313k() + e.m28303p();
                            }
                        }
                    }
                }
            }
            coldStartViewHolder.tvFavCount.setText(String.valueOf(i2));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<C5006e0> list = this.f12411a;
            return list == null ? 0 : list.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public ColdStartViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            FavoriteFragment favoriteFragment = FavoriteFragment.this;
            return new ColdStartViewHolder(favoriteFragment, LayoutInflater.from(favoriteFragment.f12376a).inflate(R$layout.listitem_coldstart, (ViewGroup) null, false));
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$e.class */
    public class HandlerC5005e extends Handler {
        public HandlerC5005e() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            FavoriteFragment.this.m26479d(true);
            super.handleMessage(message);
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$e0 */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$e0.class */
    public class C5006e0 {

        /* renamed from: a */
        public final String f12414a;

        /* renamed from: b */
        public final int f12415b;

        public C5006e0(FavoriteFragment favoriteFragment, String str, String str2, int i, int i2) {
            this.f12414a = str;
            this.f12415b = i2;
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$f.class */
    public class C5007f implements Action1<Object> {
        public C5007f() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if (obj instanceof C14020h1) {
                FavoriteFragment.this.m26479d(((C14020h1) obj).f31456a);
            } else if (obj instanceof C14193v0) {
                FavoriteFragment.this.m26479d(true);
            } else if (obj instanceof C14186u0) {
                FavoriteFragment.this.m26479d(true);
            } else if (obj instanceof C14323z) {
                int i = ((C14323z) obj).f32077a;
                if (i == 0) {
                    C14299q.m1742b(0.0d);
                } else if (i == 1) {
                    C14299q.m1742b(1.0d);
                } else if (i == 2) {
                    C14299q.m1748a(0.0d);
                    FavoriteFragment.this.m26510K();
                } else if (i == 3) {
                    C14299q.m1748a(1.0d);
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$g.class */
    public class RunnableC5008g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f12417a;

        /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$g$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$g$a.class */
        public class RunnableC5009a implements Runnable {
            public RunnableC5009a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (FavoriteFragment.this.f12377b == null || FavoriteFragment.this.mRvFavoriteList.getAdapter() == null) {
                    FavoriteFragment favoriteFragment = FavoriteFragment.this;
                    favoriteFragment.f12377b = new C12853c(favoriteFragment.f12376a, FavoriteFragment.this.f12379d, TextUtils.equals(FavoriteGroupRealmObject.PARENDID_DELETED, RunnableC5008g.this.f12417a));
                    FavoriteFragment favoriteFragment2 = FavoriteFragment.this;
                    favoriteFragment2.mRvFavoriteList.setAdapter(favoriteFragment2.f12377b);
                } else {
                    FavoriteFragment.this.f12377b.m5140a(FavoriteFragment.this.f12379d, TextUtils.equals(FavoriteGroupRealmObject.PARENDID_DELETED, RunnableC5008g.this.f12417a));
                    FavoriteFragment.this.f12377b.notifyDataSetChanged();
                }
                FavoriteFragment.this.mRvFavoriteList.scrollToPosition(0);
                FavoriteFragment.this.mListContainer.setVisibility(0);
                FavoriteFragment.this.mLlSearching.setVisibility(8);
                FavoriteFragment.this.m26485c(8);
                FavoriteFragment.this.m26504Q();
                RunnableC5008g gVar = RunnableC5008g.this;
                FavoriteFragment.this.m26471h(gVar.f12417a);
                FavoriteFragment.this.m26503R();
            }
        }

        public RunnableC5008g(String str) {
            this.f12417a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            FavoriteFragment favoriteFragment = FavoriteFragment.this;
            favoriteFragment.f12379d = favoriteFragment.m26475f(this.f12417a);
            C12861f.m5126b("user_type", Integer.valueOf((FavoriteFragment.this.f12379d == null || FavoriteFragment.this.f12379d.size() <= 5) ? FavoriteFragment.this.f12379d == null ? 0 : FavoriteFragment.this.f12379d.size() : 6));
            FragmentActivity activity = FavoriteFragment.this.getActivity();
            if (activity != null && !activity.isFinishing()) {
                activity.runOnUiThread(new RunnableC5009a());
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$h.class */
    public class C5010h implements C12846b.AbstractC12852d {

        /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$h$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$h$a.class */
        public class DialogInterface$OnClickListenerC5011a implements DialogInterface.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ Map f12421a;

            public DialogInterface$OnClickListenerC5011a(Map map) {
                this.f12421a = map;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String str = (String) this.f12421a.get(EnumC14329a.PARENT_ID);
                FavoriteFragment.this.m26473g(FavoriteGroupRealmObject.PARENDID_DELETED);
                C13625a.m3812a(FavoriteFragment.this.f12376a, str);
                C11052i.m10328e().m10333c();
            }
        }

        public C5010h() {
        }

        @Override // p459j.p460a.p531k0.C12846b.AbstractC12852d
        /* renamed from: a */
        public void mo5147a(int i, Map<EnumC14329a, String> map) {
            if (TextUtils.equals(map.get(EnumC14329a.PARENT_ID), FavoriteFragment.f12375t)) {
                FavoriteFragment.this.m26491a((Map<EnumC14329a, String>) null);
                C12861f.m5126b("display_category", 3);
            } else {
                FavoriteFragment.this.m26473g(map.get(EnumC14329a.PARENT_ID));
            }
            FavoriteFragment.this.f12382g = false;
            FavoriteFragment.this.f12383h = false;
            FavoriteFragment favoriteFragment = FavoriteFragment.this;
            favoriteFragment.m26469i(favoriteFragment.m26509L());
            C14299q.m1795D();
        }

        @Override // p459j.p460a.p531k0.C12846b.AbstractC12852d
        /* renamed from: a */
        public void mo5146a(View view, int i, Map<EnumC14329a, String> map) {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(FavoriteFragment.this.f12376a);
            fVar.m979b(FavoriteFragment.this.m6059b(R$string.group_menu_delete_message));
            fVar.m977c(4);
            fVar.m978b(FavoriteFragment.this.m6059b(R$string.confirm), new DialogInterface$OnClickListenerC5011a(map));
            fVar.m984a(FavoriteFragment.this.m6059b(R$string.cancel), (DialogInterface.OnClickListener) null);
            fVar.m982b();
            C12861f.m5126b("display_category", 2);
        }

        @Override // p459j.p460a.p531k0.C12846b.AbstractC12852d
        /* renamed from: b */
        public void mo5145b(View view, int i, Map<EnumC14329a, String> map) {
            FavoriteFragment.this.m26491a(map);
            if (map != null && !TextUtils.isEmpty(map.get(EnumC14329a.PARENT_ID))) {
                C14299q.m1682q(C14099o3.m2510n().m2543a(map.get(EnumC14329a.PARENT_ID)) > 0 ? "whoscallcat" : "userCat");
                C12861f.m5126b("display_category", 1);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$i.class */
    public class C5012i extends BaseAdapter {

        /* renamed from: a */
        public final /* synthetic */ int[] f12423a;

        public C5012i(int[] iArr) {
            this.f12423a = iArr;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f12423a.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return FavoriteFragment.this.getString(R$string.favorite_display_order);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = LayoutInflater.from(FavoriteFragment.this.getActivity()).inflate(R$layout.mp_spinner_dropdownitem_favorite_sort, viewGroup, false);
            }
            if (this.f12423a[i] == 0) {
                view2.findViewById(R$id.ll_sort_item_container).setVisibility(8);
                view2.findViewById(R$id.ll_divider_container).setVisibility(0);
            } else {
                view2.findViewById(R$id.ll_sort_item_container).setVisibility(0);
                view2.findViewById(R$id.ll_divider_container).setVisibility(8);
                int a = C13915b3.m3066a("category_sort_type", 1);
                int a2 = C13915b3.m3066a("favorite_sort_type", 1);
                TextView textView = (TextView) view2.findViewById(16908308);
                ImageView imageView = (ImageView) view2.findViewById(R$id.iv_sort);
                textView.setText(this.f12423a[i]);
                if ((i == 0 && (a == 0 || a == 1)) || ((i == 1 && (a == 2 || a == 3)) || ((i == 3 && (a2 == 0 || a2 == 1)) || (i == 4 && (a2 == 2 || a2 == 3))))) {
                    textView.setTextColor(Color.parseColor("#ff1cbd3a"));
                    imageView.setVisibility(0);
                    imageView.setImageResource(((i == 0 && a == 0) || (i == 1 && a == 2) || ((i == 3 && a2 == 0) || (i == 4 && a2 == 2))) ? R$drawable.icon_arrow_up : R$drawable.icon_arrow_down);
                } else {
                    textView.setTextColor(Color.parseColor("#ff222222"));
                    imageView.setVisibility(4);
                }
            }
            return view2;
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$j.class */
    public class C5013j implements AdapterView.OnItemClickListener {
        public C5013j() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int i2 = 2;
            if (i != 2) {
                int a = C13915b3.m3066a("category_sort_type", 1);
                int a2 = C13915b3.m3066a("favorite_sort_type", 1);
                int i3 = 0;
                int i4 = 0;
                if (i == 0) {
                    if (a != 1) {
                        i4 = 1;
                    }
                    C13915b3.m3048d("category_sort_type", i4);
                } else if (i == 1) {
                    C13915b3.m3048d("category_sort_type", a == 2 ? 3 : 2);
                } else if (i == 3) {
                    if (a2 != 1) {
                        i3 = 1;
                    }
                    C13915b3.m3048d("favorite_sort_type", i3);
                } else if (i == 4) {
                    C13915b3.m3048d("favorite_sort_type", a2 == 2 ? 3 : 2);
                }
                int a3 = C13915b3.m3066a("category_sort_type", 1);
                C14299q.m1679r(a3 == 0 ? "bytime_asc" : a3 == 1 ? "bytime_desc" : a3 == 2 ? "byname_asc" : "byname_desc");
                if (a3 == 0) {
                    i2 = 1;
                } else if (1 != a3) {
                    i2 = 2 == a3 ? 3 : 4;
                }
                C12861f.m5126b("display_order", Integer.valueOf(i2));
                FavoriteFragment favoriteFragment = FavoriteFragment.this;
                favoriteFragment.m26469i(favoriteFragment.m26509L());
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$k */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$k.class */
    public class C5014k extends RecyclerView.OnScrollListener {

        /* renamed from: a */
        public int f12426a = -1;

        /* renamed from: b */
        public final int f12427b = C14217x3.m2201a(40.0f);

        /* renamed from: c */
        public final int f12428c = C14217x3.m2201a(12.0f);

        public C5014k() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            LinearLayoutManager linearLayoutManager;
            View view;
            super.onScrolled(recyclerView, i, i2);
            if (i2 != 0 && (linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager()) != null && (view = FavoriteFragment.this.mColdStartContainer) != null && view.getVisibility() != 8) {
                if (this.f12426a == -1 && recyclerView != null) {
                    recyclerView.getLocationOnScreen(FavoriteFragment.this.f12393r);
                    this.f12426a = FavoriteFragment.this.f12393r[1] + this.f12427b;
                }
                int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
                linearLayoutManager.findFirstCompletelyVisibleItemPosition();
                if (findFirstVisibleItemPosition == 0) {
                    View view2 = FavoriteFragment.this.mColdStartContainer;
                    view2.setTranslationY((((-view2.getMeasuredHeight()) + C12317g.m6394a(linearLayoutManager.findViewByPosition(0))) - this.f12426a) - this.f12428c);
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$l */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$l.class */
    public class C5015l implements WSpinner.AbstractC5326f {
        public C5015l(FavoriteFragment favoriteFragment) {
        }

        @Override // gogolook.callgogolook2.view.widget.WSpinner.AbstractC5326f
        /* renamed from: a */
        public void mo5148a() {
            C14299q.m1789F();
            C12861f.m5126b("click_area", "order_menu");
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$m */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$m.class */
    public class C5016m implements Action1<List<C5006e0>> {
        public C5016m() {
        }

        /* renamed from: a */
        public void call(List<C5006e0> list) {
            if (list != null && list.size() >= 3) {
                FavoriteFragment favoriteFragment = FavoriteFragment.this;
                if (!(favoriteFragment.mColdStartContainer == null || favoriteFragment.getActivity() == null || FavoriteFragment.this.getActivity().isFinishing())) {
                    FavoriteFragment favoriteFragment2 = FavoriteFragment.this;
                    favoriteFragment2.mColdStartList.setLayoutManager(new LinearLayoutManager(favoriteFragment2.getActivity(), 0, false));
                    FavoriteFragment favoriteFragment3 = FavoriteFragment.this;
                    favoriteFragment3.mColdStartList.setAdapter(new C5004d0(list));
                    FavoriteFragment.this.m26485c(0);
                    return;
                }
            }
            FavoriteFragment favoriteFragment4 = FavoriteFragment.this;
            if (favoriteFragment4.mColdStartContainer != null) {
                favoriteFragment4.m26485c(8);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$n */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$n.class */
    public class C5017n implements Single.OnSubscribe<List<C5006e0>> {
        public C5017n() {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super List<C5006e0>> singleSubscriber) {
            FragmentActivity activity = FavoriteFragment.this.getActivity();
            if (activity == null || activity.isFinishing() || activity.getContentResolver() == null || FavoriteFragment.this.mColdStartContainer == null) {
                singleSubscriber.onSuccess(null);
            }
            List<C13224a> a = C13131j.m4543a(C13057d.m4679b(C13193p.m4437a("_status"), C13193p.m4438a(2), C13193p.m4439a(C13193p.EnumC13194a.NOT_EQUAL_TO), null, null));
            ArrayList arrayList = new ArrayList();
            if (a != null) {
                int i = 0;
                while (i < a.size()) {
                    int size = a.size();
                    int i2 = i + 1;
                    LogsGroupRealmObject a2 = a.get(size - i2).m4388a();
                    String e164 = a2.getE164();
                    i = i2;
                    if (!TextUtils.isEmpty(e164)) {
                        if (C14108o4.m2496a(e164, C14108o4.EnumC14110b.CALL)) {
                            i = i2;
                        } else {
                            NumberInfo e = C11052i.m10328e().m10327e(e164);
                            if (e == null) {
                                C11052i.m10328e().m10340a(e164, (AbstractC11045d) null, 0, EnumC11047e.Favorite);
                                i = i2;
                            } else {
                                RowInfo a3 = RowInfo.m28256a(e164, e);
                                i = i2;
                                if (a3 != null) {
                                    i = i2;
                                    if (a3.m28224h() == null) {
                                        continue;
                                    } else if (TextUtils.isEmpty(a3.m28224h().name)) {
                                        i = i2;
                                    } else {
                                        arrayList.add(new C5006e0(FavoriteFragment.this, e164, a2.getNumber(), a2.getType().intValue(), 4));
                                        i = i2;
                                        if (arrayList.size() >= 5) {
                                            break;
                                        }
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                    }
                }
            }
            singleSubscriber.onSuccess(arrayList);
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$o */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$o.class */
    public class HandlerC5018o extends HandlerC12947l {
        public HandlerC5018o() {
        }

        @Override // p459j.p460a.p533l.HandlerC12947l
        /* renamed from: a */
        public void mo4944a(Object obj) {
            if (obj != null) {
                FavoriteFragment.this.m26473g(obj.toString());
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$p */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$p.class */
    public class C5019p implements Action1<String> {
        public C5019p() {
        }

        /* renamed from: a */
        public void call(String str) {
            C14687h.m861a(FavoriteFragment.this.f12376a, str, 1).m858c();
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$q */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$q.class */
    public class C5020q implements Single.OnSubscribe<String> {

        /* renamed from: a */
        public final /* synthetic */ String f12434a;

        public C5020q(String str) {
            this.f12434a = str;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super String> singleSubscriber) {
            if (!C14132r.m2395d(this.f12434a) || FavoriteFragment.this.getString(R$string.group_none).equals(this.f12434a)) {
                singleSubscriber.onSuccess(FavoriteFragment.this.m6059b(R$string.groupname_exists));
                return;
            }
            FavoriteFragment.this.m26473g(this.f12434a);
            if (TextUtils.equals(FavoriteFragment.f12375t, FavoriteFragment.this.f12390o)) {
                C13625a.m3778g(FavoriteFragment.this.f12376a, this.f12434a);
                singleSubscriber.onSuccess(FavoriteFragment.this.m6059b(R$string.new_group_successful));
                return;
            }
            C13625a.m3780f(FavoriteFragment.this.f12376a, FavoriteFragment.this.f12390o, this.f12434a);
            singleSubscriber.onSuccess(FavoriteFragment.this.m6059b(R$string.rename_group_successful));
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$r */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$r.class */
    public class C5021r implements Action1<Map<String, Integer>> {
        public C5021r() {
        }

        /* renamed from: a */
        public void call(Map<String, Integer> map) {
            if (map == null) {
                FavoriteFragment.this.m26501T();
                return;
            }
            boolean z = map.size() > 0;
            C13673f fVar = new C13673f();
            fVar.f30648b = "in_app_dialog";
            fVar.f30652f = "https://s3-ap-northeast-1.amazonaws.com/whoscallclient/dialog/in_app_dialog_fav.png";
            fVar.f30653g = null;
            fVar.f30656j = new C13673f.C13676c();
            fVar.f30656j.f30675c = true;
            fVar.f30657k = new C13673f.C13675b();
            fVar.f30657k.f30675c = true;
            fVar.f30658l = new C13673f.C13675b();
            C13673f.C13675b bVar = fVar.f30658l;
            bVar.f30675c = true;
            fVar.f30667u = 1;
            String str = "{Favorite_intro_old_content_TW}";
            if (z) {
                fVar.f30649c = "Favorite_tw";
                fVar.f30650d = "{Favorite_intro_old_content_TW}";
                fVar.f30651e = "{Favorite_intro_old_subcontent_TW}";
                C13673f.C13676c cVar = fVar.f30656j;
                cVar.f30676d = "{Favorite_intro_old_action_TW}";
                cVar.f30674b = "whoscall://goto?page=favorite&action=auto_categorize&type=2";
                fVar.f30657k.f30674b = "whoscall://goto?page=favorite&action=auto_categorize&type=0";
                bVar.f30674b = "whoscall://goto?page=favorite&action=auto_categorize&type=0";
            } else {
                fVar.f30649c = "Favorite_global";
                if (!C13891a.m3158e()) {
                    str = "{Favorite_intro_old_content_global}";
                }
                fVar.f30650d = str;
                C13673f.C13676c cVar2 = fVar.f30656j;
                cVar2.f30676d = "{Favorite_intro_old_action_global}";
                cVar2.f30674b = "whoscall://goto?page=favorite&action=auto_categorize&type=3";
                fVar.f30657k.f30674b = "whoscall://goto?page=favorite&action=auto_categorize&type=1";
                fVar.f30658l.f30674b = "whoscall://goto?page=favorite&action=auto_categorize&type=1";
            }
            DialogC13661d dVar = new DialogC13661d(FavoriteFragment.this.getActivity(), fVar);
            if (!dVar.m3733b()) {
                dVar.show();
                C14132r.m2394e();
                C14299q.m1736c(z ? 0.0d : 1.0d);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$s */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$s.class */
    public class C5022s implements Single.OnSubscribe<Map<String, Integer>> {
        public C5022s(FavoriteFragment favoriteFragment) {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Map<String, Integer>> singleSubscriber) {
            singleSubscriber.onSuccess(C13891a.m3158e() ? C14132r.m2403a() : null);
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$t */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$t.class */
    public class C5023t implements Action1<Map<String, Integer>> {

        /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$t$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$t$a.class */
        public class DialogInterface$OnClickListenerC5024a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC5024a(C5023t tVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C14299q.m1801B();
            }
        }

        /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$t$b */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$t$b.class */
        public class DialogInterface$OnClickListenerC5025b implements DialogInterface.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ Map f12438a;

            /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$t$b$a */
            /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$t$b$a.class */
            public class C5026a implements Action1<Boolean> {
                public C5026a() {
                }

                /* renamed from: a */
                public void call(Boolean bool) {
                    C13915b3.m3048d("auto_categorize_status", 2);
                    FavoriteFragment.this.m26479d(true);
                    C11052i.m10328e().m10333c();
                    C13625a.m3821a(FavoriteFragment.this.getActivity(), 6);
                    C13625a.m3821a(FavoriteFragment.this.getActivity(), 7);
                }
            }

            /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$t$b$b */
            /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$t$b$b.class */
            public class C5027b implements Single.OnSubscribe<Boolean> {
                public C5027b() {
                }

                /* renamed from: a */
                public void call(SingleSubscriber<? super Boolean> singleSubscriber) {
                    singleSubscriber.onSuccess(Boolean.valueOf(C13625a.m3802a(DialogInterface$OnClickListenerC5025b.this.f12438a)));
                }
            }

            public DialogInterface$OnClickListenerC5025b(Map map) {
                this.f12438a = map;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Single.create(new C5027b()).subscribeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C5026a(), C14081m3.m2611a());
                C14299q.m1798C();
            }
        }

        public C5023t() {
        }

        /* renamed from: a */
        public void call(Map<String, Integer> map) {
            if (!(map == null || map.size() == 0)) {
                map.size();
                HashSet<Integer> hashSet = new HashSet(map.values());
                StringBuilder sb = new StringBuilder();
                for (Integer num : hashSet) {
                    String a = C14099o3.m2510n().m2546a(num.intValue());
                    if (!TextUtils.isEmpty(a)) {
                        sb.append(a + UserProfile.CARD_CATE_SEPARATOR);
                    }
                }
                sb.setLength(sb.length() > 2 ? sb.length() - 2 : sb.length());
                DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(FavoriteFragment.this.f12376a);
                fVar.m979b(FavoriteFragment.this.m6059b(R$string.Favorite_intro_old_confirm_content) + "\n" + sb.toString());
                fVar.m977c(1);
                fVar.m978b(FavoriteFragment.this.m6059b(R$string.Favorite_intro_old_confirm_content_proceed), new DialogInterface$OnClickListenerC5025b(map));
                fVar.m984a(FavoriteFragment.this.m6059b(R$string.Favorite_intro_old_confirm_content_cancel), new DialogInterface$OnClickListenerC5024a(this));
                fVar.m982b();
                C13915b3.m3057b("auto_categorize_dialog_ask_time", System.currentTimeMillis());
                C13915b3.m3048d("auto_categorize_dialog_display_times", C13915b3.m3066a("auto_categorize_dialog_display_times", 0) + 1);
                C14299q.m1731d(1.0d);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$u */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$u.class */
    public class C5028u extends RecyclerView.ItemDecoration {

        /* renamed from: a */
        public final int f12442a = C14217x3.m2201a(40.0f);

        /* renamed from: b */
        public final int f12443b = C14217x3.m2201a(12.0f);

        /* renamed from: c */
        public final int f12444c = C14217x3.m2201a(90.0f);

        public C5028u() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            int i;
            View view2;
            if (recyclerView != null && view != null && recyclerView.getAdapter() != null) {
                int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
                int itemCount = recyclerView.getAdapter().getItemCount();
                C12853c.C12854a aVar = (C12853c.C12854a) recyclerView.getChildViewHolder(view);
                if (childAdapterPosition >= 0 && childAdapterPosition < itemCount && aVar != null) {
                    if (childAdapterPosition == 0) {
                        int i2 = this.f12442a;
                        View view3 = FavoriteFragment.this.mColdStartContainer;
                        i = i2 + ((view3 == null || view3.getVisibility() == 8) ? 0 : this.f12443b + FavoriteFragment.this.mColdStartContainer.getMeasuredHeight());
                    } else {
                        i = aVar.f29060c.getVisibility() == 0 ? this.f12443b : 0;
                    }
                    rect.set(0, i, 0, (childAdapterPosition == itemCount - 1 && ((view2 = FavoriteFragment.this.mColdStartContainer) == null || view2.getVisibility() == 8)) ? this.f12444c : 0);
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$v */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$v.class */
    public class C5029v implements Single.OnSubscribe<Map<String, Integer>> {
        public C5029v(FavoriteFragment favoriteFragment) {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Map<String, Integer>> singleSubscriber) {
            singleSubscriber.onSuccess(C14132r.m2403a());
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$w */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$w.class */
    public class View$OnClickListenerC5030w implements View.OnClickListener {
        public View$OnClickListenerC5030w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FavoriteFragment.this.m26485c(8);
            FavoriteFragment.this.f12383h = true;
            C13915b3.m3057b("cold_start_close_time", System.currentTimeMillis());
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$x */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$x.class */
    public class C5031x extends RecyclerView.ItemDecoration {

        /* renamed from: a */
        public final int f12447a = C14217x3.m2201a(16.0f);

        /* renamed from: b */
        public final int f12448b = C14217x3.m2201a(8.0f);

        public C5031x(FavoriteFragment favoriteFragment) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            if (recyclerView != null && view != null && recyclerView.getAdapter() != null) {
                int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
                int itemCount = recyclerView.getAdapter().getItemCount();
                if (childAdapterPosition >= 0 && childAdapterPosition < itemCount) {
                    rect.set(childAdapterPosition == 0 ? this.f12447a : 0, 0, childAdapterPosition == itemCount - 1 ? this.f12447a : this.f12448b, 0);
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$y */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$y.class */
    public class C5032y implements RecyclerView.OnItemTouchListener {

        /* renamed from: a */
        public GestureDetector f12449a;

        /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$y$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$y$a.class */
        public class C5033a extends GestureDetector.SimpleOnGestureListener {
            public C5033a(C5032y yVar) {
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                super.onLongPress(motionEvent);
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return true;
            }
        }

        /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$y$b */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$y$b.class */
        public class HandlerC5034b extends HandlerC12947l {

            /* renamed from: a */
            public final /* synthetic */ boolean f12451a;

            public HandlerC5034b(boolean z) {
                this.f12451a = z;
            }

            @Override // p459j.p460a.p533l.HandlerC12947l
            /* renamed from: a */
            public void mo4944a(Object obj) {
                FavoriteFragment.this.f12381f = false;
                if (obj != null) {
                    FavoriteFragment.this.f12382g = true;
                    FavoriteFragment.this.m26479d(true);
                    C14299q.m1734c("FavRecom", TextUtils.equals("0", (String) obj) ? 2.0d : 0.0d);
                    C14299q.m1688o(this.f12451a ? "contact" : "noncontact");
                }
            }
        }

        public C5032y() {
            this.f12449a = new GestureDetector(FavoriteFragment.this.getActivity(), new C5033a(this));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            View findChildViewUnder;
            ColdStartViewHolder coldStartViewHolder;
            if (!this.f12449a.onTouchEvent(motionEvent) || (findChildViewUnder = recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY())) == null || (coldStartViewHolder = (ColdStartViewHolder) recyclerView.getChildViewHolder(findChildViewUnder)) == null || TextUtils.isEmpty(coldStartViewHolder.f12395b)) {
                return false;
            }
            String str = coldStartViewHolder.f12395b;
            TextView textView = coldStartViewHolder.tvFrequency;
            boolean z = false;
            if (textView != null) {
                z = false;
                if (TextUtils.equals(textView.getText(), "0")) {
                    z = true;
                }
            }
            FavoriteFragment.this.f12381f = true;
            C12860e.m5132a((Context) FavoriteFragment.this.getActivity(), str, (String) null, false, "ColdStartList", (HandlerC12947l) new HandlerC5034b(z));
            C12861f.m5126b("click_area", "rec_m");
            FavoriteFragment.m26468j(FavoriteFragment.this);
            return true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean z) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        }
    }

    /* renamed from: gogolook.callgogolook2.phonebook.FavoriteFragment$z */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment$z.class */
    public class C5035z extends RecyclerView.OnScrollListener {
        public C5035z() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
            if (i2 != 0) {
                FavoriteFragment.m26467k(FavoriteFragment.this);
            }
        }
    }

    /* renamed from: j */
    public static /* synthetic */ int m26468j(FavoriteFragment favoriteFragment) {
        int i = favoriteFragment.f12386k;
        favoriteFragment.f12386k = i + 1;
        return i;
    }

    /* renamed from: k */
    public static /* synthetic */ int m26467k(FavoriteFragment favoriteFragment) {
        int i = favoriteFragment.f12387l;
        favoriteFragment.f12387l = i + 1;
        return i;
    }

    /* renamed from: J */
    public final void m26511J() {
        if (C14132r.m2398c()) {
            m26510K();
        }
    }

    /* renamed from: K */
    public final void m26510K() {
        if (C13891a.m3158e()) {
            Single.create(new C5029v(this)).subscribeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C5023t(), C14081m3.m2611a());
        }
    }

    /* renamed from: L */
    public final String m26509L() {
        return C13915b3.m3056b("KEY_CURRENT_CATEGORY_ID", FavoriteGroupRealmObject.PARENDID_DELETED);
    }

    /* renamed from: M */
    public final void m26508M() {
        Dialog dialog;
        if (getActivity() != null && !getActivity().isFinishing() && (dialog = this.f12389n) != null && dialog.isShowing()) {
            this.f12389n.dismiss();
        }
    }

    /* renamed from: N */
    public final void m26507N() {
        if (getActivity() != null && !getActivity().isFinishing() && !C14320y3.m1583m() && C13679g.m3691a().m3685b(getContext(), C13673f.EnumC13678e.IN_APP_DIALOG) == null && C14217x3.m2137h(getActivity())) {
            if (C14132r.m2400b() && !m26501T()) {
                m26511J();
            }
            if (!C14132r.m2400b()) {
                Single.create(new C5022s(this)).subscribeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C5021r(), C14081m3.m2611a());
            }
        }
    }

    /* renamed from: O */
    public final ArrayList<Map<EnumC14329a, String>> m26506O() {
        int i;
        ArrayList<Map<EnumC14329a, String>> arrayList = new ArrayList<>();
        HashMap hashMap = new HashMap();
        List<FavoriteGroupRealmObject> a = C13057d.m4699a(C13915b3.m3066a("category_sort_type", 1));
        if (a == null) {
            return arrayList;
        }
        int i2 = 0;
        for (FavoriteGroupRealmObject favoriteGroupRealmObject : a) {
            if (favoriteGroupRealmObject.getFavoriteListRealmObjects() != null) {
                Iterator<FavoriteListRealmObject> it = favoriteGroupRealmObject.getFavoriteListRealmObjects().iterator();
                int i3 = 0;
                while (true) {
                    i = i3;
                    if (!it.hasNext()) {
                        break;
                    } else if (it.next().get_status().intValue() != 2) {
                        i3++;
                    }
                }
            } else {
                i = 0;
            }
            hashMap.put(favoriteGroupRealmObject.get_name(), Integer.valueOf(i));
            if (!favoriteGroupRealmObject.get_name().equals("0")) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put(EnumC14329a.GROUP_NAME, favoriteGroupRealmObject.get_name());
                hashMap2.put(EnumC14329a.IS_GROUP_DEFAULT, "0");
                hashMap2.put(EnumC14329a.GROUP_COUNT, String.valueOf(i));
                hashMap2.put(EnumC14329a.PARENT_ID, favoriteGroupRealmObject.get_name());
                arrayList.add(hashMap2);
                i2 += i;
            }
        }
        int intValue = hashMap.containsKey("0") ? ((Integer) hashMap.get("0")).intValue() : 0;
        HashMap hashMap3 = new HashMap();
        hashMap3.put(EnumC14329a.GROUP_NAME, m6059b(R$string.favorite_menu_group_all));
        hashMap3.put(EnumC14329a.IS_GROUP_DEFAULT, "0");
        hashMap3.put(EnumC14329a.GROUP_COUNT, String.valueOf(i2 + intValue));
        hashMap3.put(EnumC14329a.PARENT_ID, FavoriteGroupRealmObject.PARENDID_DELETED);
        arrayList.add(0, hashMap3);
        HashMap hashMap4 = new HashMap();
        hashMap4.put(EnumC14329a.GROUP_NAME, m6059b(R$string.favorite_menu_group_none));
        hashMap4.put(EnumC14329a.IS_GROUP_DEFAULT, "0");
        hashMap4.put(EnumC14329a.GROUP_COUNT, String.valueOf(intValue));
        hashMap4.put(EnumC14329a.PARENT_ID, "0");
        arrayList.add(hashMap4);
        HashMap hashMap5 = new HashMap();
        hashMap5.put(EnumC14329a.GROUP_NAME, m6059b(R$string.favorite_menu_create));
        hashMap5.put(EnumC14329a.IS_GROUP_DEFAULT, "0");
        hashMap5.put(EnumC14329a.GROUP_COUNT, "");
        hashMap5.put(EnumC14329a.PARENT_ID, f12375t);
        arrayList.add(hashMap5);
        return arrayList;
    }

    /* renamed from: P */
    public void m26505P() {
        DialogC12864a aVar = new DialogC12864a(this.f12376a);
        aVar.setTitle(m6059b(R$string.favorite_add_input_title));
        aVar.m5112c();
        EditText a = aVar.m5118a();
        a.setHint(m6059b(R$string.favorite_add_input_enline));
        a.setInputType(3);
        aVar.m5113b(m6059b(R$string.confirm), new DialogInterface$OnClickListenerC5002d(a));
        aVar.m5116a(m6059b(R$string.cancel), new DialogInterface$OnClickListenerC5000c(a));
        aVar.show();
        aVar.m5115a(false);
    }

    /* renamed from: Q */
    public final void m26504Q() {
        if ((!this.f12383h && this.f12379d != null && (System.currentTimeMillis() - C13915b3.m3065a("cold_start_close_time", 0L) >= 1209600000 || this.f12379d.size() <= 1)) || this.f12382g) {
            Single.create(new C5017n()).subscribeOn(Schedulers.from(C14174u.m2297g())).observeOn(AndroidSchedulers.mainThread()).subscribe(new C5016m(), C14081m3.m2611a());
        }
    }

    /* renamed from: R */
    public final void m26503R() {
        if (getActivity() != null && !getActivity().isFinishing()) {
            BaseAdapter baseAdapter = this.f12378c;
            if (baseAdapter != null) {
                baseAdapter.notifyDataSetChanged();
                return;
            }
            int[] iArr = {R$string.favorite_display_category_time, R$string.favorite_display_category_name};
            int a = m26490a(iArr);
            int a2 = C14217x3.m2201a(90.5f);
            this.mSortSpinner.m25681a(true);
            this.mSortSpinner.m25671e(a + a2);
            this.mSortSpinner.m25667g(R$layout.mp_spinner_favorite_sort);
            this.mSortSpinner.m25689a(R$string.favorite_display_order);
            this.mSortSpinner.m25676c(8);
            this.mSortSpinner.m25679b(8);
            this.f12378c = new C5012i(iArr);
            this.mSortSpinner.m25685a(this.f12378c);
            this.mSortSpinner.m25686a(new C5013j());
            this.mSortSpinner.m25684a(new C5015l(this));
        }
    }

    /* renamed from: S */
    public final void m26502S() {
        this.f12380e = C14037j3.m2731a().mo2703a((Action1) new C5007f());
    }

    /* renamed from: T */
    public final boolean m26501T() {
        m26508M();
        boolean z = false;
        if (!C13915b3.m3062a("pin_hint_shown", false)) {
            z = false;
            if (TextUtils.equals(FavoriteGroupRealmObject.PARENDID_DELETED, m26509L())) {
                ArrayList<Map<EnumC14329a, String>> arrayList = this.f12379d;
                z = false;
                if (arrayList != null) {
                    z = false;
                    if (arrayList.size() > 0) {
                        z = false;
                        if (this.f12379d.get(0) != null) {
                            z = false;
                            if (!TextUtils.isEmpty(this.f12379d.get(0).get(EnumC14329a.PARENT_ID))) {
                                z = false;
                                if (!TextUtils.equals(this.f12379d.get(0).get(EnumC14329a.PARENT_ID), "0")) {
                                    z = false;
                                    if (getActivity() != null) {
                                        if (getActivity().isFinishing()) {
                                            z = false;
                                        } else {
                                            int a = C14217x3.m2201a(170.0f);
                                            View view = this.mColdStartContainer;
                                            int i = 0;
                                            if (view != null) {
                                                i = 0;
                                                if (view.getVisibility() == 0) {
                                                    i = this.mColdStartContainer.getMeasuredHeight();
                                                }
                                            }
                                            this.f12389n = new DialogC11128h(getActivity(), a + i);
                                            this.f12389n.show();
                                            z = true;
                                            C13915b3.m3055b("pin_hint_shown", true);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: U */
    public final void m26500U() {
        Subscription subscription = this.f12380e;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f12380e.unsubscribe();
        }
    }

    /* renamed from: a */
    public final int m26490a(int[] iArr) {
        Paint paint = new Paint();
        paint.setTextSize(C14217x3.m2201a(14.0f));
        int i = -1;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            i = i;
            if (iArr[i2] > 0) {
                i = Math.max(i, (int) paint.measureText(getString(iArr[i2])));
            }
        }
        return i;
    }

    /* renamed from: a */
    public View m26498a(View view, float f, float f2) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                float translationX = ViewCompat.getTranslationX(childAt);
                float translationY = ViewCompat.getTranslationY(childAt);
                childAt.getLocationOnScreen(this.f12393r);
                if (childAt.getVisibility() == 0 && f >= this.f12393r[0] + translationX && f <= ((this.f12393r[0] + childAt.getRight()) - childAt.getLeft()) + translationX && f2 >= this.f12393r[1] + translationY && f2 <= ((this.f12393r[1] + childAt.getBottom()) - childAt.getTop()) + translationY) {
                    View view2 = childAt;
                    if (childAt instanceof ViewGroup) {
                        view2 = m26498a(childAt, f, f2);
                    }
                    return view2;
                }
            }
        }
        return view;
    }

    /* renamed from: a */
    public void m26499a(View view) {
        if (getActivity() != null && !getActivity().isFinishing()) {
            RelativeLayout relativeLayout = (RelativeLayout) getActivity().findViewById(R$id.rl_tutorial);
            if (relativeLayout != null && relativeLayout.isShown()) {
                C13915b3.m3055b("hasShownMainFavoriteTip", true);
                relativeLayout.setVisibility(8);
            }
            registerForContextMenu(view);
            getActivity().openContextMenu(view);
            unregisterForContextMenu(view);
        }
    }

    /* renamed from: a */
    public void m26491a(Map<EnumC14329a, String> map) {
        this.f12390o = (map == null || map.get(EnumC14329a.PARENT_ID).equalsIgnoreCase(f12375t)) ? f12375t : map.get(EnumC14329a.PARENT_ID);
        if (C14217x3.m2196a((Activity) getActivity())) {
            try {
                Intent intent = new Intent(getActivity(), FavoriteReportActivity.class);
                Bundle bundle = new Bundle();
                bundle.putString("editGroup", TextUtils.equals(this.f12390o, f12375t) ? "" : this.f12390o);
                bundle.putString("from", f12374s);
                bundle.putBoolean("forResult", true);
                intent.putExtras(bundle);
                startActivityForResult(intent, FragmentTransaction.TRANSIT_FRAGMENT_FADE);
            } catch (ActivityNotFoundException e) {
                C14080m2.m2612a((Throwable) e);
            } catch (NullPointerException e2) {
                C14217x3.m2156c(getActivity(), new Intent(getActivity(), MainActivity.class));
            }
        }
    }

    /* renamed from: c */
    public final void m26485c(int i) {
        if (this.mColdStartContainer != null && (getActivity() instanceof FavoriteActivity) && !getActivity().isFinishing() && isAdded() && isVisible()) {
            this.mColdStartContainer.setVisibility(i);
            this.mColdStartContainer.setTranslationY(0.0f);
            Button button = this.mBtnFab;
            int i2 = 8;
            if (i == 8) {
                i2 = 0;
            }
            button.setVisibility(i2);
            C12853c cVar = this.f12377b;
            if (cVar != null) {
                int itemCount = cVar.getItemCount();
                if (itemCount > 0) {
                    this.f12377b.notifyItemChanged(0);
                }
                if (itemCount > 1) {
                    this.f12377b.notifyItemChanged(itemCount - 1);
                }
            }
            if (i == 0 && this.f12385j) {
                this.f12385j = false;
                this.f12386k = 0;
                this.f12387l = 0;
                RecyclerView recyclerView = this.mColdStartList;
                C14299q.m1726e((recyclerView == null || recyclerView.getAdapter() == null) ? 0.0d : this.mColdStartList.getAdapter().getItemCount());
                C13915b3.m3048d("cold_start_display_times", C13915b3.m3066a("auto_categorize_dialog_display_times", 0) + 1);
            }
        }
    }

    /* renamed from: d */
    public void m26479d(boolean z) {
        if (this.f12376a != null) {
            String stringExtra = (getActivity() == null || getActivity().getIntent() == null) ? null : getActivity().getIntent().getStringExtra("parentId");
            if (stringExtra != null) {
                getActivity().getIntent().removeExtra("parentId");
                m26473g(stringExtra);
            }
            m26469i(m26509L());
        }
    }

    /* renamed from: e */
    public final Runnable m26477e(String str) {
        return new RunnableC5008g(str);
    }

    @NonNull
    /* renamed from: f */
    public final ArrayList<Map<EnumC14329a, String>> m26475f(String str) {
        ArrayList<Map<EnumC14329a, String>> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        List<FavoriteListRealmObject> a = C13057d.m4691a(str, C13915b3.m3066a("category_sort_type", 1), C13915b3.m3066a("favorite_sort_type", 1), str.equalsIgnoreCase(FavoriteGroupRealmObject.PARENDID_DELETED));
        if (a != null && !a.isEmpty()) {
            int i = -1;
            int i2 = -1;
            for (FavoriteListRealmObject favoriteListRealmObject : a) {
                String str2 = favoriteListRealmObject.get_e164();
                String str3 = favoriteListRealmObject.get_parentid();
                boolean a2 = C13057d.m4692a(str3);
                HashMap hashMap = new HashMap();
                String[] a3 = C13193p.m4437a("_e164", "_type", TagRealmObject.VISIBILITY);
                Object[] a4 = C13193p.m4438a(str2, 0, 1);
                C13193p.EnumC13194a aVar = C13193p.EnumC13194a.EQUAL_TO;
                List<TagRealmObject> a5 = C13198r.m4426a(a3, a4, C13193p.m4439a(aVar, aVar, aVar), "_name", Sort.ASCENDING);
                hashMap.put(EnumC14329a.NAME, (a5 == null || a5.isEmpty()) ? "" : a5.get(0).get_name());
                hashMap.put(EnumC14329a.NUMBER, C14108o4.m2493a(str2, true, false));
                hashMap.put(EnumC14329a.E164NUMBER, str2);
                hashMap.put(EnumC14329a.PARENT_ID, str3);
                hashMap.put(EnumC14329a.DATE, String.valueOf(favoriteListRealmObject.get_createtime()));
                hashMap.put(EnumC14329a.CONTACT_NAME, C14217x3.m2146e(this.f12376a, str2));
                hashMap.put(EnumC14329a.POST_TITLE, "post");
                hashMap.put(EnumC14329a.PINNED, a2 ? "1" : "0");
                if (TextUtils.equals("0", str3)) {
                    arrayList2.add(hashMap);
                    ((Map) arrayList2.get(0)).put(EnumC14329a.CATEGORY_FAVORITE_COUNT, String.valueOf(arrayList2.size()));
                } else {
                    if (arrayList.isEmpty() || !TextUtils.equals(arrayList.get(arrayList.size() - 1).get(EnumC14329a.PARENT_ID), str3)) {
                        i2 = arrayList.size();
                        i = 1;
                    } else {
                        i++;
                    }
                    arrayList.add(hashMap);
                    arrayList.get(i2).put(EnumC14329a.CATEGORY_FAVORITE_COUNT, String.valueOf(i));
                }
            }
        }
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: g */
    public void mo3016g() {
    }

    /* renamed from: g */
    public final void m26473g(String str) {
        C13915b3.m3044e("KEY_CURRENT_CATEGORY_ID", str);
    }

    /* renamed from: h */
    public final void m26471h(String str) {
        if (getActivity() != null && !getActivity().isFinishing() && this.f12377b != null) {
            ArrayList<Map<EnumC14329a, String>> O = m26506O();
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= O.size()) {
                    break;
                } else if (TextUtils.equals(str, O.get(i2).get(EnumC14329a.PARENT_ID))) {
                    i = i2;
                    break;
                } else {
                    i2++;
                }
            }
            C12846b.m5149b(getActivity(), O, i, this.mFilterSpinner, new C5010h());
        }
    }

    /* renamed from: i */
    public final void m26469i(String str) {
        C14217x3.m2129k().post(m26477e(str));
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        registerForContextMenu(this.mRvFavoriteList);
        this.mRvFavoriteList.addOnItemTouchListener(new C4998b0());
        super.onActivityCreated(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 4097) {
            if (intent != null) {
                try {
                    Cursor query = getActivity().getContentResolver().query(intent.getData(), new String[]{"data1"}, null, null, null);
                    if (query != null) {
                        if (query.moveToFirst()) {
                            C12860e.m5132a((Context) getActivity(), C14108o4.m2474l(query.getString(query.getColumnIndex("data1"))), (String) null, false, FavoriteFragment.class.getSimpleName(), (HandlerC12947l) new HandlerC5018o());
                        }
                        query.close();
                    }
                } catch (Exception e) {
                    Log.e("FILES", "Failed to get phone data", e);
                }
            }
        } else if (i2 == -1 && i == 4098 && intent != null) {
            String[] stringArrayExtra = intent.getStringArrayExtra("selected_number");
            if (stringArrayExtra != null && stringArrayExtra.length > 0) {
                FragmentActivity activity = getActivity();
                C14687h.m861a(activity, stringArrayExtra.length + " number(s) selected", 1).m858c();
            }
        } else if (i2 == -1 && i == 4099 && intent != null) {
            Single.create(new C5020q(intent.getStringExtra("groupId"))).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C5019p(), C14081m3.m2611a());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f12376a = context;
        this.f12376a.getContentResolver();
        this.f12379d = new ArrayList<>();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        ArrayList<Map<EnumC14329a, String>> arrayList;
        ArrayList<Map<EnumC14329a, String>> arrayList2;
        ArrayList<Map<EnumC14329a, String>> arrayList3;
        if (!isAdded()) {
            return true;
        }
        int itemId = menuItem.getItemId();
        if (itemId == 2131362818) {
            C14299q.m1804A();
            C12861f.m5126b("add", 1);
            m26505P();
            return true;
        } else if (itemId == 2131362816) {
            startActivityForResult(LogSelectionActivity.m27795a(this.f12376a, 3, -1, R$string.confirm, -13451228, null), 4098);
            return true;
        } else if (itemId == 2131362817) {
            C14299q.m1656z();
            C12861f.m5126b("add", 2);
            Intent intent = new Intent("android.intent.action.PICK");
            intent.setType("vnd.android.cursor.dir/phone_v2");
            try {
                startActivityForResult(intent, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
                return true;
            } catch (ActivityNotFoundException e) {
                if (getActivity() == null || getActivity().isFinishing()) {
                    return true;
                }
                C14687h.m861a(getActivity(), "Your Contact app does not support pick contact !!", 0);
                return true;
            }
        } else if (itemId == 2131362858) {
            int i = this.f12388m;
            if (i < 0 || (arrayList3 = this.f12379d) == null || i >= arrayList3.size()) {
                return false;
            }
            String str = this.f12379d.get(i).get(EnumC14329a.NUMBER);
            C14299q.m1779K();
            C12861f.m5126b("longpress", 1);
            C12810o.m5267a(this.f12376a, 3, str, (String) null, false, C12810o.m5238g());
            return true;
        } else if (itemId == 2131362859) {
            int i2 = this.f12388m;
            if (i2 < 0 || (arrayList2 = this.f12379d) == null || i2 >= arrayList2.size()) {
                return false;
            }
            C12860e.m5133a(this.f12376a, this.f12379d.get(i2).get(EnumC14329a.NUMBER), (String) null, this.f12379d.get(i2).get(EnumC14329a.PARENT_ID), FavoriteFragment.class.getSimpleName(), new HandlerC5001c0());
            C14299q.m1777L();
            C12861f.m5126b("longpress", 2);
            return true;
        } else if (itemId != 2131362843) {
            return true;
        } else {
            int i3 = this.f12388m;
            if (i3 < 0 || (arrayList = this.f12379d) == null || i3 >= arrayList.size()) {
                return false;
            }
            String str2 = this.f12379d.get(i3).get(EnumC14329a.PARENT_ID);
            String str3 = this.f12379d.get(i3).get(EnumC14329a.E164NUMBER);
            try {
                DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this.f12376a);
                fVar.m979b(m6059b(R$string.delete_from_wishlist));
                fVar.m978b(m6059b(R$string.okok), new DialogInterface$OnClickListenerC4997b(str3, str2));
                fVar.m984a(m6059b(R$string.cancel), new DialogInterface$OnClickListenerC4995a(this));
                fVar.m982b();
            } catch (Exception e2) {
                C14080m2.m2612a((Throwable) e2);
            }
            C14299q.m1781J();
            C12861f.m5126b("longpress", 3);
            return true;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m26502S();
    }

    @Override // androidx.fragment.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        MenuInflater menuInflater = getActivity().getMenuInflater();
        if (view.getId() == 2131361963) {
            C14299q.m1659y();
            C12861f.m5126b("click_area", "float");
            menuInflater.inflate(R$menu.context_favorite_add_rule, contextMenu);
        } else {
            Map<EnumC14329a, String> map = this.f12379d.get(this.f12388m);
            if (map != null) {
                String str = map.get(EnumC14329a.NUMBER);
                if (!TextUtils.isEmpty(str)) {
                    C14299q.m1783I();
                    C11052i.m10328e().m10327e(map.get(EnumC14329a.E164NUMBER));
                    menuInflater.inflate(R$menu.context_favorite_item, contextMenu);
                    if (!C14108o4.m2477i(str)) {
                        contextMenu.findItem(R$id.menu_message).setVisible(false);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        new DialogC14669c.C14674d(getActivity(), contextMenu).m891a();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R$layout.favorite_fragment, viewGroup, false);
        ButterKnife.bind(this, inflate);
        this.mListContainer.setVisibility(8);
        this.mLlSearching.setVisibility(0);
        this.mRvFavoriteList.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.mRvFavoriteList.addOnScrollListener(new C5014k());
        this.mRvFavoriteList.addItemDecoration(new C5028u());
        this.mFilterSpinner.m25667g(R$layout.mp_spinner_favorite_filter);
        this.mColdStartClose.setOnClickListener(new View$OnClickListenerC5030w());
        this.mColdStartList.addItemDecoration(new C5031x(this));
        this.mColdStartList.addOnItemTouchListener(new C5032y());
        this.mColdStartList.addOnScrollListener(new C5035z());
        this.mBtnFab.setOnClickListener(new View$OnClickListenerC4996a0());
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m26500U();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.f12391p.m3029c(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (!this.f12381f) {
            m26479d(true);
        }
        this.f12391p.m3029c(true);
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: r */
    public void mo3015r() {
        C14289m.m1892a(Entity.ENTITY_FAV_KEY, this.f12391p.m3022b());
    }

    @Override // p459j.p460a.p518j.AbstractC12478d, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        m26508M();
        if (z && this.f12384i) {
            this.f12384i = false;
            m26507N();
        }
        if (z) {
            m26504Q();
            C12861f.m5126b("pv", 1);
        }
    }
}
