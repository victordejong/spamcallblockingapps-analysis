package p193e.p194a.p682e;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.GridLayoutManager$c;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.view.ThemePreviewView;
import com.truecaller.p183ui.view.ThemeSelectorView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1050l5.p1051a.C17837z1;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
import s1.u.i;
/* renamed from: e.a.e.o1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/o1.class */
public class C13295o1 extends AbstractC13329x0 {

    /* renamed from: e */
    public ThemePreviewView f38644e;

    /* renamed from: f */
    public ContextThemeWrapper f38645f;

    /* renamed from: g */
    public C13297b f38646g;

    /* renamed from: e.a.e.o1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/o1$a.class */
    public class C13296a extends GridLayoutManager$c {

        /* renamed from: a */
        public final /* synthetic */ GridLayoutManager f38647a;

        public C13296a(GridLayoutManager gridLayoutManager) {
            C13295o1.this = r4;
            this.f38647a = gridLayoutManager;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager$c
        public int getSpanSize(int i) {
            return C13295o1.this.f38646g.m21945e(i) ? this.f38647a.getSpanCount() : 1;
        }
    }

    /* renamed from: e.a.e.o1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/o1$b.class */
    public class C13297b extends RecyclerView.AbstractC0317g<View$OnClickListenerC13298a> {

        /* renamed from: a */
        public final View f38649a;

        /* renamed from: b */
        public List<AbstractC15317d> f38650b;

        /* renamed from: c */
        public int f38651c;

        /* renamed from: e.a.e.o1$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/e/o1$b$a.class */
        public class View$OnClickListenerC13298a extends RecyclerView.AbstractC0313c0 implements View.OnClickListener {

            /* renamed from: a */
            public TextView f38653a;

            /* renamed from: b */
            public ThemeSelectorView f38654b;

            /* renamed from: c */
            public int f38655c = -1;

            /* renamed from: d */
            public int f38656d = -16777216;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public View$OnClickListenerC13298a(View view) {
                super(view);
                C13297b.this = r5;
                this.f38653a = (TextView) view.findViewById(C2752R.C2754id.text_view);
                this.f38654b = (ThemeSelectorView) view.findViewById(C2752R.C2754id.selector_view);
                view.setOnClickListener(this);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int layoutPosition = getLayoutPosition();
                if (layoutPosition > 0) {
                    C13297b c13297b = C13297b.this;
                    c13297b.notifyItemChanged(c13297b.f38651c);
                    C13297b c13297b2 = C13297b.this;
                    c13297b2.f38651c = layoutPosition;
                    c13297b2.notifyItemChanged(layoutPosition);
                }
            }
        }

        public C13297b(View view, List<AbstractC15317d> list, int i) {
            C13295o1.this = r4;
            this.f38651c = 0;
            this.f38649a = view;
            this.f38650b = list;
            this.f38651c = i;
        }

