package p193e.p194a.p682e.p684b.p686b;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.storagemanager.StorageManagerActivity;
import com.truecaller.p183ui.components.ComboBase;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1744b0.p1745a.C25595i;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.C20399t1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p200c.AbstractC5721s5;
import p193e.p194a.p195a.p200c.C5766t5;
import p193e.p194a.p682e.p699c2.C13197i0;
import s1.s;
import s1.u.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\ba\u0010\nJ\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ-\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0017\u0010\nJ\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001c\u0010\nJ\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b!\u0010 J\u001d\u0010$\u001a\u00020\u00062\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001d0\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010\nJ\u0017\u0010(\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u001dH\u0016¢\u0006\u0004\b(\u0010 J)\u0010,\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020\u00182\b\u0010+\u001a\u0004\u0018\u00010*H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b.\u0010\u001bJ\u0019\u00101\u001a\u00020\u00062\b\b\u0001\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b1\u00102J%\u00106\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u001d2\f\u00105\u001a\b\u0012\u0004\u0012\u00020\u000604H\u0016¢\u0006\u0004\b6\u00107J!\u0010;\u001a\u00020:2\b\b\u0001\u00108\u001a\u00020/2\u0006\u00109\u001a\u00020\u001dH\u0002¢\u0006\u0004\b;\u0010<R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010G\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010I\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bH\u0010FR\"\u0010P\u001a\u00020J8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b1\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\u0016\u0010R\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bQ\u0010FR\u0016\u0010T\u001a\u00020A8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bS\u0010CR\"\u0010\\\u001a\u00020U8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bV\u0010W\u001a\u0004\bX\u0010Y\"\u0004\bZ\u0010[R\u0016\u0010`\u001a\u00020]8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b^\u0010_¨\u0006b"}, d2 = {"Le/a/e/b/b/a;", "Landroidx/fragment/app/Fragment;", "Le/a/e/b/b/d;", "Le/a/a/c/s5;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "onResume", "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroy", "", AnalyticsConstants.SHOW, "b8", "(Z)V", "do", "", "value", "nf", "(Ljava/lang/String;)V", "BA", "", "languages", "Ha", "(Ljava/util/List;)V", "A9", "languageCode", "E9", "allowsDownloadViaMobile", "Lcom/truecaller/messaging/data/types/Message;", "message", "Wn", "(Ljava/lang/String;ZLcom/truecaller/messaging/data/types/Message;)V", "ks", "", "resId", "a", "(I)V", "language", "Lkotlin/Function0;", "callback", "fi", "(Ljava/lang/String;Ls1/z/b/a;)V", "title", "id", "Le/a/e/c2/i0;", "PA", "(ILjava/lang/String;)Le/a/e/c2/i0;", "Le/a/o2/f;", "i", "Le/a/o2/f;", "adapter", "Lcom/truecaller/ui/components/ComboBase;", "e", "Lcom/truecaller/ui/components/ComboBase;", "autoDownloadMediaCombo", AbstractC2405c.f7629a, "Landroid/view/View;", "addLanguageButton", "h", "manageStorageContainer", "Le/a/e/b/b/c;", "Le/a/e/b/b/c;", "OA", "()Le/a/e/b/b/c;", "setPresenter", "(Le/a/e/b/b/c;)V", "presenter", "g", "translationFilesContainer", "d", "autoDownloadTranslationsCombo", "Le/a/e/b/b/i;", C22021b.f61237c, "Le/a/e/b/b/i;", "getItemPresenter", "()Le/a/e/b/b/i;", "setItemPresenter", "(Le/a/e/b/b/i;)V", "itemPresenter", "Landroidx/recyclerview/widget/RecyclerView;", "f", "Landroidx/recyclerview/widget/RecyclerView;", "languagesRecyclerView", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.b.b.a */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/b/a.class */
public final class C12872a extends Fragment implements AbstractC12882d, AbstractC5721s5 {
    @Inject

    /* renamed from: a */
    public AbstractC12881c f37425a;
    @Inject

    /* renamed from: b */
    public AbstractC12891i f37426b;

    /* renamed from: c */
    public View f37427c;

    /* renamed from: d */
    public ComboBase f37428d;

    /* renamed from: e */
    public ComboBase f37429e;

    /* renamed from: f */
    public RecyclerView f37430f;

    /* renamed from: g */
    public View f37431g;

    /* renamed from: h */
    public View f37432h;

    /* renamed from: i */
    public C18898f f37433i;

    /* renamed from: e.a.e.b.b.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/e/b/b/a$a.class */
    public static final class View$OnClickListenerC12873a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f37434a;

        /* renamed from: b */
        public final /* synthetic */ Object f37435b;

        public View$OnClickListenerC12873a(int i, Object obj) {
            this.f37434a = i;
            this.f37435b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f37434a;
            if (i == 0) {
                ((C12872a) this.f37435b).m22508OA().mo22486y4();
            } else if (i != 1) {
                throw null;
            } else {
                ((C12872a) this.f37435b).m22508OA().mo22487u7();
            }
        }
    }

    /* renamed from: e.a.e.b.b.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/b/a$b.class */
    public static final class C12874b extends m implements l<View, C12894l> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12874b() {
            super(1);
            C12872a.this = r4;
        }

        /* renamed from: d */
        public Object m22505d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, "v");
            C18898f c18898f = C12872a.this.f37433i;
            if (c18898f != null) {
                return new C12894l(view, c18898f);
            }
            s1.z.c.l.l("adapter");
            throw null;
        }
    }

    /* renamed from: e.a.e.b.b.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/b/a$c.class */
    public static final class C12875c extends m implements l<C12894l, AbstractC12892j> {

        /* renamed from: b */
        public static final C12875c f37437b = new C12875c();

        public C12875c() {
            super(1);
        }

        /* renamed from: d */
        public Object m22504d(Object obj) {
            C12894l c12894l = (C12894l) obj;
            s1.z.c.l.e(c12894l, "it");
            return c12894l;
        }
    }

    /* renamed from: e.a.e.b.b.a$d */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/b/a$d.class */
    public static final class C12876d implements ComboBase.AbstractC4672a {

        /* renamed from: b */
        public final /* synthetic */ List f37439b;

        public C12876d(List list, String str) {
            C12872a.this = r4;
            this.f37439b = list;
        }

        @Override // com.truecaller.p183ui.components.ComboBase.AbstractC4672a
        /* renamed from: a */
        public final void mo14306a(ComboBase comboBase) {
            AbstractC12881c m22508OA = C12872a.this.m22508OA();
            s1.z.c.l.d(comboBase, "combo");
            C13197i0 selection = comboBase.getSelection();
            s1.z.c.l.d(selection, "combo.selection");
            Object mo18607e = selection.mo18607e();
            Objects.requireNonNull(mo18607e, "null cannot be cast to non-null type kotlin.String");
            m22508OA.mo22488X9((String) mo18607e);
        }
    }

    /* renamed from: e.a.e.b.b.a$e */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/b/a$e.class */
    public static final class C12877e implements ComboBase.AbstractC4672a {

        /* renamed from: b */
        public final /* synthetic */ List f37441b;

        public C12877e(List list, String str) {
            C12872a.this = r4;
            this.f37441b = list;
        }

        @Override // com.truecaller.p183ui.components.ComboBase.AbstractC4672a
        /* renamed from: a */
        public final void mo14306a(ComboBase comboBase) {
            AbstractC12881c m22508OA = C12872a.this.m22508OA();
            s1.z.c.l.d(comboBase, "combo");
            C13197i0 selection = comboBase.getSelection();
            s1.z.c.l.d(selection, "combo.selection");
            Object mo18607e = selection.mo18607e();
            Objects.requireNonNull(mo18607e, "null cannot be cast to non-null type kotlin.String");
            m22508OA.mo22489Wh((String) mo18607e);
        }
    }

    /* renamed from: e.a.e.b.b.a$f */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/b/a$f.class */
    public static final class DialogInterface$OnClickListenerC12878f implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ a f37442a;

        public DialogInterface$OnClickListenerC12878f(a aVar) {
            this.f37442a = aVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            this.f37442a.invoke();
        }
    }

    /* renamed from: e.a.e.b.b.a$g */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/b/a$g.class */
    public static final class DialogInterface$OnClickListenerC12879g implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ List f37444b;

        public DialogInterface$OnClickListenerC12879g(List list) {
            C12872a.this = r4;
            this.f37444b = list;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C12872a.this.m22508OA().mo22492Gg((String) this.f37444b.get(i));
        }
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12882d
    /* renamed from: A9 */
    public void mo22503A9() {
        View view = this.f37431g;
        if (view == null) {
            s1.z.c.l.l("translationFilesContainer");
            throw null;
        }
        view.setVisibility(0);
        C18898f c18898f = this.f37433i;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("adapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12882d
    /* renamed from: BA */
    public void mo22502BA(String str) {
        C13197i0 c13197i0;
        s1.z.c.l.e(str, "value");
        List<? extends C13197i0> T = i.T(new C13197i0[]{m22507PA(C2752R.string.SettingChatOnlyWifi, AnalyticsConstants.WIFI), m22507PA(C2752R.string.SettingChatWifiOrMobile, "wifiOrMobile"), m22507PA(C2752R.string.SettingChatNever, "never")});
        ComboBase comboBase = this.f37429e;
        if (comboBase == null) {
            s1.z.c.l.l("autoDownloadMediaCombo");
            throw null;
        }
        comboBase.setData(T);
        int hashCode = str.hashCode();
        if (hashCode == -244809062) {
            if (str.equals("wifiOrMobile")) {
                c13197i0 = T.get(1);
                comboBase.setSelection(c13197i0);
                comboBase.m34539a(new C12876d(T, str));
            }
            c13197i0 = T.get(2);
            comboBase.setSelection(c13197i0);
            comboBase.m34539a(new C12876d(T, str));
        }
        if (hashCode == 3649301 && str.equals(AnalyticsConstants.WIFI)) {
            c13197i0 = T.get(0);
            comboBase.setSelection(c13197i0);
            comboBase.m34539a(new C12876d(T, str));
        }
        c13197i0 = T.get(2);
        comboBase.setSelection(c13197i0);
        comboBase.m34539a(new C12876d(T, str));
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12882d
    /* renamed from: E9 */
    public void mo22501E9(String str) {
        s1.z.c.l.e(str, "languageCode");
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        s1.z.c.l.e(childFragmentManager, "fragmentManager");
        s1.z.c.l.e(str, "languageCode");
        C5766t5 c5766t5 = new C5766t5();
        Bundle bundle = new Bundle();
        bundle.putString("languageCode", str);
        bundle.putParcelable("message", null);
        c5766t5.setArguments(bundle);
        c5766t5.show(childFragmentManager, (String) null);
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12882d
    /* renamed from: Ha */
    public void mo22500Ha(List<String> list) {
        s1.z.c.l.e(list, "languages");
        Context context = getContext();
        AlertDialog.Builder builder = new AlertDialog.Builder(context != null ? C17422k.m16113E(context, true) : null, 2131952119);
        builder.setTitle(C2752R.string.SettingAddTranslationsLanguage);
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (String str : list) {
            arrayList.add(new Locale(str).getDisplayLanguage());
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        builder.setItems((CharSequence[]) array, new DialogInterface$OnClickListenerC12879g(list));
        builder.create().show();
    }

    /* renamed from: OA */
    public final AbstractC12881c m22508OA() {
        AbstractC12881c abstractC12881c = this.f37425a;
        if (abstractC12881c != null) {
            return abstractC12881c;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    /* renamed from: PA */
    public final C13197i0 m22507PA(int i, String str) {
        return new C13197i0(0, i, (String) null, str);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5721s5
    /* renamed from: Wn */
    public void mo22506Wn(String str, boolean z, Message message) {
        s1.z.c.l.e(str, "languageCode");
        AbstractC12881c abstractC12881c = this.f37425a;
        if (abstractC12881c != null) {
            abstractC12881c.mo22493F8(str, z);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12882d
    /* renamed from: a */
    public void mo22499a(int i) {
        Toast.makeText(requireContext(), i, 0).show();
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12882d
    /* renamed from: b8 */
    public void mo22498b8(boolean z) {
        View view = this.f37432h;
        if (view != null) {
            C19286f.m13683U(view, z);
        } else {
            s1.z.c.l.l("manageStorageContainer");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12882d
    /* renamed from: do */
    public void mo22497do() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        startActivity(new Intent(requireContext, StorageManagerActivity.class));
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12882d
    /* renamed from: fi */
    public void mo22496fi(String str, a<s> aVar) {
        s1.z.c.l.e(str, "language");
        s1.z.c.l.e(aVar, "callback");
        Context context = getContext();
        AlertDialog.Builder positiveButton = new AlertDialog.Builder(context != null ? C17422k.m16113E(context, true) : null, 2131952119).setPositiveButton(C2752R.string.btn_delete, new DialogInterface$OnClickListenerC12878f(aVar));
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        positiveButton.setMessage(requireContext.getResources().getString(C2752R.string.SettingTranslationsDeleteQuestion, str)).setNegativeButton(2131887867, (DialogInterface.OnClickListener) null).create().show();
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12882d
    /* renamed from: ks */
    public void mo22495ks(boolean z) {
        View view = this.f37427c;
        if (view != null) {
            C19286f.m13683U(view, z);
        } else {
            s1.z.c.l.l("addLanguageButton");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12882d
    /* renamed from: nf */
    public void mo22494nf(String str) {
        C13197i0 c13197i0;
        s1.z.c.l.e(str, "value");
        List<? extends C13197i0> T = i.T(new C13197i0[]{m22507PA(C2752R.string.SettingDownloadTranslationsWifi, AnalyticsConstants.WIFI), m22507PA(C2752R.string.SettingDownloadTranslationsWifiMobile, "wifiOrMobile"), m22507PA(C2752R.string.SettingDownloadTranslationsAsk, "ask")});
        ComboBase comboBase = this.f37428d;
        if (comboBase == null) {
            s1.z.c.l.l("autoDownloadTranslationsCombo");
            throw null;
        }
        comboBase.setVisibility(0);
        comboBase.setData(T);
        int hashCode = str.hashCode();
        if (hashCode == -244809062) {
            if (str.equals("wifiOrMobile")) {
                c13197i0 = T.get(1);
                comboBase.setSelection(c13197i0);
                comboBase.m34539a(new C12877e(T, str));
            }
            c13197i0 = T.get(2);
            comboBase.setSelection(c13197i0);
            comboBase.m34539a(new C12877e(T, str));
        }
        if (hashCode == 3649301 && str.equals(AnalyticsConstants.WIFI)) {
            c13197i0 = T.get(0);
            comboBase.setSelection(c13197i0);
            comboBase.m34539a(new C12877e(T, str));
        }
        c13197i0 = T.get(2);
        comboBase.setSelection(c13197i0);
        comboBase.m34539a(new C12877e(T, str));
    }

    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        C12872a.super.onAttach(context);
        C20399t1.C20418l c20418l = (C20399t1.C20418l) AbstractC17399l2.f48744a.m16142a().mo11175i();
        this.f37425a = (AbstractC12881c) c20418l.f57446d.get();
        this.f37426b = (AbstractC12891i) c20418l.f57448f.get();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.settings_data_storage, viewGroup, false);
    }

    public void onDestroy() {
        C12872a.super.onDestroy();
        AbstractC12881c abstractC12881c = this.f37425a;
        if (abstractC12881c != null) {
            abstractC12881c.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        C12872a.super.onResume();
        AbstractC12881c abstractC12881c = this.f37425a;
        if (abstractC12881c != null) {
            abstractC12881c.mo22490Q8();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C12872a.super.onViewCreated(view, bundle);
        View findViewById = view.findViewById(C2752R.C2754id.settingsStorageManager);
        s1.z.c.l.d(findViewById, "view.findViewById(R.id.settingsStorageManager)");
        this.f37432h = findViewById;
        findViewById.setOnClickListener(new View$OnClickListenerC12873a(0, this));
        View findViewById2 = view.findViewById(C2752R.C2754id.settingsTranslationFilesContainer);
        s1.z.c.l.d(findViewById2, "view.findViewById(R.id.s…ranslationFilesContainer)");
        this.f37431g = findViewById2;
        View findViewById3 = view.findViewById(C2752R.C2754id.settingsAutoDownloadTranslations);
        s1.z.c.l.d(findViewById3, "view.findViewById(R.id.s…AutoDownloadTranslations)");
        this.f37428d = (ComboBase) findViewById3;
        View findViewById4 = view.findViewById(C2752R.C2754id.settingsAutoDownloadMedia);
        s1.z.c.l.d(findViewById4, "view.findViewById(R.id.settingsAutoDownloadMedia)");
        this.f37429e = (ComboBase) findViewById4;
        View findViewById5 = view.findViewById(C2752R.C2754id.addTranslationLanguageBtn);
        s1.z.c.l.d(findViewById5, "view.findViewById(R.id.addTranslationLanguageBtn)");
        this.f37427c = findViewById5;
        findViewById5.setOnClickListener(new View$OnClickListenerC12873a(1, this));
        AbstractC12891i abstractC12891i = this.f37426b;
        if (abstractC12891i == null) {
            s1.z.c.l.l("itemPresenter");
            throw null;
        }
        C18898f c18898f = new C18898f(new C18910r(abstractC12891i, C2752R.layout.downloaded_language_item, new C12874b(), C12875c.f37437b));
        c18898f.setHasStableIds(true);
        this.f37433i = c18898f;
        View findViewById6 = view.findViewById(C2752R.C2754id.downloadedLanguagesRv);
        s1.z.c.l.d(findViewById6, "view.findViewById(R.id.downloadedLanguagesRv)");
        RecyclerView recyclerView = (RecyclerView) findViewById6;
        this.f37430f = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        RecyclerView recyclerView2 = this.f37430f;
        if (recyclerView2 == null) {
            s1.z.c.l.l("languagesRecyclerView");
            throw null;
        }
        recyclerView2.addItemDecoration(new C25595i(requireContext(), 1));
        RecyclerView recyclerView3 = this.f37430f;
        if (recyclerView3 == null) {
            s1.z.c.l.l("languagesRecyclerView");
            throw null;
        }
        C18898f c18898f2 = this.f37433i;
        if (c18898f2 == null) {
            s1.z.c.l.l("adapter");
            throw null;
        }
        recyclerView3.setAdapter(c18898f2);
        AbstractC12881c abstractC12881c = this.f37425a;
        if (abstractC12881c != null) {
            abstractC12881c.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }
}
