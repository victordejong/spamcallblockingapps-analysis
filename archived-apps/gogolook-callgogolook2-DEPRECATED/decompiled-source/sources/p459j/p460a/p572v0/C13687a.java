package p459j.p460a.p572v0;

import androidx.annotation.WorkerThread;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import p459j.p460a.p513i.AbstractC12398a;
import p459j.p460a.p539n.p540a.AbstractC13031b;
import p459j.p460a.p572v0.p573c.AbstractC13709g;
import p459j.p460a.p572v0.p573c.AbstractC13719n;
import p459j.p460a.p572v0.p573c.C13703b;
import p459j.p460a.p572v0.p573c.C13705c;
import p459j.p460a.p572v0.p573c.C13708f;
import p459j.p460a.p572v0.p573c.C13713i;
import p459j.p460a.p572v0.p573c.C13723o;
import p459j.p460a.p572v0.p573c.EnumC13715k;
import p459j.p460a.p572v0.p574d.C13724a;
import p459j.p460a.p572v0.p575e.AbstractC13726a;
import p459j.p460a.p572v0.p575e.C13727b;
import p459j.p460a.p572v0.p575e.C13728c;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p589f5.C14005a;
import p459j.p460a.p582w0.p590x4.C14289m;
import p626l.C14976h;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15159u;
import p626l.p641z.p643d.C15164z;
import p655o.C15299r;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u001c2\u00020\u0001:\u0001\u001cB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0096@ø\u0001��¢\u0006\u0002\u0010\u000bJ\u0019\u0010\f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0082@ø\u0001��¢\u0006\u0002\u0010\u000bJ\u0019\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nH\u0083@ø\u0001��¢\u0006\u0002\u0010\u000bJ-\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\nH\u0083@ø\u0001��¢\u0006\u0002\u0010\u0015J!\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\nH\u0083@ø\u0001��¢\u0006\u0002\u0010\u0015J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, m815d2 = {"Lgogolook/callgogolook2/urlscan/DefaultUrlScanner;", "Lgogolook/callgogolook2/urlscan/UrlScanner;", "urlScanRemoteDataSource", "Lgogolook/callgogolook2/urlscan/service/UrlScanRemoteDataSource;", "dispatcherProvider", "Lgogolook/callgogolook2/coroutines/dispatcher/DispatcherProvider;", "(Lgogolook/callgogolook2/urlscan/service/UrlScanRemoteDataSource;Lgogolook/callgogolook2/coroutines/dispatcher/DispatcherProvider;)V", "execute", "Lgogolook/callgogolook2/urlscan/data/UrlScanResult;", "request", "Lgogolook/callgogolook2/urlscan/request/ScanRequest;", "(Lgogolook/callgogolook2/urlscan/request/ScanRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "executeFlow", "executeRedirectCheck", "Lgogolook/callgogolook2/urlscan/data/RedirectCheckResult;", "executeRemoteScanService", "", "Lgogolook/callgogolook2/urlscan/data/SourceResult$Source;", "Lgogolook/callgogolook2/urlscan/data/SourceResult;", "url", "", "(Ljava/lang/String;Lgogolook/callgogolook2/urlscan/request/ScanRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "executeWhoscallPatternMatch", "Lgogolook/callgogolook2/urlscan/data/WhoscallPatternMatchResult;", "sendTracking", "", "scanTracking", "Lgogolook/callgogolook2/util/urlscan/MessageScanUtils$UrlScanTrackingContent;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.v0.a */
/* loaded from: classes3-dex2jar.jar:j/a/v0/a.class */
public final class C13687a implements AbstractC13701b {

    /* renamed from: a */
    public final C13727b f30714a;

    /* renamed from: b */
    public final AbstractC13031b f30715b;

    /* renamed from: j.a.v0.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/v0/a$a.class */
    public static final class C13688a {
        public C13688a() {
        }

        public /* synthetic */ C13688a(C15145g gVar) {
            this();
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/urlscan/DefaultUrlScanner$execute$2", m472f = "UrlScanner.kt", m471l = {42, 42}, m470m = "invokeSuspend")
    /* renamed from: j.a.v0.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/v0/a$b.class */
    public static final class C13689b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super AbstractC13719n>, Object> {

        /* renamed from: a */
        public CoroutineScope f30716a;

        /* renamed from: b */
        public int f30717b;

        /* renamed from: d */
        public final /* synthetic */ C13724a f30719d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13689b(C13724a aVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f30719d = aVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13689b bVar = new C13689b(this.f30719d, dVar);
            bVar.f30716a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super AbstractC13719n> dVar) {
            return ((C13689b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f30717b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C13687a aVar = C13687a.this;
                C13724a aVar2 = this.f30719d;
                this.f30717b = 1;
                Object b = aVar.m3632b(aVar2, this);
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

    @AbstractC15070f(m473c = "gogolook/callgogolook2/urlscan/DefaultUrlScanner", m472f = "UrlScanner.kt", m471l = {48, 53, 56, 58, 60, 61}, m470m = "executeFlow")
    /* renamed from: j.a.v0.a$c */
    /* loaded from: classes3-dex2jar.jar:j/a/v0/a$c.class */
    public static final class C13690c extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f30720a;

        /* renamed from: b */
        public int f30721b;

        /* renamed from: d */
        public Object f30723d;

        /* renamed from: e */
        public Object f30724e;

        /* renamed from: f */
        public Object f30725f;

        /* renamed from: g */
        public Object f30726g;

        /* renamed from: h */
        public Object f30727h;

        /* renamed from: i */
        public Object f30728i;

        /* renamed from: j */
        public Object f30729j;

        /* renamed from: k */
        public Object f30730k;

        public C13690c(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f30720a = obj;
            this.f30721b |= Integer.MIN_VALUE;
            return C13687a.this.m3632b(null, this);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/urlscan/DefaultUrlScanner$executeFlow$patternMatchDeferred$1", m472f = "UrlScanner.kt", m471l = {55}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "Lkotlinx/coroutines/Deferred;", "Lgogolook/callgogolook2/urlscan/data/WhoscallPatternMatchResult;", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.v0.a$d */
    /* loaded from: classes3-dex2jar.jar:j/a/v0/a$d.class */
    public static final class C13691d extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super Deferred<? extends C13723o>>, Object> {

        /* renamed from: a */
        public CoroutineScope f30731a;

        /* renamed from: b */
        public int f30732b;

        /* renamed from: d */
        public final /* synthetic */ C13708f f30734d;

        /* renamed from: e */
        public final /* synthetic */ C13724a f30735e;

        @AbstractC15070f(m473c = "gogolook/callgogolook2/urlscan/DefaultUrlScanner$executeFlow$patternMatchDeferred$1$1", m472f = "UrlScanner.kt", m471l = {55, 55}, m470m = "invokeSuspend")
        /* renamed from: j.a.v0.a$d$a */
        /* loaded from: classes3-dex2jar.jar:j/a/v0/a$d$a.class */
        public static final class C13692a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C13723o>, Object> {

            /* renamed from: a */
            public CoroutineScope f30736a;

            /* renamed from: b */
            public int f30737b;

            public C13692a(AbstractC15044d dVar) {
                super(2, dVar);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C13692a aVar = new C13692a(dVar);
                aVar.f30736a = (CoroutineScope) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C13723o> dVar) {
                return ((C13692a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object a = C15064c.m478a();
                int i = this.f30737b;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    C13691d dVar = C13691d.this;
                    C13687a aVar = C13687a.this;
                    String e = dVar.f30734d.m3619e();
                    C13724a aVar2 = C13691d.this.f30735e;
                    this.f30737b = 1;
                    Object b = aVar.m3631b(e, aVar2, this);
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13691d(C13708f fVar, C13724a aVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f30734d = fVar;
            this.f30735e = aVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13691d dVar2 = new C13691d(this.f30734d, this.f30735e, dVar);
            dVar2.f30731a = (CoroutineScope) obj;
            return dVar2;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super Deferred<? extends C13723o>> dVar) {
            return ((C13691d) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Deferred async$default;
            C15064c.m478a();
            if (this.f30732b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                async$default = BuildersKt__Builders_commonKt.async$default(this.f30731a, null, null, new C13692a(null), 3, null);
                return async$default;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/urlscan/DefaultUrlScanner$executeFlow$remoteScanDeferred$1", m472f = "UrlScanner.kt", m471l = {56}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n��\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001*\u00020\u0005H\u008a@ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007"}, m815d2 = {"<anonymous>", "Lkotlinx/coroutines/Deferred;", "", "Lgogolook/callgogolook2/urlscan/data/SourceResult$Source;", "Lgogolook/callgogolook2/urlscan/data/SourceResult;", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.v0.a$e */
    /* loaded from: classes3-dex2jar.jar:j/a/v0/a$e.class */
    public static final class C13693e extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super Deferred<? extends Map<AbstractC13709g.EnumC13710a, ? extends AbstractC13709g>>>, Object> {

        /* renamed from: a */
        public CoroutineScope f30739a;

        /* renamed from: b */
        public int f30740b;

        /* renamed from: d */
        public final /* synthetic */ C13708f f30742d;

        /* renamed from: e */
        public final /* synthetic */ C13724a f30743e;

        @AbstractC15070f(m473c = "gogolook/callgogolook2/urlscan/DefaultUrlScanner$executeFlow$remoteScanDeferred$1$1", m472f = "UrlScanner.kt", m471l = {56, 56}, m470m = "invokeSuspend")
        /* renamed from: j.a.v0.a$e$a */
        /* loaded from: classes3-dex2jar.jar:j/a/v0/a$e$a.class */
        public static final class C13694a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super Map<AbstractC13709g.EnumC13710a, ? extends AbstractC13709g>>, Object> {

            /* renamed from: a */
            public CoroutineScope f30744a;

            /* renamed from: b */
            public int f30745b;

            public C13694a(AbstractC15044d dVar) {
                super(2, dVar);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C13694a aVar = new C13694a(dVar);
                aVar.f30744a = (CoroutineScope) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super Map<AbstractC13709g.EnumC13710a, ? extends AbstractC13709g>> dVar) {
                return ((C13694a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object a = C15064c.m478a();
                int i = this.f30745b;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    C13693e eVar = C13693e.this;
                    C13687a aVar = C13687a.this;
                    String e = eVar.f30742d.m3619e();
                    C13724a aVar2 = C13693e.this.f30743e;
                    this.f30745b = 1;
                    Object a2 = aVar.m3633a(e, aVar2, this);
                    obj = a2;
                    if (a2 == a) {
                        return a;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13693e(C13708f fVar, C13724a aVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f30742d = fVar;
            this.f30743e = aVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13693e eVar = new C13693e(this.f30742d, this.f30743e, dVar);
            eVar.f30739a = (CoroutineScope) obj;
            return eVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super Deferred<? extends Map<AbstractC13709g.EnumC13710a, ? extends AbstractC13709g>>> dVar) {
            return ((C13693e) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Deferred async$default;
            C15064c.m478a();
            if (this.f30740b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                async$default = BuildersKt__Builders_commonKt.async$default(this.f30739a, null, null, new C13694a(null), 3, null);
                return async$default;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/urlscan/DefaultUrlScanner$executeRedirectCheck$2", m472f = "UrlScanner.kt", m471l = {71}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "Lgogolook/callgogolook2/urlscan/data/RedirectCheckResult;", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.v0.a$f */
    /* loaded from: classes3-dex2jar.jar:j/a/v0/a$f.class */
    public static final class C13695f extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C13708f>, Object> {

        /* renamed from: a */
        public CoroutineScope f30747a;

        /* renamed from: b */
        public int f30748b;

        /* renamed from: c */
        public final /* synthetic */ C13724a f30749c;

        /* renamed from: j.a.v0.a$f$a */
        /* loaded from: classes3-dex2jar.jar:j/a/v0/a$f$a.class */
        public static final class C13696a extends AbstractC15150l implements AbstractC15118l<HttpURLConnection, C14989s> {

            /* renamed from: a */
            public final /* synthetic */ C15164z f30750a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C13696a(C15164z zVar) {
                super(1);
                this.f30750a = zVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* renamed from: a */
            public final void m3629a(HttpURLConnection httpURLConnection) {
                this.f30750a.f33152a = httpURLConnection;
            }

            @Override // p626l.p641z.p642c.AbstractC15118l
            public /* bridge */ /* synthetic */ C14989s invoke(HttpURLConnection httpURLConnection) {
                m3629a(httpURLConnection);
                return C14989s.f33022a;
            }
        }

        @AbstractC15070f(m473c = "gogolook/callgogolook2/urlscan/DefaultUrlScanner$executeRedirectCheck$2$result$redirectCheckTimeoutJob$1", m472f = "UrlScanner.kt", m471l = {89, 91}, m470m = "invokeSuspend")
        /* renamed from: j.a.v0.a$f$b */
        /* loaded from: classes3-dex2jar.jar:j/a/v0/a$f$b.class */
        public static final class C13697b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

            /* renamed from: a */
            public CoroutineScope f30751a;

            /* renamed from: b */
            public int f30752b;

            /* renamed from: d */
            public final /* synthetic */ C15164z f30754d;

            /* renamed from: e */
            public final /* synthetic */ C15159u f30755e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C13697b(C15164z zVar, C15159u uVar, AbstractC15044d dVar) {
                super(2, dVar);
                this.f30754d = zVar;
                this.f30755e = uVar;
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C13697b bVar = new C13697b(this.f30754d, this.f30755e, dVar);
                bVar.f30751a = (CoroutineScope) obj;
                return bVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
                return ((C13697b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object a = C15064c.m478a();
                int i = this.f30752b;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    this.f30752b = 1;
                    if (DelayKt.delay(C13695f.this.f30749c.m3597c() * 1000, this) == a) {
                        return a;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                HttpURLConnection httpURLConnection = (HttpURLConnection) this.f30754d.f33152a;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                this.f30755e.f33147a = true;
                return C14989s.f33022a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13695f(C13724a aVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f30749c = aVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13695f fVar = new C13695f(this.f30749c, dVar);
            fVar.f30747a = (CoroutineScope) obj;
            return fVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C13708f> dVar) {
            return ((C13695f) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C13708f fVar;
            Job launch$default;
            C15064c.m478a();
            if (this.f30748b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                CoroutineScope coroutineScope = this.f30747a;
                String a = C14005a.m2891a(this.f30749c.m3593g());
                C13930d dVar = new C13930d();
                dVar.m3018e();
                if (this.f30749c.m3597c() <= 0) {
                    fVar = new C13708f(a, a, 0, 0, this.f30749c.m3597c(), false);
                } else {
                    C15159u uVar = new C15159u();
                    int i = 0;
                    uVar.f33147a = false;
                    C15164z zVar = new C15164z();
                    zVar.f33152a = null;
                    launch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C13697b(zVar, uVar, null), 3, null);
                    String str = a;
                    int i2 = 0;
                    while (i <= this.f30749c.m3597c() && !uVar.f33147a) {
                        i++;
                        String a2 = C14005a.m2885a(str, new C13696a(zVar));
                        if (C15149k.m384a((Object) a2, (Object) str) || uVar.f33147a) {
                            str = a2;
                            break;
                        }
                        i2++;
                        str = a2;
                    }
                    Job.DefaultImpls.cancel$default(launch$default, (CancellationException) null, 1, (Object) null);
                    fVar = new C13708f(a, str, i2, i, this.f30749c.m3597c(), uVar.f33147a);
                }
                dVar.m3017f();
                C14005a.C14007b e = this.f30749c.m3595e();
                if (e != null) {
                    e.m2864b(this.f30749c.m3593g());
                    e.m2867a(fVar.m3619e());
                    e.m2859d(fVar.m3620d());
                    e.m2862c(fVar.m3621c());
                    e.m2868a(dVar.m3025a());
                    e.m2869a(EnumC13715k.f30799f.m3613a(fVar.mo3601b()));
                }
                return fVar;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/urlscan/DefaultUrlScanner$executeRemoteScanService$2", m472f = "UrlScanner.kt", m471l = {150, 155}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\u008a@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006"}, m815d2 = {"<anonymous>", "", "Lgogolook/callgogolook2/urlscan/data/SourceResult$Source;", "Lgogolook/callgogolook2/urlscan/data/SourceResult;", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.v0.a$g */
    /* loaded from: classes3-dex2jar.jar:j/a/v0/a$g.class */
    public static final class C13698g extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super Map<AbstractC13709g.EnumC13710a, ? extends AbstractC13709g>>, Object> {

        /* renamed from: a */
        public CoroutineScope f30756a;

        /* renamed from: b */
        public int f30757b;

        /* renamed from: d */
        public final /* synthetic */ String f30759d;

        /* renamed from: e */
        public final /* synthetic */ C13724a f30760e;

        @AbstractC15070f(m473c = "gogolook/callgogolook2/urlscan/DefaultUrlScanner$executeRemoteScanService$2$result$1", m472f = "UrlScanner.kt", m471l = {152, 152}, m470m = "invokeSuspend")
        /* renamed from: j.a.v0.a$g$a */
        /* loaded from: classes3-dex2jar.jar:j/a/v0/a$g$a.class */
        public static final class C13699a extends AbstractC15078m implements AbstractC15122p<AbstractC13726a, AbstractC15044d<? super C15299r<C13728c>>, Object> {

            /* renamed from: a */
            public AbstractC13726a f30761a;

            /* renamed from: b */
            public int f30762b;

            public C13699a(AbstractC15044d dVar) {
                super(2, dVar);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C13699a aVar = new C13699a(dVar);
                aVar.f30761a = (AbstractC13726a) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(AbstractC13726a aVar, AbstractC15044d<? super C15299r<C13728c>> dVar) {
                return ((C13699a) create(aVar, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object a = C15064c.m478a();
                int i = this.f30762b;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    AbstractC13726a aVar = this.f30761a;
                    String str = C13698g.this.f30759d;
                    String n = C14017g4.m2810n();
                    C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
                    this.f30762b = 1;
                    Object a2 = aVar.m3585a(str, n, this);
                    obj = a2;
                    if (a2 == a) {
                        return a;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13698g(String str, C13724a aVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f30759d = str;
            this.f30760e = aVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13698g gVar = new C13698g(this.f30759d, this.f30760e, dVar);
            gVar.f30756a = (CoroutineScope) obj;
            return gVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super Map<AbstractC13709g.EnumC13710a, ? extends AbstractC13709g>> dVar) {
            return ((C13698g) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f30757b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C13727b bVar = C13687a.this.f30714a;
                C13699a aVar = new C13699a(null);
                this.f30757b = 1;
                Object a2 = bVar.m6238a(aVar, this);
                obj = a2;
                if (a2 == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            AbstractC12398a aVar2 = (AbstractC12398a) obj;
            if (aVar2 instanceof AbstractC12398a.C12401c) {
                Map<AbstractC13709g.EnumC13710a, AbstractC13709g> a3 = C13713i.m3614a((C13728c) ((AbstractC12398a.C12401c) aVar2).m6239b(), this.f30759d);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry<AbstractC13709g.EnumC13710a, AbstractC13709g> entry : a3.entrySet()) {
                    if (C15066b.m474a(this.f30760e.m3599a().contains(entry.getValue().m3617a().m3616a())).booleanValue()) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                C14005a.C14007b e = this.f30760e.m3595e();
                if (e != null) {
                    for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                        AbstractC13709g gVar = (AbstractC13709g) entry2.getValue();
                        if (gVar instanceof C13703b) {
                            e.m2865b(3);
                            e.m2869a(EnumC13715k.f30799f.m3613a(gVar.mo3601b()));
                            C13705c c = ((C13703b) gVar).m3626c();
                            String a4 = c != null ? c.m3624a() : null;
                            if (a4 == null) {
                                a4 = "";
                            }
                            e.m2856e(a4);
                            C13687a.this.m3634a(e);
                        }
                    }
                }
                return linkedHashMap;
            } else if (aVar2 instanceof AbstractC12398a.C12399a) {
                C14005a.C14007b e2 = this.f30760e.m3595e();
                if (e2 != null) {
                    e2.m2865b(3);
                    e2.m2869a(-1);
                    C13687a.this.m3634a(e2);
                }
                throw new Exception(aVar2.toString());
            } else if (aVar2 instanceof AbstractC12398a.C12400b) {
                C14005a.C14007b e3 = this.f30760e.m3595e();
                if (e3 != null) {
                    e3.m2865b(3);
                    e3.m2869a(-1);
                    C13687a.this.m3634a(e3);
                }
                throw ((AbstractC12398a.C12400b) aVar2).m6241a();
            } else {
                throw new C14976h();
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/urlscan/DefaultUrlScanner$executeWhoscallPatternMatch$2", m472f = "UrlScanner.kt", m471l = {122}, m470m = "invokeSuspend")
    /* renamed from: j.a.v0.a$h */
    /* loaded from: classes3-dex2jar.jar:j/a/v0/a$h.class */
    public static final class C13700h extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C13723o>, Object> {

        /* renamed from: a */
        public CoroutineScope f30764a;

        /* renamed from: b */
        public int f30765b;

        /* renamed from: d */
        public final /* synthetic */ C13724a f30767d;

        /* renamed from: e */
        public final /* synthetic */ String f30768e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13700h(C13724a aVar, String str, AbstractC15044d dVar) {
            super(2, dVar);
            this.f30767d = aVar;
            this.f30768e = str;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13700h hVar = new C13700h(this.f30767d, this.f30768e, dVar);
            hVar.f30764a = (CoroutineScope) obj;
            return hVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C13723o> dVar) {
            return ((C13700h) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f30765b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                EnumC13715k kVar = EnumC13715k.UNRATED;
                for (String str : this.f30767d.m3598b()) {
                    if (C14005a.m2887a(this.f30768e, str)) {
                        kVar = EnumC13715k.MALICIOUS;
                    }
                }
                EnumC13715k kVar2 = kVar;
                if (kVar != EnumC13715k.MALICIOUS) {
                    Iterator<T> it = this.f30767d.m3594f().iterator();
                    while (true) {
                        kVar2 = kVar;
                        if (!it.hasNext()) {
                            break;
                        }
                        if (C14005a.m2887a(this.f30768e, (String) it.next())) {
                            kVar = EnumC13715k.SUSPICIOUS;
                        }
                    }
                }
                C13723o oVar = new C13723o(this.f30768e, kVar2);
                C14005a.C14007b e = this.f30767d.m3595e();
                if (e != null) {
                    e.m2865b(1);
                    e.m2869a(EnumC13715k.f30799f.m3613a(oVar.mo3601b()));
                    C13687a.this.m3634a(e);
                }
                return oVar;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    static {
        new C13688a(null);
    }

    public C13687a(C13727b bVar, AbstractC13031b bVar2) {
        C15149k.m377b(bVar, "urlScanRemoteDataSource");
        C15149k.m377b(bVar2, "dispatcherProvider");
        this.f30714a = bVar;
        this.f30715b = bVar2;
    }

    @Override // p459j.p460a.p572v0.AbstractC13701b
    /* renamed from: a */
    public Object mo3628a(C13724a aVar, AbstractC15044d<? super AbstractC13719n> dVar) {
        return BuildersKt.withContext(this.f30715b.mo4755b(), new C13689b(aVar, null), dVar);
    }

    @WorkerThread
    /* renamed from: a */
    public final /* synthetic */ Object m3633a(String str, C13724a aVar, AbstractC15044d<? super Map<AbstractC13709g.EnumC13710a, ? extends AbstractC13709g>> dVar) {
        return BuildersKt.withContext(this.f30715b.mo4756a(), new C13698g(str, aVar, null), dVar);
    }

    /* renamed from: a */
    public final void m3634a(C14005a.C14007b bVar) {
        C14289m.m1901a(bVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x040f  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01e0  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m3632b(p459j.p460a.p572v0.p574d.C13724a r7, p626l.p634w.AbstractC15044d<? super p459j.p460a.p572v0.p573c.AbstractC13719n> r8) {
        /*
            Method dump skipped, instructions count: 1171
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p572v0.C13687a.m3632b(j.a.v0.d.a, l.w.d):java.lang.Object");
    }

    @WorkerThread
    /* renamed from: b */
    public final /* synthetic */ Object m3631b(String str, C13724a aVar, AbstractC15044d<? super C13723o> dVar) {
        return BuildersKt.withContext(this.f30715b.mo4756a(), new C13700h(aVar, str, null), dVar);
    }

    @WorkerThread
    /* renamed from: c */
    public final /* synthetic */ Object m3630c(C13724a aVar, AbstractC15044d<? super C13708f> dVar) {
        return BuildersKt.withContext(this.f30715b.mo4756a(), new C13695f(aVar, null), dVar);
    }
}
