package p459j.p460a.p521j0.p529x;

import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import androidx.media2.exoplayer.external.extractor.mp4.MetadataUtil;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject;
import gogolook.callgogolook2.vas.util.SimpleVasInfoPack;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p488f.p490q.AbstractC11893j;
import p459j.p460a.p474c0.p488f.p490q.C11876e;
import p459j.p460a.p474c0.p488f.p490q.C11885g;
import p459j.p460a.p474c0.p488f.p490q.C11888h;
import p459j.p460a.p474c0.p488f.p490q.C11898k;
import p459j.p460a.p582w0.C14060l2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14172t3;
import p459j.p460a.p582w0.p589f5.C14005a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0002J\u0019\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u0005H\u0082@ø\u0001��¢\u0006\u0002\u0010\u0011J\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0082@ø\u0001��¢\u0006\u0002\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0014\u001a\u00020\u0015H\u0082@ø\u0001��¢\u0006\u0002\u0010\u0016J!\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\n\u001a\u00020\u0005H\u0096@ø\u0001��¢\u0006\u0002\u0010\u001dJ#\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u0018H\u0082@ø\u0001��¢\u0006\u0002\u0010\"J#\u0010#\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u0018H\u0082@ø\u0001��¢\u0006\u0002\u0010\"JB\u0010$\u001a\u00020\u00052\b\u0010%\u001a\u0004\u0018\u00010\u00152\b\u0010&\u001a\u0004\u0018\u00010\u00152\b\u0010'\u001a\u0004\u0018\u00010\u00152\u0006\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u00152\b\u0010+\u001a\u0004\u0018\u00010,H\u0016J$\u0010-\u001a\u00020\u001a2\b\u0010%\u001a\u0004\u0018\u00010\u00152\b\u0010&\u001a\u0004\u0018\u00010\u00152\u0006\u0010.\u001a\u00020\u000fH\u0002J\u0019\u0010/\u001a\u00020\u001a2\u0006\u0010\n\u001a\u00020\u0005H\u0082@ø\u0001��¢\u0006\u0002\u0010\u0011R!\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u00060"}, m815d2 = {"Lgogolook/callgogolook2/phone/sms/SmsDataSourceImp;", "Lgogolook/callgogolook2/phone/sms/SmsDataSource;", "()V", "_smsData", "Landroidx/lifecycle/MutableLiveData;", "Lgogolook/callgogolook2/phone/sms/WhoscallSmsData;", "get_smsData", "()Landroidx/lifecycle/MutableLiveData;", "_smsData$delegate", "Lkotlin/Lazy;", "smsData", "Landroidx/lifecycle/LiveData;", "getSmsData", "()Landroidx/lifecycle/LiveData;", "loadContactFilterInfo", "", "loadFilterInfo", "(Lgogolook/callgogolook2/phone/sms/WhoscallSmsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadNumberInfo", "Lgogolook/callgogolook2/gson/NumberInfo;", "number", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadRowInfo", "Lgogolook/callgogolook2/gson/RowInfo;", "loadSmsInfo", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;Lgogolook/callgogolook2/phone/sms/WhoscallSmsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadUrlInfo", "Lgogolook/callgogolook2/util/urlscan/MessageScanUtils$UrlScanTrackingContent;", "message", "rowInfo", "(Ljava/lang/String;Lgogolook/callgogolook2/gson/RowInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "scanUrl", "setupSmsData", "conversationId", "messageId", "messageUri", "nativeSmsData", "Lgogolook/callgogolook2/phone/sms/NativeSmsData;", ContactRealmObject.CONTACT_ID, "vasInfoPack", "Lgogolook/callgogolook2/vas/util/SimpleVasInfoPack;", "updateFilterTypeToMessageDb", "filterType", "updateSmsDataValue", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.x.g */
/* loaded from: classes3-dex2jar.jar:j/a/j0/x/g.class */
public final class C12760g implements AbstractC12759f {

    /* renamed from: c */
    public static final /* synthetic */ AbstractC14906i[] f28765c;

    /* renamed from: a */
    public final AbstractC14974f f28766a = C14975g.m662a(C12761a.f28768a);

    /* renamed from: b */
    public final LiveData<C12817p> f28767b = m5393b();

    /* renamed from: j.a.j0.x.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/g$a.class */
    public static final class C12761a extends AbstractC15150l implements AbstractC15107a<MutableLiveData<C12817p>> {

        /* renamed from: a */
        public static final C12761a f28768a = new C12761a();

        public C12761a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final MutableLiveData<C12817p> invoke() {
            return new MutableLiveData<>();
        }
    }

    /* renamed from: j.a.j0.x.g$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/g$b.class */
    public static final class C12762b implements AbstractC11893j.AbstractC11897b {

