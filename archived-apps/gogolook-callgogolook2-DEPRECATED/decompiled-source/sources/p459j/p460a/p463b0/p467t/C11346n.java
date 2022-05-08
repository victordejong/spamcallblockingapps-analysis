package p459j.p460a.p463b0.p467t;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import androidx.exifinterface.media.ExifInterface;
import androidx.media2.exoplayer.external.text.cea.Cea708Decoder;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.NewsCenterActivity;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.about.AboutGogolookActivity;
import gogolook.callgogolook2.block.BlockManageActivity;
import gogolook.callgogolook2.gson.MainDrawerRemoteItemList;
import gogolook.callgogolook2.myprofile.MyTagActivity;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity;
import gogolook.callgogolook2.phonebook.ContactListActivity;
import gogolook.callgogolook2.setting.CarrierIdSettingsActivity;
import gogolook.callgogolook2.setting.SettingsActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p459j.p460a.p463b0.p468u.C11397b;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p521j0.p522u.p523d.C12612g0;
import p459j.p460a.p537m.C13015a;
import p459j.p460a.p538m0.C13020c;
import p459j.p460a.p549o0.C13297a;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13884a4;
import p459j.p460a.p582w0.C14060l2;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14125q;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p587d5.C13978e;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14979k;
import p626l.C14985o;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15005e0;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p640y.C15086c;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� +2\u00020\u0001:\u0001+B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J&\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u000e\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0016H\u0002J\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u0018H\u0082@ø\u0001��¢\u0006\u0002\u0010\u0019J\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00142\b\b\u0001\u0010\u001b\u001a\u00020\u001cH\u0003J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00140\u0018H\u0002J\u0016\u0010\u001e\u001a\u00020\u001f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0018H\u0002J\u0006\u0010 \u001a\u00020\u0011J\b\u0010!\u001a\u00020\u0011H\u0007J\b\u0010\"\u001a\u00020#H\u0003J\u0010\u0010$\u001a\u00020\u00112\u0006\u0010%\u001a\u00020&H\u0002J'\u0010'\u001a\u00020\u0011\"\u0004\b��\u0010(*\b\u0012\u0004\u0012\u0002H(0\u00132\b\u0010)\u001a\u0004\u0018\u0001H(H\u0002¢\u0006\u0002\u0010*R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\n\u001a\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006,"}, m815d2 = {"Lgogolook/callgogolook2/main/drawer/MainDrawerController;", "", "mainActivityView", "Lgogolook/callgogolook2/main/drawer/IMainActivityView;", "(Lgogolook/callgogolook2/main/drawer/IMainActivityView;)V", "loadingMutex", "Lkotlinx/coroutines/sync/Mutex;", "getLoadingMutex", "()Lkotlinx/coroutines/sync/Mutex;", "loadingMutex$delegate", "Lkotlin/Lazy;", "mainDrawerItemAdapter", "Lgogolook/callgogolook2/main/drawer/MainDrawerItemAdapter;", "getMainDrawerItemAdapter", "()Lgogolook/callgogolook2/main/drawer/MainDrawerItemAdapter;", "mainDrawerItemAdapter$delegate", "addRemoteDrawerItem", "", "itemList", "", "Lgogolook/callgogolook2/adapter/ViewData;", "buildSeperatorItem", "Lkotlin/Function0;", "asyncBuildDrawerItemList", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "build", "drawerItemId", "", "buildDrawerItemList", "checkHasAnyRedDot", "", "initAdapter", "notifyItemChanged", "queryNewsCount", "", "updateItemWithLock", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "addItemIfNotNull", ExifInterface.GPS_DIRECTION_TRUE, "item", "(Ljava/util/List;Ljava/lang/Object;)V", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.t.n */
/* loaded from: classes2-dex2jar.jar:j/a/b0/t/n.class */
public final class C11346n {

    /* renamed from: d */
    public static final /* synthetic */ AbstractC14906i[] f25440d;

    /* renamed from: a */
    public final AbstractC14974f f25441a = C14975g.m662a(C11378p0.f25477a);

    /* renamed from: b */
    public final AbstractC14974f f25442b = C14975g.m662a(C11376o0.f25475a);

    /* renamed from: c */
    public final AbstractC11332h f25443c;

    /* renamed from: j.a.b0.t.n$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$a.class */
    public static final class C11347a {
        public C11347a() {
        }

        public /* synthetic */ C11347a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.b0.t.n$a0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$a0.class */
    public static final class C11348a0 extends AbstractC15150l implements AbstractC15118l<Context, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f25444a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11348a0(String str) {
            super(1);
            this.f25444a = str;
        }

        /* renamed from: a */
        public final void m9741a(Context context) {
            C11397b.m9694a(this.f25444a, null, 2, null);
            C13884a4.m3187a(context, 1, new Bundle(), (C13884a4.AbstractC13890d) null);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Context context) {
            m9741a(context);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.b0.t.n$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$b.class */
    public static final class C11349b extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public final /* synthetic */ String f25445a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11349b(String str) {
            super(1);
            this.f25445a = str;
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            C15149k.m377b(context, "it");
            return this.f25445a;
        }
    }

    /* renamed from: j.a.b0.t.n$b0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$b0.class */
    public static final class C11350b0 extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public static final C11350b0 f25446a = new C11350b0();

        public C11350b0() {
            super(1);
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            C15149k.m377b(context, "c");
            String string = context.getString(R$string.group_contacts);
            C15149k.m383a((Object) string, "c.getString(R.string.group_contacts)");
            return string;
        }
    }

    /* renamed from: j.a.b0.t.n$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$c.class */
    public static final class C11351c extends AbstractC15150l implements AbstractC15118l<Context, Drawable> {

        /* renamed from: a */
        public static final C11351c f25447a = new C11351c();

        public C11351c() {
            super(1);
        }

        /* renamed from: a */
        public final Drawable invoke(Context context) {
            C15149k.m377b(context, "c");
            return context.getDrawable(R$drawable.ic_drawer_campaign_default);
        }
    }

    /* renamed from: j.a.b0.t.n$c0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$c0.class */
    public static final class C11352c0 extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public static final C11352c0 f25448a = new C11352c0();

        public C11352c0() {
            super(1);
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            C15149k.m377b(context, "c");
            String string = context.getString(R$string.aboutus_page_title);
            C15149k.m383a((Object) string, "c.getString(R.string.aboutus_page_title)");
            return string;
        }
    }

    /* renamed from: j.a.b0.t.n$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$d.class */
    public static final class C11353d extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public final /* synthetic */ String f25449a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11353d(String str) {
            super(1);
            this.f25449a = str;
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            C15149k.m377b(context, "it");
            return this.f25449a;
        }
    }

    /* renamed from: j.a.b0.t.n$d0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$d0.class */
    public static final class C11354d0 extends AbstractC15150l implements AbstractC15118l<Context, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f25450a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11354d0(String str) {
            super(1);
            this.f25450a = str;
        }

        /* renamed from: a */
        public final void m9735a(Context context) {
            C11397b.m9694a(this.f25450a, null, 2, null);
            C14191v.m2257a(context, new Intent(context, AboutGogolookActivity.class), null, 2, null);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Context context) {
            m9735a(context);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.b0.t.n$e */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$e.class */
    public static final class C11355e extends AbstractC15150l implements AbstractC15118l<Context, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f25451a;

        /* renamed from: b */
        public final /* synthetic */ String f25452b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11355e(String str, String str2) {
            super(1);
            this.f25451a = str;
            this.f25452b = str2;
        }

        /* renamed from: a */
        public final void m9734a(Context context) {
            C11397b.m9695a(this.f25451a, this.f25452b);
            Uri parse = Uri.parse(this.f25452b);
            if (context != null) {
                Intent a = C13297a.m4312a(context, parse, null, null, 1);
                if (a == null) {
                    a = new Intent("android.intent.action.VIEW");
                    a.setData(parse);
                    a.setFlags(335544320);
                }
                C14191v.m2257a(context, a, null, 2, null);
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Context context) {
            m9734a(context);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.b0.t.n$e0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$e0.class */
    public static final class C11356e0 implements AbstractC12391a {
        @Override // p459j.p460a.p511h.AbstractC12391a
        public int getViewType() {
            return 5;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/main/drawer/MainDrawerController$asyncBuildDrawerItemList$2", m472f = "MainDrawerController.kt", m471l = {170}, m470m = "invokeSuspend")
    /* renamed from: j.a.b0.t.n$f */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$f.class */
    public static final class C11357f extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super List<? extends AbstractC12391a>>, Object> {

        /* renamed from: a */
        public CoroutineScope f25453a;

        /* renamed from: b */
        public int f25454b;

        public C11357f(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11357f fVar = new C11357f(dVar);
            fVar.f25453a = (CoroutineScope) obj;
            return fVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super List<? extends AbstractC12391a>> dVar) {
            return ((C11357f) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f25454b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                return C11346n.this.m9759a();
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    /* renamed from: j.a.b0.t.n$f0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$f0.class */
    public static final class C11358f0 extends AbstractC15150l implements AbstractC15118l<Context, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f25456a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11358f0(String str) {
            super(1);
            this.f25456a = str;
        }

        /* renamed from: a */
        public final void m9733a(Context context) {
            C11397b.m9694a(this.f25456a, null, 2, null);
            C14191v.m2257a(context, new Intent(context, ContactListActivity.class), null, 2, null);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Context context) {
            m9733a(context);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.b0.t.n$g */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$g.class */
    public static final class C11359g extends AbstractC15150l implements AbstractC15118l<Context, Drawable> {

        /* renamed from: a */
        public static final C11359g f25457a = new C11359g();

        public C11359g() {
            super(1);
        }

        /* renamed from: a */
        public final Drawable invoke(Context context) {
            C15149k.m377b(context, "c");
            return context.getDrawable(2131231219);
        }
    }

    /* renamed from: j.a.b0.t.n$g0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$g0.class */
    public static final class C11360g0 extends AbstractC15150l implements AbstractC15118l<Context, Drawable> {

        /* renamed from: a */
        public static final C11360g0 f25458a = new C11360g0();

        public C11360g0() {
            super(1);
        }

        /* renamed from: a */
        public final Drawable invoke(Context context) {
            C15149k.m377b(context, "c");
            return context.getDrawable(2131231210);
        }
    }

    /* renamed from: j.a.b0.t.n$h */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$h.class */
    public static final class C11361h extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public static final C11361h f25459a = new C11361h();

        public C11361h() {
            super(1);
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            C15149k.m377b(context, "c");
            String string = context.getString(R$string.drawer_my_report);
            C15149k.m383a((Object) string, "c.getString(R.string.drawer_my_report)");
            return string;
        }
    }

    /* renamed from: j.a.b0.t.n$h0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$h0.class */
    public static final class C11362h0 extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public static final C11362h0 f25460a = new C11362h0();

        public C11362h0() {
            super(1);
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            C15149k.m377b(context, "c");
            String string = context.getString(R$string.maintab_blocklist);
            C15149k.m383a((Object) string, "c.getString(R.string.maintab_blocklist)");
            return string;
        }
    }

    /* renamed from: j.a.b0.t.n$i */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$i.class */
    public static final class C11363i extends AbstractC15150l implements AbstractC15118l<Context, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f25461a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11363i(String str) {
            super(1);
            this.f25461a = str;
        }

        /* renamed from: a */
        public final void m9728a(Context context) {
            C11397b.m9694a(this.f25461a, null, 2, null);
            if (C14137r4.m2369i()) {
                C14191v.m2257a(context, new Intent(context, MyTagActivity.class), null, 2, null);
            } else if (context != null && C14191v.m2255b(context)) {
                C14137r4.m2385a(context);
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Context context) {
            m9728a(context);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.b0.t.n$i0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$i0.class */
    public static final class C11364i0 extends AbstractC15150l implements AbstractC15118l<Context, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f25462a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11364i0(String str) {
            super(1);
            this.f25462a = str;
        }

        /* renamed from: a */
        public final void m9727a(Context context) {
            C11397b.m9694a(this.f25462a, null, 2, null);
            C14191v.m2257a(context, new Intent(context, BlockManageActivity.class), null, 2, null);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Context context) {
            m9727a(context);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.b0.t.n$j */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$j.class */
    public static final class C11365j extends AbstractC15150l implements AbstractC15118l<Context, Drawable> {

        /* renamed from: a */
        public final /* synthetic */ C13015a.C13017b f25463a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11365j(C13015a.C13017b bVar) {
            super(1);
            this.f25463a = bVar;
        }

        /* renamed from: a */
        public final Drawable invoke(Context context) {
            C15149k.m377b(context, "c");
            C13015a.C13017b bVar = this.f25463a;
            C15149k.m383a((Object) bVar, "campaign165Obj");
            return context.getDrawable(bVar.m4768a());
        }
    }

    /* renamed from: j.a.b0.t.n$j0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$j0.class */
    public static final class C11366j0 extends AbstractC15150l implements AbstractC15118l<Context, Drawable> {

        /* renamed from: a */
        public static final C11366j0 f25464a = new C11366j0();

        public C11366j0() {
            super(1);
        }

        /* renamed from: a */
        public final Drawable invoke(Context context) {
            C15149k.m377b(context, "c");
            return context.getDrawable(R$drawable.ic_drawer_protection);
        }
    }

    /* renamed from: j.a.b0.t.n$k */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$k.class */
    public static final class C11367k extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public final /* synthetic */ C13015a.C13017b f25465a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11367k(C13015a.C13017b bVar) {
            super(1);
            this.f25465a = bVar;
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            C15149k.m377b(context, "it");
            C13015a.C13017b bVar = this.f25465a;
            C15149k.m383a((Object) bVar, "campaign165Obj");
            String b = bVar.m4767b();
            C15149k.m383a((Object) b, "campaign165Obj.title");
            return b;
        }
    }

    /* renamed from: j.a.b0.t.n$k0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$k0.class */
    public static final class C11368k0 extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public static final C11368k0 f25466a = new C11368k0();

        public C11368k0() {
            super(1);
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            C15149k.m377b(context, "c");
            String string = context.getString(R$string.maintab_protection);
            C15149k.m383a((Object) string, "c.getString(R.string.maintab_protection)");
            return string;
        }
    }

    /* renamed from: j.a.b0.t.n$l */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$l.class */
    public static final class C11369l extends AbstractC15150l implements AbstractC15118l<Context, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f25467a;

        /* renamed from: b */
        public final /* synthetic */ C13015a.C13017b f25468b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11369l(String str, C13015a.C13017b bVar) {
            super(1);
            this.f25467a = str;
            this.f25468b = bVar;
        }

        /* renamed from: a */
        public final void m9722a(Context context) {
            C11397b.m9694a(this.f25467a, null, 2, null);
            try {
                C13015a.C13017b bVar = this.f25468b;
                C15149k.m383a((Object) bVar, "campaign165Obj");
                C14191v.m2257a(context, new Intent("android.intent.action.VIEW", Uri.parse(bVar.m4766c())), null, 2, null);
            } catch (ActivityNotFoundException e) {
                C14080m2.m2613a("MainActivity.onOptionsItemSelected", e, true);
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Context context) {
            m9722a(context);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.b0.t.n$l0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$l0.class */
    public static final class C11370l0 extends AbstractC15150l implements AbstractC15118l<Context, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f25469a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11370l0(String str) {
            super(1);
            this.f25469a = str;
        }

        /* renamed from: a */
        public final void m9721a(Context context) {
            C11397b.m9694a(this.f25469a, null, 2, null);
            Intent a = OfflineDbActivity.m26782a(context, "main_drawer");
            C15149k.m383a((Object) a, "OfflineDbActivity.create…neDbActivity.FROM_DRAWER)");
            C14191v.m2257a(context, a, null, 2, null);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Context context) {
            m9721a(context);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.b0.t.n$m */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$m.class */
    public static final class C11371m extends AbstractC15150l implements AbstractC15118l<Context, Drawable> {

        /* renamed from: a */
        public static final C11371m f25470a = new C11371m();

        public C11371m() {
            super(1);
        }

        /* renamed from: a */
        public final Drawable invoke(Context context) {
            C15149k.m377b(context, "c");
            return context.getDrawable(2131231212);
        }
    }

    /* renamed from: j.a.b0.t.n$m0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$m0.class */
    public static final class C11372m0 extends AbstractC15150l implements AbstractC15107a<AbstractC12391a> {
        public C11372m0() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final AbstractC12391a invoke() {
            return C11346n.this.m9755a("seperator");
        }
    }

    /* renamed from: j.a.b0.t.n$n */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$n.class */
    public static final class C11373n extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public static final C11373n f25472a = new C11373n();

        public C11373n() {
            super(1);
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            C15149k.m377b(context, "c");
            String string = context.getString(R$string.drawer_carrier_id);
            C15149k.m383a((Object) string, "c.getString(R.string.drawer_carrier_id)");
            return string;
        }
    }

    /* renamed from: j.a.b0.t.n$n0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$n0.class */
    public static final class C11374n0 extends AbstractC15150l implements AbstractC15107a<AbstractC12391a> {
        public C11374n0() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final AbstractC12391a invoke() {
            return C11346n.this.m9755a("seperator");
        }
    }

    /* renamed from: j.a.b0.t.n$o */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$o.class */
    public static final class C11375o extends AbstractC15150l implements AbstractC15118l<Context, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f25474a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11375o(String str) {
            super(1);
            this.f25474a = str;
        }

        /* renamed from: a */
        public final void m9718a(Context context) {
            C11397b.m9694a(this.f25474a, null, 2, null);
            C13978e.f31386a.m9459a("prefs_seen_carrier_id_settings", (String) true);
            Intent a = CarrierIdSettingsActivity.m26146a(context);
            C15149k.m383a((Object) a, "CarrierIdSettingsActivity.getActivityIntent(it)");
            C14191v.m2257a(context, a, null, 2, null);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Context context) {
            m9718a(context);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.b0.t.n$o0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$o0.class */
    public static final class C11376o0 extends AbstractC15150l implements AbstractC15107a<Mutex> {

        /* renamed from: a */
        public static final C11376o0 f25475a = new C11376o0();

        public C11376o0() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Mutex invoke() {
            return MutexKt.Mutex$default(false, 1, null);
        }
    }

    /* renamed from: j.a.b0.t.n$p */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$p.class */
    public static final class C11377p extends AbstractC15150l implements AbstractC15118l<Context, Drawable> {

        /* renamed from: a */
        public static final C11377p f25476a = new C11377p();

        public C11377p() {
            super(1);
        }

        /* renamed from: a */
        public final Drawable invoke(Context context) {
            C15149k.m377b(context, "c");
            return context.getDrawable(2131231221);
        }
    }

    /* renamed from: j.a.b0.t.n$p0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$p0.class */
    public static final class C11378p0 extends AbstractC15150l implements AbstractC15107a<C11390o> {

        /* renamed from: a */
        public static final C11378p0 f25477a = new C11378p0();

        public C11378p0() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C11390o invoke() {
            return new C11390o(C15005e0.m624a(C14985o.m644a(0, new C11338j()), C14985o.m644a(1, new C11344m()), C14985o.m644a(5, new C11392p()), C14985o.m644a(4, new C11321b()), C14985o.m644a(2, new C11331g()), C14985o.m644a(3, new C11394r())));
        }
    }

    /* renamed from: j.a.b0.t.n$q */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$q.class */
    public static final class C11379q extends AbstractC15150l implements AbstractC15118l<Context, Drawable> {

        /* renamed from: a */
        public static final C11379q f25478a = new C11379q();

        public C11379q() {
            super(1);
        }

        /* renamed from: a */
        public final Drawable invoke(Context context) {
            C15149k.m377b(context, "c");
            return context.getDrawable(2131231213);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/main/drawer/MainDrawerController$updateItemWithLock$1", m472f = "MainDrawerController.kt", m471l = {122, 447, Cea708Decoder.CHARACTER_LOWER_RIGHT_BORDER}, m470m = "invokeSuspend")
    /* renamed from: j.a.b0.t.n$q0 */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$q0.class */
    public static final class C11380q0 extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f25479a;

        /* renamed from: b */
        public Object f25480b;

        /* renamed from: c */
        public int f25481c;

        /* renamed from: d */
        public int f25482d;

        public C11380q0(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11380q0 q0Var = new C11380q0(dVar);
            q0Var.f25479a = (CoroutineScope) obj;
            return q0Var;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11380q0) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            int i;
            Mutex mutex;
            Object a;
            Mutex mutex2;
            Object a2 = C15064c.m478a();
            int i2 = this.f25482d;
            try {
                if (i2 != 0) {
                    if (i2 == 1) {
                        i = this.f25481c;
                        mutex = (Mutex) this.f25480b;
                        if (obj instanceof C14979k.C14981b) {
                            throw ((C14979k.C14981b) obj).f33014a;
                        }
                    } else if (i2 == 2) {
                        mutex2 = (Mutex) this.f25480b;
                        try {
                            if (!(obj instanceof C14979k.C14981b)) {
                                a = obj;
                                List<? extends AbstractC12391a> list = (List) a;
                                C11390o c = C11346n.this.m9747c();
                                c.m9704a(list);
                                c.notifyDataSetChanged();
                                boolean booleanValue = C15066b.m474a(C11346n.this.m9754a(list)).booleanValue();
                                C11397b.f25506d.m9693a(booleanValue);
                                C11346n.this.f25443c.mo9776a(booleanValue);
                                C14989s sVar = C14989s.f33022a;
                                mutex2.unlock(null);
                                return C14989s.f33022a;
                            }
                            throw ((C14979k.C14981b) obj).f33014a;
                        } catch (Throwable th) {
                            th = th;
                            mutex = mutex2;
                            mutex.unlock(null);
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    Mutex b = C11346n.this.m9749b();
                    i = 0;
                    this.f25480b = b;
                    this.f25481c = 0;
                    this.f25482d = 1;
                    mutex = b;
                    if (b.lock(null, this) == a2) {
                        return a2;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                C11397b.m9692b();
                C11346n nVar = C11346n.this;
                this.f25480b = mutex;
                this.f25481c = i;
                this.f25482d = 2;
                a = nVar.m9750a(this);
                if (a == a2) {
                    return a2;
                }
                mutex2 = mutex;
                List<? extends AbstractC12391a> list2 = (List) a;
                C11390o c2 = C11346n.this.m9747c();
                c2.m9704a(list2);
                c2.notifyDataSetChanged();
                boolean booleanValue2 = C15066b.m474a(C11346n.this.m9754a(list2)).booleanValue();
                C11397b.f25506d.m9693a(booleanValue2);
                C11346n.this.f25443c.mo9776a(booleanValue2);
                C14989s sVar2 = C14989s.f33022a;
                mutex2.unlock(null);
                return C14989s.f33022a;
            } catch (Throwable th2) {
                th = th2;
                mutex.unlock(null);
                throw th;
            }
        }
    }

    /* renamed from: j.a.b0.t.n$r */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$r.class */
    public static final class C11381r extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public static final C11381r f25484a = new C11381r();

        public C11381r() {
            super(1);
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            C15149k.m377b(context, "c");
            String string = context.getString(R$string.drawer_whoscall_card);
            C15149k.m383a((Object) string, "c.getString(R.string.drawer_whoscall_card)");
            return string;
        }
    }

    /* renamed from: j.a.b0.t.n$s */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$s.class */
    public static final class C11382s extends AbstractC15150l implements AbstractC15118l<Context, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f25485a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11382s(String str) {
            super(1);
            this.f25485a = str;
        }

        /* renamed from: a */
        public final void m9714a(Context context) {
            C11397b.m9694a(this.f25485a, null, 2, null);
            if (context != null) {
                C14191v.m2257a(context, C14125q.m2416a(), null, 2, null);
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Context context) {
            m9714a(context);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.b0.t.n$t */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$t.class */
    public static final class C11383t extends AbstractC15150l implements AbstractC15118l<Context, Drawable> {

        /* renamed from: a */
        public static final C11383t f25486a = new C11383t();

        public C11383t() {
            super(1);
        }

        /* renamed from: a */
        public final Drawable invoke(Context context) {
            C15149k.m377b(context, "c");
            return context.getDrawable(2131231216);
        }
    }

    /* renamed from: j.a.b0.t.n$u */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$u.class */
    public static final class C11384u extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public static final C11384u f25487a = new C11384u();

        public C11384u() {
            super(1);
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            C15149k.m377b(context, "c");
            String string = context.getString(R$string.newscenter);
            C15149k.m383a((Object) string, "c.getString(R.string.newscenter)");
            return string;
        }
    }

    /* renamed from: j.a.b0.t.n$v */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$v.class */
    public static final class C11385v extends AbstractC15150l implements AbstractC15118l<Context, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f25488a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11385v(String str) {
            super(1);
            this.f25488a = str;
        }

        /* renamed from: a */
        public final void m9711a(Context context) {
            C11397b.m9694a(this.f25488a, null, 2, null);
            C14191v.m2257a(context, new Intent(context, NewsCenterActivity.class), null, 2, null);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Context context) {
            m9711a(context);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.b0.t.n$w */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$w.class */
    public static final class C11386w extends AbstractC15150l implements AbstractC15118l<Context, Drawable> {

        /* renamed from: a */
        public static final C11386w f25489a = new C11386w();

        public C11386w() {
            super(1);
        }

        /* renamed from: a */
        public final Drawable invoke(Context context) {
            C15149k.m377b(context, "c");
            return context.getDrawable(2131231220);
        }
    }

    /* renamed from: j.a.b0.t.n$x */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$x.class */
    public static final class C11387x extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public static final C11387x f25490a = new C11387x();

        public C11387x() {
            super(1);
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            C15149k.m377b(context, "c");
            String string = context.getString(R$string.title_setting);
            C15149k.m383a((Object) string, "c.getString(R.string.title_setting)");
            return string;
        }
    }

    /* renamed from: j.a.b0.t.n$y */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$y.class */
    public static final class C11388y extends AbstractC15150l implements AbstractC15118l<Context, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f25491a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11388y(String str) {
            super(1);
            this.f25491a = str;
        }

        /* renamed from: a */
        public final void m9708a(Context context) {
            C11397b.m9694a(this.f25491a, null, 2, null);
            C14191v.m2257a(context, new Intent(context, SettingsActivity.class), null, 2, null);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Context context) {
            m9708a(context);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.b0.t.n$z */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/n$z.class */
    public static final class C11389z extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public static final C11389z f25492a = new C11389z();

        public C11389z() {
            super(1);
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            C15149k.m377b(context, "c");
            String string = context.getString(R$string.drawer_help);
            C15149k.m383a((Object) string, "c.getString(R.string.drawer_help)");
            return string;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11346n.class), "mainDrawerItemAdapter", "getMainDrawerItemAdapter()Lgogolook/callgogolook2/main/drawer/MainDrawerItemAdapter;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C11346n.class), "loadingMutex", "getLoadingMutex()Lkotlinx/coroutines/sync/Mutex;");
        C15131a0.m412a(sVar2);
        f25440d = new AbstractC14906i[]{sVar, sVar2};
        new C11347a(null);
    }

    public C11346n(AbstractC11332h hVar) {
        C15149k.m377b(hVar, "mainActivityView");
        this.f25443c = hVar;
    }

    @WorkerThread
    /* renamed from: a */
    public final AbstractC12391a m9755a(String str) {
        AbstractC12391a aVar;
        AbstractC12391a aVar2 = null;
        C11343l lVar = null;
        try {
            switch (str.hashCode()) {
                case -1897773476:
                    if (str.equals("send_feedback")) {
                        aVar = new C11393q(3, C11389z.f25492a, false, new C11348a0(str), 4, null);
                        break;
                    }
                    aVar = null;
                    break;
                case -1422436081:
                    if (str.equals("adfree")) {
                        aVar = C11333i.f25423i.m9769a();
                        break;
                    }
                    aVar = null;
                    break;
                case -1396342996:
                    if (str.equals("banner")) {
                        aVar = C11319a.f25410e.m9785a(4);
                        break;
                    }
                    aVar = null;
                    break;
                case -1059699065:
                    if (str.equals("my_tag")) {
                        aVar = new C11343l(1, C11359g.f25457a, null, C11361h.f25459a, false, new C11363i(str), 20, null);
                        break;
                    }
                    aVar = null;
                    break;
                case 3198:
                    if (str.equals("db")) {
                        aVar = new C11343l(1, C11366j0.f25464a, null, C11368k0.f25466a, false, new C11370l0(str), 20, null);
                        break;
                    }
                    aVar = null;
                    break;
                case 3046160:
                    if (str.equals("card")) {
                        if (C14125q.m2414b()) {
                            lVar = new C11343l(1, C11377p.f25476a, null, C11381r.f25484a, false, new C11382s(str), 20, null);
                        }
                        return lVar;
                    }
                    aVar = null;
                    break;
                case 3377875:
                    if (str.equals("news")) {
                        aVar = new C11343l(1, C11383t.f25486a, null, C11384u.f25487a, m9742f() > 0, new C11385v(str), 4, null);
                        break;
                    }
                    aVar = null;
                    break;
                case 92611469:
                    if (str.equals("about")) {
                        aVar = new C11393q(3, C11352c0.f25448a, false, new C11354d0(str), 4, null);
                        break;
                    }
                    aVar = null;
                    break;
                case 93832333:
                    if (str.equals("block") && !C13891a.m3154h()) {
                        aVar = new C11343l(1, C11360g0.f25458a, null, C11362h0.f25460a, false, new C11364i0(str), 20, null);
                        break;
                    }
                    aVar = null;
                    break;
                case 806522818:
                    if (str.equals("carrier_id") && C12612g0.m5756u()) {
                        aVar = new C11343l(1, C11371m.f25470a, null, C11373n.f25472a, !C13978e.f31386a.m9462a("prefs_seen_carrier_id_settings", (Boolean) false), new C11375o(str), 4, null);
                        break;
                    }
                    aVar = null;
                    break;
                case 1277679965:
                    if (str.equals("contact_list") && !C13891a.m3153i()) {
                        aVar = new C11343l(1, C11379q.f25478a, null, C11350b0.f25446a, false, new C11358f0(str), 20, null);
                        break;
                    }
                    aVar = null;
                    break;
                case 1847346529:
                    if (str.equals("seperator")) {
                        aVar = new C11356e0();
                        break;
                    }
                    aVar = null;
                    break;
                case 1931643173:
                    if (str.equals("report_165")) {
                        C13015a.C13017b a = C13015a.m4770a();
                        if (C13015a.m4769b()) {
                            C15149k.m383a((Object) a, "campaign165Obj");
                            if (a.m4765d()) {
                                aVar = new C11343l(1, new C11365j(a), null, new C11367k(a), false, new C11369l(str, a), 20, null);
                                break;
                            }
                        }
                        aVar = null;
                        break;
                    }
                    aVar = null;
                    break;
                case 1985941072:
                    if (str.equals("setting")) {
                        aVar = new C11343l(1, C11386w.f25489a, null, C11387x.f25490a, !C13878a3.m3231b() && C13878a3.m3252J(), new C11388y(str), 4, null);
                        break;
                    }
                    aVar = null;
                    break;
                default:
                    aVar = null;
                    break;
            }
            if (aVar != null) {
                C11397b.m9696a(str);
            }
            aVar2 = aVar;
        } catch (Throwable th) {
            C14060l2.m2705a(th);
        }
        return aVar2;
    }

    /* renamed from: a */
    public final /* synthetic */ Object m9750a(AbstractC15044d<? super List<? extends AbstractC12391a>> dVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C11357f(null), dVar);
    }

    /* renamed from: a */
    public final List<AbstractC12391a> m9759a() {
        ArrayList arrayList = new ArrayList();
        System.currentTimeMillis();
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("adfree"));
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("seperator"));
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("block"));
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("contact_list"));
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("db"));
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("my_tag"));
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("report_165"));
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("carrier_id"));
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("card"));
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("seperator"));
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("news"));
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("setting"));
        m9752a((List<AbstractC12391a>) arrayList, (AbstractC15107a<? extends AbstractC12391a>) new C11372m0());
        C11326d.m9781a(arrayList, new C11374n0());
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("seperator"));
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("send_feedback"));
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("about"));
        m9753a((List<ArrayList>) arrayList, (ArrayList) m9755a("banner"));
        return arrayList;
    }

    /* renamed from: a */
    public final <T> void m9753a(List<T> list, T t) {
        if (t != null) {
            list.add(t);
        }
    }

    /* renamed from: a */
    public final void m9752a(List<AbstractC12391a> list, AbstractC15107a<? extends AbstractC12391a> aVar) {
        try {
            List<MainDrawerRemoteItemList.DrawerItemGroup> a = MainDrawerRemoteItemList.Companion.m28403a().m28404a();
            if (a != null) {
                for (MainDrawerRemoteItemList.DrawerItemGroup drawerItemGroup : a) {
                    AbstractC12391a aVar2 = (AbstractC12391a) aVar.invoke();
                    if (aVar2 != null) {
                        list.add(aVar2);
                    }
                    String b = drawerItemGroup.m28398b();
                    if (b != null) {
                        if (!(b.length() > 0)) {
                            b = null;
                        }
                        if (b != null) {
                            C11397b.m9696a(b);
                            list.add(new C11330f(2, new C11349b(b)));
                            List<MainDrawerRemoteItemList.DrawerItem> a2 = drawerItemGroup.m28399a();
                            if (a2 != null) {
                                for (MainDrawerRemoteItemList.DrawerItem drawerItem : a2) {
                                    String c = drawerItem.m28400c();
                                    if (c != null) {
                                        if (!(c.length() > 0)) {
                                            c = null;
                                        }
                                        if (c != null) {
                                            String a3 = drawerItem.m28402a();
                                            if (a3 != null) {
                                                if (!(a3.length() > 0)) {
                                                    a3 = null;
                                                }
                                                if (a3 != null) {
                                                    C11397b.m9696a(c);
                                                    list.add(new C11343l(1, C11351c.f25447a, drawerItem.m28401b(), new C11353d(c), false, new C11355e(c, a3), 16, null));
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            C14060l2.m2705a(th);
        }
    }

    /* renamed from: a */
    public final void m9751a(CoroutineScope coroutineScope) {
        if (CoroutineScopeKt.isActive(coroutineScope) && !m9749b().isLocked()) {
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C11380q0(null), 3, null);
        }
    }

    /* renamed from: a */
    public final boolean m9754a(List<? extends AbstractC12391a> list) {
        boolean z;
        Iterator<T> it = list.iterator();
        do {
            z = false;
            if (!it.hasNext()) {
                return false;
            }
            AbstractC12391a aVar = (AbstractC12391a) it.next();
            if (aVar instanceof C11343l) {
                z = ((C11343l) aVar).mo9761e();
            } else if (aVar instanceof C11393q) {
                z = ((C11393q) aVar).m9700c();
            }
        } while (!z);
        return true;
    }

    /* renamed from: b */
    public final Mutex m9749b() {
        AbstractC14974f fVar = this.f25442b;
        AbstractC14906i iVar = f25440d[1];
        return (Mutex) fVar.getValue();
    }

    /* renamed from: c */
    public final C11390o m9747c() {
        AbstractC14974f fVar = this.f25441a;
        AbstractC14906i iVar = f25440d[0];
        return (C11390o) fVar.getValue();
    }

    /* renamed from: d */
    public final void m9745d() {
        RecyclerView t = this.f25443c.mo9775t();
        if (t != null && t.getAdapter() == null) {
            t.setAdapter(m9747c());
        }
    }

    @UiThread
    /* renamed from: e */
    public final void m9743e() {
        m9751a(this.f25443c.mo9774z());
    }

    @WorkerThread
    /* renamed from: f */
    public final int m9742f() {
        int i;
        System.currentTimeMillis();
        try {
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            Cursor query = o.getContentResolver().query(C13020c.f29447a, new String[]{"_id"}, "_read = 0", null, null);
            i = 0;
            if (query != null) {
                Integer valueOf = Integer.valueOf(query.getCount());
                if (!(valueOf.intValue() > 0)) {
                    valueOf = null;
                }
                i = valueOf != null ? valueOf.intValue() : 0;
                C15086c.m447a(query, null);
            }
        } catch (Throwable th) {
            C14060l2.m2705a(th);
            i = 0;
        }
        return i;
    }
}