        /* renamed from: e */
        public boolean m21945e(int i) {
            return i == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public int getItemCount() {
            return this.f38650b.size() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public int getItemViewType(int i) {
            return !m21945e(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public void onBindViewHolder(View$OnClickListenerC13298a view$OnClickListenerC13298a, int i) {
            View$OnClickListenerC13298a view$OnClickListenerC13298a2 = view$OnClickListenerC13298a;
            if (m21945e(i)) {
                return;
            }
            AbstractC15317d abstractC15317d = this.f38650b.get(i - 1);
            boolean z = this.f38651c == i;
            view$OnClickListenerC13298a2.f38653a.setText(abstractC15317d.f43586b);
            C13295o1.this.f38645f.setTheme(abstractC15317d.f43587c);
            Resources.Theme theme = C13295o1.this.f38645f.getTheme();
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(2130970334, typedValue, true);
            Context context = C13295o1.this.getContext();
            int i2 = typedValue.resourceId;
            Object obj = C26467a.f74235a;
            int m1787a = C26467a.C26471d.m1787a(context, i2);
            theme.resolveAttribute(2130970356, typedValue, true);
            view$OnClickListenerC13298a2.f38654b.setLeftColor(C26467a.C26471d.m1787a(C13295o1.this.getContext(), typedValue.resourceId));
            view$OnClickListenerC13298a2.f38654b.setRightColor(m1787a);
            if (!z) {
                view$OnClickListenerC13298a2.f38653a.setBackground(null);
                view$OnClickListenerC13298a2.f38653a.setTextColor(view$OnClickListenerC13298a2.f38656d);
                return;
            }
            theme.resolveAttribute(C2752R.attr.theme_selector_selected_background, typedValue, true);
            view$OnClickListenerC13298a2.f38653a.setBackground(C26467a.C26470c.m1789b(C13295o1.this.getContext(), typedValue.resourceId));
            view$OnClickListenerC13298a2.f38653a.setTextColor(view$OnClickListenerC13298a2.f38655c);
            ThemePreviewView themePreviewView = C13295o1.this.f38644e;
            themePreviewView.f15916a.setTheme(abstractC15317d.f43587c);
            themePreviewView.m34477a();
            themePreviewView.invalidate();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public View$OnClickListenerC13298a onCreateViewHolder(ViewGroup viewGroup, int i) {
            return i == 0 ? new View$OnClickListenerC13298a(this.f38649a) : new View$OnClickListenerC13298a(LayoutInflater.from(viewGroup.getContext()).inflate(C2752R.layout.listitem_theme_selector, viewGroup, false));
        }
    }

    /* renamed from: WA */
    public final void m21946WA() {
        C13297b c13297b = this.f38646g;
        AbstractC15317d abstractC15317d = c13297b.f38650b.get(c13297b.f38651c - 1);
        C15314a c15314a = C15314a.f43582g;
        C15314a.m18930i(abstractC15317d);
        TrueApp.m36032b0().mo10154s().mo12792B2().mo10143a(abstractC15317d);
        Context applicationContext = getContext().getApplicationContext();
        AbstractC19462a m8596m1 = C22128a.m8596m1();
        HashMap m8667T = C22128a.m8667T("Setting", "Theme");
        m8667T.put("State", abstractC15317d.toString());
        m8596m1.mo13271e(new AbstractC19502g.C19504b.C19505a("SettingChanged", null, m8667T, null));
        AbstractC19463a0 mo11854a = ((AbstractC21187w1) applicationContext).mo10154s().mo12217s().mo11854a();
        String obj = abstractC15317d.toString();
        C17837z1.C17839b m15768a = C17837z1.m15768a();
        m15768a.m15765c("theme");
        m15768a.m15764d(obj);
        m15768a.m15766b("settings_screen");
        mo11854a.mo13111a(m15768a.build());
        TruecallerInit.m34567Va(getContext(), "calls", true, "settings_screen");
    }

    public void onActivityCreated(Bundle bundle) {
        C13295o1.super.onActivityCreated(bundle);
        getActivity().setTitle(C2752R.string.SettingsAppTheme);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        C13295o1.super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(C2752R.C2756menu.theme_selector_menu, menu);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        setHasOptionsMenu(true);
        C15314a c15314a = C15314a.f43582g;
        AbstractC15317d m18938a = C15314a.m18938a();
        List S0 = i.S0(C15314a.f43577b.values());
        ArrayList arrayList = new ArrayList(S0.size());
        int i = 0;
        for (int i2 = 0; i2 < S0.size(); i2++) {
            AbstractC15317d abstractC15317d = (AbstractC15317d) S0.get(i2);
            arrayList.add(abstractC15317d);
            if (abstractC15317d == m18938a) {
                i = i2 + 1;
            }
        }
        this.f38645f = C17422k.m16114D(requireContext());
        FrameLayout frameLayout = (FrameLayout) layoutInflater.inflate(C2752R.layout.view_theme_selector_preview, viewGroup, false);
        this.f38644e = (ThemePreviewView) frameLayout.findViewById(C2752R.C2754id.theme_preview);
        RecyclerView recyclerView = (RecyclerView) layoutInflater.inflate(C2752R.layout.view_theme_selector, viewGroup, false);
        C13297b c13297b = new C13297b(frameLayout, arrayList, i);
        this.f38646g = c13297b;
        recyclerView.setAdapter(c13297b);
        RecyclerView.AbstractC0329o gridLayoutManager = new GridLayoutManager(getContext(), 3);
        gridLayoutManager.setSpanSizeLookup(new C13296a(gridLayoutManager));
        recyclerView.setLayoutManager(gridLayoutManager);
        return recyclerView;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 2131361929) {
            m21946WA();
            return true;
        }
        return C13295o1.super.onOptionsItemSelected(menuItem);
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0, p193e.p194a.p682e.AbstractC13335y0
    /* renamed from: or */
    public boolean mo21904or() {
        C13297b c13297b = this.f38646g;
        AbstractC15317d abstractC15317d = c13297b.f38650b.get(c13297b.f38651c - 1);
        C15314a c15314a = C15314a.f43582g;
        if (abstractC15317d != C15314a.m18938a()) {
            g$a g_a = new g$a(getActivity());
            g_a.m3664e(C2752R.string.SettingsThemeChanged);
            g_a.m3660i(2131887941, new DialogInterface.OnClickListener() { // from class: e.a.e.t
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    C13295o1.this.m21946WA();
                }
            });
            g_a.m3662g(2131887903, new DialogInterface.OnClickListener() { // from class: e.a.e.s
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    C13295o1.this.getActivity().finish();
                }
            });
            g_a.f70854a.f163m = false;
            g_a.m3652q();
            return true;
        }
        return false;
    }
}