        /* renamed from: a */
        public final /* synthetic */ CancellableContinuation f28769a;

        public C12762b(CancellableContinuation cancellableContinuation) {
            this.f28769a = cancellableContinuation;
        }

        @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11893j.AbstractC11897b
        /* renamed from: a */
        public void mo3874a(AbstractC11893j.AbstractC11894a aVar) {
            C15149k.m377b(aVar, "result");
            int a = aVar instanceof C11876e.C11879c ? ((C11876e.C11879c) aVar).m7997a() : 1;
            CancellableContinuation cancellableContinuation = this.f28769a;
            C14979k.C14980a aVar2 = C14979k.f33013a;
            Integer valueOf = Integer.valueOf(a);
            C14979k.m657a(valueOf);
            cancellableContinuation.resumeWith(valueOf);
        }

        @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11893j.AbstractC11897b
        /* renamed from: b */
        public void mo3873b(AbstractC11893j.AbstractC11894a aVar) {
            C15149k.m377b(aVar, "exception");
            CancellableContinuation cancellableContinuation = this.f28769a;
            C14979k.C14980a aVar2 = C14979k.f33013a;
            C14979k.m657a(1);
            cancellableContinuation.resumeWith(1);
        }
    }

    /* renamed from: j.a.j0.x.g$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/g$c.class */
    public static final class C12763c extends C11086o {

        /* renamed from: d */
        public final /* synthetic */ CancellableContinuation f28770d;

