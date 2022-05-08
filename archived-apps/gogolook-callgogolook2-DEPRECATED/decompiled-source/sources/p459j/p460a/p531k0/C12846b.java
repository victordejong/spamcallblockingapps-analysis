package p459j.p460a.p531k0;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.phonebook.FavoriteFragment;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import gogolook.callgogolook2.view.widget.WSpinner;
import java.util.List;
import java.util.Map;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p582w0.p594z4.EnumC14329a;
/* renamed from: j.a.k0.b */
/* loaded from: classes3-dex2jar.jar:j/a/k0/b.class */
public class C12846b {

    /* renamed from: j.a.k0.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/k0/b$a.class */
    public static final class C12847a implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC12852d f29040a;

        /* renamed from: b */
        public final /* synthetic */ List f29041b;

        public C12847a(AbstractC12852d dVar, List list) {
            this.f29040a = dVar;
            this.f29041b = list;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            AbstractC12852d dVar = this.f29040a;
            if (dVar != null) {
                dVar.mo5147a(i, (Map) this.f29041b.get(i));
            }
        }
    }

    /* renamed from: j.a.k0.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/k0/b$b.class */
    public static final class C12848b implements WSpinner.AbstractC5326f {
        @Override // gogolook.callgogolook2.view.widget.WSpinner.AbstractC5326f
        /* renamed from: a */
        public void mo5148a() {
            C14299q.m1792E();
            C12861f.m5126b("click_area", "cat_menu");
        }
    }

    /* renamed from: j.a.k0.b$c */
    /* loaded from: classes3-dex2jar.jar:j/a/k0/b$c.class */
    public static final class C12849c extends BaseAdapter {

        /* renamed from: a */
        public final /* synthetic */ List f29042a;

        /* renamed from: b */
        public final /* synthetic */ Context f29043b;

        /* renamed from: c */
        public final /* synthetic */ int f29044c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC12852d f29045d;

        /* renamed from: e */
        public final /* synthetic */ WSpinner f29046e;

        /* renamed from: j.a.k0.b$c$a */
        /* loaded from: classes3-dex2jar.jar:j/a/k0/b$c$a.class */
        public class View$OnClickListenerC12850a implements View.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ int f29047a;

            public View$OnClickListenerC12850a(int i) {
                this.f29047a = i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C12849c cVar = C12849c.this;
                AbstractC12852d dVar = cVar.f29045d;
                if (dVar != null) {
                    int i = this.f29047a;
                    dVar.mo5145b(view, i, (Map) cVar.f29042a.get(i));
                }
                WSpinner wSpinner = C12849c.this.f29046e;
                if (wSpinner != null) {
                    wSpinner.m25680b();
                }
            }
        }

        /* renamed from: j.a.k0.b$c$b */
        /* loaded from: classes3-dex2jar.jar:j/a/k0/b$c$b.class */
        public class View$OnClickListenerC12851b implements View.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ int f29049a;

            public View$OnClickListenerC12851b(int i) {
                this.f29049a = i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C12849c cVar = C12849c.this;
                AbstractC12852d dVar = cVar.f29045d;
                if (dVar != null) {
                    int i = this.f29049a;
                    dVar.mo5146a(view, i, (Map) cVar.f29042a.get(i));
                }
                WSpinner wSpinner = C12849c.this.f29046e;
                if (wSpinner != null) {
                    wSpinner.m25680b();
                }
            }
        }

        public C12849c(List list, Context context, int i, AbstractC12852d dVar, WSpinner wSpinner) {
            this.f29042a = list;
            this.f29043b = context;
            this.f29044c = i;
            this.f29045d = dVar;
            this.f29046e = wSpinner;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f29042a.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((Map) this.f29042a.get(i)).get(EnumC14329a.GROUP_NAME);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Map map = (Map) this.f29042a.get(i);
            String str = null;
            View inflate = LayoutInflater.from(this.f29043b).inflate(this.f29044c, (ViewGroup) null);
            RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R$id.rl_dropdown);
            View findViewById = inflate.findViewById(R$id.ll_content_layout);
            TextView textView = (TextView) inflate.findViewById(16908308);
            TextView textView2 = (TextView) inflate.findViewById(R$id.tv_count);
            ImageView imageView = (ImageView) inflate.findViewById(R$id.iv_add);
            ImageView imageView2 = (ImageView) inflate.findViewById(R$id.iv_edit);
            ImageView imageView3 = (ImageView) inflate.findViewById(R$id.iv_delete);
            View findViewById2 = inflate.findViewById(R$id.divider);
            String str2 = (String) map.get(EnumC14329a.GROUP_NAME);
            String str3 = (String) map.get(EnumC14329a.GROUP_COUNT);
            textView.setText(str2);
            if (!TextUtils.isEmpty(str3)) {
                str = str3;
            }
            textView2.setText(str);
            relativeLayout.setPadding(0, 0, 0, 0);
            textView.setPadding(C14217x3.m2201a(4.5f), 0, C14217x3.m2201a(2.5f), 0);
            findViewById.setPadding((int) C14217x3.m2158c(15.0f), 0, (int) C14217x3.m2158c(15.0f), 0);
            if (TextUtils.equals((CharSequence) map.get(EnumC14329a.PARENT_ID), FavoriteFragment.f12375t)) {
                findViewById2.setVisibility(0);
                imageView2.setVisibility(8);
                imageView3.setVisibility(8);
                textView2.setVisibility(8);
                imageView.setVisibility(0);
                textView.setPadding(C14217x3.m2201a(4.5f), 0, C14217x3.m2201a(2.5f), C14217x3.m2201a(4.0f));
            } else {
                imageView.setVisibility(8);
                findViewById2.setVisibility(8);
                if (TextUtils.equals((CharSequence) map.get(EnumC14329a.PARENT_ID), FavoriteGroupRealmObject.PARENDID_DELETED) || TextUtils.equals((CharSequence) map.get(EnumC14329a.PARENT_ID), "0")) {
                    imageView2.setVisibility(4);
                    imageView3.setVisibility(4);
                } else {
                    imageView2.setVisibility(0);
                    imageView3.setVisibility(0);
                }
            }
            imageView2.setOnClickListener(new View$OnClickListenerC12850a(i));
            imageView3.setOnClickListener(new View$OnClickListenerC12851b(i));
            return inflate;
        }
    }

    /* renamed from: j.a.k0.b$d */
    /* loaded from: classes3-dex2jar.jar:j/a/k0/b$d.class */
    public interface AbstractC12852d {
        /* renamed from: a */
        void mo5147a(int i, Map<EnumC14329a, String> map);

        /* renamed from: a */
        void mo5146a(View view, int i, Map<EnumC14329a, String> map);

        /* renamed from: b */
        void mo5145b(View view, int i, Map<EnumC14329a, String> map);
    }

    /* renamed from: a */
    public static BaseAdapter m5150a(Context context, List<Map<EnumC14329a, String>> list, int i, WSpinner wSpinner, AbstractC12852d dVar) {
        wSpinner.m25679b(0);
        if (list.size() == 0) {
            return null;
        }
        return new C12849c(list, context, i, dVar, wSpinner);
    }

    /* renamed from: b */
    public static void m5149b(@NonNull Context context, @NonNull List<Map<EnumC14329a, String>> list, int i, @NonNull WSpinner wSpinner, AbstractC12852d dVar) {
        wSpinner.m25673d(300);
        wSpinner.m25667g(R$layout.mp_spinner);
        wSpinner.m25685a(m5150a(context, list, R$layout.mp_spinner_dropdownitem_favorite, wSpinner, dVar));
        wSpinner.m25686a(new C12847a(dVar, list));
        wSpinner.m25684a(new C12848b());
        if (i >= 0 && i < list.size() && !TextUtils.equals(list.get(i).get(EnumC14329a.PARENT_ID), FavoriteFragment.f12375t)) {
            wSpinner.m25669f(i);
        }
        wSpinner.setVisibility(0);
    }
}
