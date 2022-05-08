package com.tmobile.services.nameid.manage.tabs;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.manage.tabs.CallTypeAdapter;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.UserPreference;
import com.tmobile.services.nameid.model.UserPreferenceStatus;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.p007ui.UIAnalyticConfigurator;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.ManageDialog;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.RecyclerViewClickListener;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.Observer;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.realm.Realm;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/tabs/CallTypeAdapter.class */
public class CallTypeAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a */
    private RecyclerViewClickListener f13552a;

    /* renamed from: b */
    private boolean f13553b;

    /* renamed from: c */
    int f13554c;
    @Nullable

    /* renamed from: d */
    private DialogFragment f13555d;

    /* renamed from: e */
    private List<UserPreference> f13556e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/tabs/CallTypeAdapter$HeaderViewHolder.class */
    public static class HeaderViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a */
        ImageButton f13557a;

        /* renamed from: b */
        TextView f13558b;

        /* renamed from: c */
        RelativeLayout f13559c;

        /* renamed from: d */
        TextView f13560d;

        /* renamed from: e */
        Button f13561e;

        /* renamed from: f */
        View f13562f;

        /* renamed from: g */
        View f13563g;

        private HeaderViewHolder(View view) {
            super(view);
            this.f13557a = (ImageButton) view.findViewById(C1517R.C1520id.manage_header_close);
            this.f13558b = (TextView) view.findViewById(C1517R.C1520id.manage_header_subtitle);
            this.f13559c = (RelativeLayout) view.findViewById(C1517R.C1520id.manage_header_container);
            this.f13560d = (TextView) view.findViewById(C1517R.C1520id.manage_header_title);
            this.f13561e = (Button) view.findViewById(C1517R.C1520id.manage_header_button);
            this.f13562f = view.findViewById(C1517R.C1520id.manager_header_shadow1);
            this.f13563g = view.findViewById(C1517R.C1520id.manager_header_shadow2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/tabs/CallTypeAdapter$PreferenceStatusObserver.class */
    class PreferenceStatusObserver implements Observer<UserPreferenceStatus> {

        /* renamed from: f */
        private Context f13564f;

        /* renamed from: g */
        private boolean f13565g;

        /* renamed from: h */
        private UserPreference f13566h;

        public PreferenceStatusObserver(Context context, boolean z, @Nullable UserPreference userPreference) {
            this.f13564f = context;
            this.f13565g = z;
            this.f13566h = userPreference;
        }

        /* renamed from: a */
        public /* synthetic */ Unit m6502a() {
            UserPreference userPreference = this.f13566h;
            ApiWrapper.m6785c(userPreference, new PreferenceStatusObserver(this.f13564f, this.f13565g, userPreference));
            return Unit.f20447a;
        }

        /* renamed from: b */
        public void onNext(@NonNull UserPreferenceStatus userPreferenceStatus) {
            int size = userPreferenceStatus.getSuccessfulItems().size();
            if (size > 0 && this.f13565g) {
                String string = this.f13564f.getString(C1517R.string.manage_multiple_numbers_added, Integer.valueOf(size));
                if (size == 1) {
                    string = this.f13564f.getString(C1517R.string.manage_multiple_numbers_added_single);
                }
                MainApplication.m7540P(string);
            }
            if (!this.f13565g && !userPreferenceStatus.getSuccessfulItems().isEmpty()) {
                MainApplication.m7540P(this.f13564f.getString(WidgetUtils.m5228j(CallerSetting.Action.BLOCKED, true)));
            }
            ApiUtils.m6823y0(userPreferenceStatus);
            if (CallTypeAdapter.this.f13555d != null) {
                CallTypeAdapter.this.f13555d.dismiss();
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(@NonNull Throwable th) {
            if (!this.f13565g) {
                ManageDialog.m5621j(this.f13564f, CallerSetting.Action.NONE.getValue(), CallerSetting.Action.BLOCKED.getValue(), this.f13566h.getE164Number(), this.f13566h.getCommEventType(), null, new Function0() { // from class: com.tmobile.services.nameid.manage.tabs.c
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CallTypeAdapter.PreferenceStatusObserver.this.m6502a();
                    }
                }, null, 0);
            }
            if (CallTypeAdapter.this.f13555d != null) {
                CallTypeAdapter.this.f13555d.dismiss();
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(@NonNull Disposable disposable) {
            Context context = this.f13564f;
            if (context instanceof AppCompatActivity) {
                FragmentManager supportFragmentManager = ((AppCompatActivity) context).getSupportFragmentManager();
                CallTypeAdapter.this.f13555d = WidgetUtils.m5245a0(supportFragmentManager, C1517R.string.migration_manage_loading, false);
                return;
            }
            LogUtil.m5643d("CallTypeAdapter#", "Context was not AppCompatActivity, could not find fragment manager");
        }
    }

    public CallTypeAdapter(List<UserPreference> list, RecyclerViewClickListener recyclerViewClickListener, boolean z) {
        this.f13554c = 0;
        this.f13556e = list;
        this.f13552a = recyclerViewClickListener;
        this.f13553b = z;
        this.f13554c = 0;
        for (UserPreference userPreference : list) {
            if (userPreference.isUpdateFailed()) {
                this.f13554c++;
            }
        }
    }

    /* renamed from: e */
    void m6511e(final UserPreference userPreference, final WidgetUtils.GenericViewHolder genericViewHolder) {
        WidgetUtils.m5242c(userPreference.getE164Number(), ActivityItem.Type.INCOMING.getValue(), userPreference.getCaller(), genericViewHolder);
        genericViewHolder.m5184h().setVisibility(8);
        genericViewHolder.m5183i().setVisibility(4);
        genericViewHolder.m5186f().setVisibility(8);
        genericViewHolder.m5185g().setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.manage.tabs.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallTypeAdapter.this.m6507i(genericViewHolder, userPreference, view);
            }
        });
        if (!userPreference.isUpdateFailed() || !this.f13553b) {
            genericViewHolder.m5182j().setVisibility(8);
            genericViewHolder.m5185g().setVisibility(8);
            return;
        }
        genericViewHolder.m5182j().setVisibility(0);
        genericViewHolder.m5185g().setVisibility(0);
    }

    /* renamed from: f */
    void m6510f(HeaderViewHolder headerViewHolder) {
        headerViewHolder.f13559c.setVisibility(0);
        headerViewHolder.f13558b.setText(C1517R.string.manage_migration_complete_message);
        headerViewHolder.f13560d.setVisibility(8);
        headerViewHolder.f13561e.setVisibility(8);
        headerViewHolder.f13557a.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.manage.tabs.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallTypeAdapter.this.m6506j(view);
            }
        });
    }

    /* renamed from: g */
    void m6509g(final HeaderViewHolder headerViewHolder) {
        headerViewHolder.f13558b.setText(C1517R.string.migration_manage_banner);
        Context context = headerViewHolder.f13560d.getContext();
        int i = this.f13554c;
        if (i == 1) {
            headerViewHolder.f13560d.setText(C1517R.string.migration_manage_banner_title_single);
        } else {
            headerViewHolder.f13560d.setText(context.getString(C1517R.string.migration_manage_banner_title, Integer.valueOf(i)));
        }
        headerViewHolder.f13557a.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.manage.tabs.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallTypeAdapter.this.m6505k(view);
            }
        });
        headerViewHolder.f13559c.setVisibility(0);
        headerViewHolder.f13561e.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.manage.tabs.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallTypeAdapter.this.m6504l(headerViewHolder, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f13556e.size() + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return i == 0 ? 1 : 2;
    }

    /* renamed from: h */
    public List<UserPreference> m6508h() {
        return this.f13556e;
    }

    /* renamed from: i */
    public /* synthetic */ void m6507i(WidgetUtils.GenericViewHolder genericViewHolder, UserPreference userPreference, View view) {
        WidgetUtils.m5252U(genericViewHolder.m5185g().getContext(), userPreference, new PreferenceStatusObserver(genericViewHolder.m5186f().getContext(), false, userPreference));
    }

    /* renamed from: j */
    public /* synthetic */ void m6506j(View view) {
        PreferenceUtils.m5386k("PREF_NOTIFY_OF_MIGRATION", false);
        notifyDataSetChanged();
    }

    /* renamed from: k */
    public /* synthetic */ void m6505k(View view) {
        PreferenceUtils.m5386k("PREF_SHOW_MIGRATION_MANAGE_NUMBERS", false);
        notifyDataSetChanged();
    }

    /* renamed from: l */
    public /* synthetic */ void m6504l(HeaderViewHolder headerViewHolder, View view) {
        ArrayList arrayList = new ArrayList();
        Realm G0 = Realm.m3064G0();
        try {
            Iterator<E> it = G0.m3053Q0(CallerSetting.class).m2888n("updateFailed", Boolean.TRUE).m2918E().iterator();
            while (it.hasNext()) {
                arrayList.add(((CallerSetting) it.next()).copy());
            }
            ApiWrapper.m6783d(arrayList, new PreferenceStatusObserver(headerViewHolder.f13561e.getContext(), true, null));
            if (G0 != null) {
                G0.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: m */
    public void m6503m(List<UserPreference> list) {
        this.f13556e = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (getItemViewType(i) == 1) {
            HeaderViewHolder headerViewHolder = (HeaderViewHolder) viewHolder;
            boolean b = PreferenceUtils.m5395b("PREF_NOTIFY_OF_MIGRATION", false);
            boolean b2 = PreferenceUtils.m5395b("PREF_SHOW_MIGRATION_MANAGE_NUMBERS", false);
            if (b && this.f13553b) {
                m6510f(headerViewHolder);
            } else if (!this.f13553b || this.f13554c == 0 || !b2) {
                headerViewHolder.f13559c.setVisibility(8);
                headerViewHolder.f13562f.setVisibility(8);
                headerViewHolder.f13563g.setVisibility(8);
            } else {
                m6509g(headerViewHolder);
            }
        } else if (getItemViewType(i) == 2) {
            WidgetUtils.GenericViewHolder genericViewHolder = (WidgetUtils.GenericViewHolder) viewHolder;
            UserPreference userPreference = this.f13556e.get(i - 1);
            if (userPreference != null && userPreference.isValid()) {
                m6511e(userPreference, genericViewHolder);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new HeaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C1517R.layout.header_item_manage, viewGroup, false));
        }
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C1517R.layout.recent_list_item, viewGroup, false);
        UIAnalyticConfigurator.m6241k().m6239m("Manage call lists item", inflate);
        return new WidgetUtils.GenericViewHolder(inflate, this.f13552a);
    }
}