        public C12763c(CancellableContinuation cancellableContinuation) {
            this.f28770d = cancellableContinuation;
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (numberInfo != null) {
                CancellableContinuation cancellableContinuation = this.f28770d;
                C14979k.C14980a aVar = C14979k.f33013a;
                C14979k.m657a(numberInfo);
                cancellableContinuation.resumeWith(numberInfo);
                return;
            }
            C14060l2.m2705a(new IllegalStateException("number info should not null"));
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/phone/sms/SmsDataSourceImp", m472f = "SmsDataSource.kt", m471l = {166, MatroskaExtractor.ID_PIXEL_WIDTH}, m470m = "loadRowInfo")
    /* renamed from: j.a.j0.x.g$d */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/g$d.class */
    public static final class C12764d extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f28771a;

        /* renamed from: b */
        public int f28772b;

        /* renamed from: d */
        public Object f28774d;

        /* renamed from: e */
        public Object f28775e;

        public C12764d(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f28771a = obj;
            this.f28772b |= Integer.MIN_VALUE;
            return C12760g.this.m5390b((String) null, this);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/phone/sms/SmsDataSourceImp$loadRowInfo$2", m472f = "SmsDataSource.kt", m471l = {166, MetadataUtil.TYPE_TOP_BYTE_COPYRIGHT}, m470m = "invokeSuspend")
    /* renamed from: j.a.j0.x.g$e */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/g$e.class */
    public static final class C12765e extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super RowInfo>, Object> {

        /* renamed from: a */
        public CoroutineScope f28776a;

        /* renamed from: b */
        public int f28777b;

        /* renamed from: d */
        public final /* synthetic */ String f28779d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12765e(String str, AbstractC15044d dVar) {
            super(2, dVar);
            this.f28779d = str;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C12765e eVar = new C12765e(this.f28779d, dVar);
            eVar.f28776a = (CoroutineScope) obj;
            return eVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super RowInfo> dVar) {
            return ((C12765e) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f28777b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C12760g gVar = C12760g.this;
                String str = this.f28779d;
                this.f28777b = 1;
                Object a2 = gVar.m5394a(str, this);
                obj = a2;
                if (a2 == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            return new RowInfo.Builder(this.f28779d, (NumberInfo) obj).m28211a(C14108o4.m2493a(this.f28779d, true, false)).m28196f(false).m28207b();
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/phone/sms/SmsDataSourceImp", m472f = "SmsDataSource.kt", m471l = {132, 134, 138, 142, 149, MatroskaExtractor.ID_BLOCK, 132}, m470m = "loadSmsInfo")
    /* renamed from: j.a.j0.x.g$f */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/g$f.class */
    public static final class C12766f extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f28780a;

        /* renamed from: b */
        public int f28781b;

        /* renamed from: d */
        public Object f28783d;

        /* renamed from: e */
        public Object f28784e;

        /* renamed from: f */
        public Object f28785f;

        /* renamed from: g */
        public Object f28786g;

        /* renamed from: h */
        public Object f28787h;

        /* renamed from: i */
        public Object f28788i;

        /* renamed from: j */
        public Object f28789j;

        /* renamed from: k */
        public Object f28790k;

        /* renamed from: l */
        public int f28791l;

        public C12766f(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f28780a = obj;
            this.f28781b |= Integer.MIN_VALUE;
            return C12760g.this.mo5400a((Context) null, (C12817p) null, this);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/phone/sms/SmsDataSourceImp$loadUrlInfo$2", m472f = "SmsDataSource.kt", m471l = {232, 232}, m470m = "invokeSuspend")
    /* renamed from: j.a.j0.x.g$g */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/g$g.class */
    public static final class C12767g extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14005a.C14007b>, Object> {

        /* renamed from: a */
        public CoroutineScope f28792a;

        /* renamed from: b */
        public int f28793b;

        /* renamed from: d */
        public final /* synthetic */ String f28795d;

        /* renamed from: e */
        public final /* synthetic */ RowInfo f28796e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12767g(String str, RowInfo rowInfo, AbstractC15044d dVar) {
            super(2, dVar);
            this.f28795d = str;
            this.f28796e = rowInfo;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C12767g gVar = new C12767g(this.f28795d, this.f28796e, dVar);
            gVar.f28792a = (CoroutineScope) obj;
            return gVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14005a.C14007b> dVar) {
            return ((C12767g) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f28793b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C12760g gVar = C12760g.this;
                String str = this.f28795d;
                RowInfo rowInfo = this.f28796e;
                this.f28793b = 1;
                Object b = gVar.m5391b(str, rowInfo, this);
                obj = b;
                if (b == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            return obj;
        }
    }

    /* renamed from: j.a.j0.x.g$h */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/g$h.class */
    public static final class C12768h<T> implements Action1<Integer> {

        /* renamed from: a */
        public final /* synthetic */ C14005a.C14007b f28797a;

        /* renamed from: b */
        public final /* synthetic */ CancellableContinuation f28798b;

        /* renamed from: c */
        public final /* synthetic */ RowInfo f28799c;

        public C12768h(C14005a.C14007b bVar, CancellableContinuation cancellableContinuation, String str, RowInfo rowInfo) {
            this.f28797a = bVar;
            this.f28798b = cancellableContinuation;
            this.f28799c = rowInfo;
        }

        /* renamed from: a */
        public final void call(Integer num) {
            C14005a.C14007b bVar = this.f28797a;
            C15149k.m383a((Object) num, SmsUrlScanResultRealmObject.RATING);
            bVar.m2869a(num.intValue());
            String d = this.f28799c.m28234d();
            C15149k.m383a((Object) d, "rowInfo.e164");
            bVar.m2861c(d);
            String f = this.f28799c.m28228f();
            C15149k.m383a((Object) f, "rowInfo.number");
            bVar.m2858d(f);
            CancellableContinuation cancellableContinuation = this.f28798b;
            C14979k.C14980a aVar = C14979k.f33013a;
            C14005a.C14007b bVar2 = this.f28797a;
            C14979k.m657a(bVar2);
            cancellableContinuation.resumeWith(bVar2);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/phone/sms/SmsDataSourceImp$updateFilterTypeToMessageDb$1", m472f = "SmsDataSource.kt", m471l = {219}, m470m = "invokeSuspend")
    /* renamed from: j.a.j0.x.g$i */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/g$i.class */
    public static final class C12769i extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f28800a;

        /* renamed from: b */
        public int f28801b;

        /* renamed from: c */
        public final /* synthetic */ String f28802c;

        /* renamed from: d */
        public final /* synthetic */ String f28803d;

        /* renamed from: e */
        public final /* synthetic */ int f28804e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12769i(String str, String str2, int i, AbstractC15044d dVar) {
            super(2, dVar);
            this.f28802c = str;
            this.f28803d = str2;
            this.f28804e = i;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C12769i iVar = new C12769i(this.f28802c, this.f28803d, this.f28804e, dVar);
            iVar.f28800a = (CoroutineScope) obj;
            return iVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C12769i) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f28801b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                C11876e eVar = new C11876e();
                AbstractC11528g k = AbstractC11528g.m9259k();
                C15149k.m383a((Object) k, "DataModel.get()");
                C11534l f = k.mo9244f();
                C15149k.m383a((Object) f, "DataModel.get().database");
                eVar.m8011a(f, this.f28802c, this.f28803d, this.f28804e);
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/phone/sms/SmsDataSourceImp$updateSmsDataValue$2", m472f = "SmsDataSource.kt", m471l = {109}, m470m = "invokeSuspend")
    /* renamed from: j.a.j0.x.g$j */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/g$j.class */
    public static final class C12770j extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f28805a;

        /* renamed from: b */
        public int f28806b;

        /* renamed from: d */
        public final /* synthetic */ C12817p f28808d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12770j(C12817p pVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f28808d = pVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C12770j jVar = new C12770j(this.f28808d, dVar);
            jVar.f28805a = (CoroutineScope) obj;
            return jVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C12770j) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f28806b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                C12760g.this.m5393b().setValue(this.f28808d);
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C12760g.class), "_smsData", "get_smsData()Landroidx/lifecycle/MutableLiveData;");
        C15131a0.m412a(sVar);
        f28765c = new AbstractC14906i[]{sVar};
    }

    @Override // p459j.p460a.p521j0.p529x.AbstractC12759f
    /* renamed from: a */
    public LiveData<C12817p> mo5401a() {
        return this.f28767b;
    }

    @Override // p459j.p460a.p521j0.p529x.AbstractC12759f
    /* renamed from: a */
    public C12817p mo5395a(String str, String str2, String str3, C12755b bVar, String str4, SimpleVasInfoPack simpleVasInfoPack) {
        C15149k.m377b(bVar, "nativeSmsData");
        C12817p pVar = new C12817p(bVar, str, str2, str3, null, null, str4, simpleVasInfoPack, 0, 304, null);
        m5393b().setValue(pVar);
        return pVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x04b8  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x04c4  */
    @Override // p459j.p460a.p521j0.p529x.AbstractC12759f
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo5400a(android.content.Context r6, p459j.p460a.p521j0.p529x.C12817p r7, p626l.p634w.AbstractC15044d<? super p626l.C14989s> r8) {
        /*
            Method dump skipped, instructions count: 1361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p529x.C12760g.mo5400a(android.content.Context, j.a.j0.x.p, l.w.d):java.lang.Object");
    }

    /* renamed from: a */
    public final /* synthetic */ Object m5398a(C12817p pVar, AbstractC15044d<? super Integer> dVar) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
        String d = pVar.m5218d();
        if (d == null) {
            d = pVar.m5214h();
        }
        C11885g.C11886a aVar = new C11885g.C11886a(new C11888h(d, pVar.m5219c(), pVar.m5216f().m5423b(), new C12762b(cancellableContinuationImpl)));
        aVar.m7976a(Dispatchers.getIO());
        C11898k.m7979a(aVar.m7977a());
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }

    /* renamed from: a */
    public final /* synthetic */ Object m5397a(String str, RowInfo rowInfo, AbstractC15044d<? super C14005a.C14007b> dVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C12767g(str, rowInfo, null), dVar);
    }

    /* renamed from: a */
    public final /* synthetic */ Object m5394a(String str, AbstractC15044d<? super NumberInfo> dVar) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
        C11052i.m10328e().m10340a(str, new C12763c(cancellableContinuationImpl), C11052i.f24870g, EnumC11047e.SmsDialog);
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }

    /* renamed from: a */
    public final void m5396a(String str, String str2, int i) {
        if (str2 != null) {
            if ((str2.length() > 0) && C12810o.m5236i()) {
                BuildersKt__Builders_commonKt.launch$default(new C14172t3(Dispatchers.getIO()), null, null, new C12769i(str, str2, i, null), 3, null);
            }
        }
    }

    /* renamed from: b */
    public final MutableLiveData<C12817p> m5393b() {
        AbstractC14974f fVar = this.f28766a;
        AbstractC14906i iVar = f28765c[0];
        return (MutableLiveData) fVar.getValue();
    }

    /* renamed from: b */
    public final /* synthetic */ Object m5392b(C12817p pVar, AbstractC15044d<? super C14989s> dVar) {
        return BuildersKt.withContext(Dispatchers.getMain(), new C12770j(pVar, null), dVar);
    }

    /* renamed from: b */
    public final /* synthetic */ Object m5391b(String str, RowInfo rowInfo, AbstractC15044d<? super C14005a.C14007b> dVar) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
        if (C12810o.m5243c(str)) {
            C14005a.C14007b bVar = new C14005a.C14007b(0, 0, 0, null, null, null, null, 0, 0, 0L, null, 2047, null);
            C14005a.m2883a(str, new C12768h(bVar, cancellableContinuationImpl, str, rowInfo), bVar);
        } else {
            C14979k.C14980a aVar = C14979k.f33013a;
            C14979k.m657a(null);
            cancellableContinuationImpl.resumeWith(null);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007b  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m5390b(java.lang.String r7, p626l.p634w.AbstractC15044d<? super gogolook.callgogolook2.gson.RowInfo> r8) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p529x.C12760g.m5390b(java.lang.String, l.w.d):java.lang.Object");
    }

    /* renamed from: c */
    public final int m5389c() {
        return 1;
    }
}
