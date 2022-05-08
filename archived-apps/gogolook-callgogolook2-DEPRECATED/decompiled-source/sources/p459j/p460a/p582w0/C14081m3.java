package p459j.p460a.p582w0;

import androidx.exifinterface.media.ExifInterface;
import java.util.WeakHashMap;
import kotlin.Metadata;
import p626l.C14975g;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Scheduler;
import p660rx.Single;
import p660rx.Subscription;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0006H\u0002J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0007J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0006H\u0002J,\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u0018\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u0006H\u0007JR\u0010\u001c\u001a\u00020\u000f\"\u0004\b��\u0010\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001d0\u001f2\b\b\u0002\u0010 \u001a\u00020!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!2\u000e\b\u0002\u0010#\u001a\b\u0012\u0004\u0012\u0002H\u001d0\u00122\u000e\b\u0002\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R'\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b¨\u0006%"}, m815d2 = {"Lgogolook/callgogolook2/util/RxUtils;", "", "()V", "DEFAULT_DEBOUNCE_TIME", "", "PAGE_UNDEFINED", "", "subscriptionMap", "Ljava/util/WeakHashMap;", "Lrx/Subscription;", "getSubscriptionMap", "()Ljava/util/WeakHashMap;", "subscriptionMap$delegate", "Lkotlin/Lazy;", "clearClickedView", "", "pageId", "getDefaultErrorAction", "Lrx/functions/Action1;", "", "setClickedView", "", "view", "Landroid/view/View;", "debounceTimeMs", "setDebounceOnClickListener", "listener", "Landroid/view/View$OnClickListener;", "subscribeSingleAsync", ExifInterface.GPS_DIRECTION_TRUE, "subscriber", "Lrx/Single$OnSubscribe;", "subscribeOn", "Lrx/Scheduler;", "observeOn", "onSuccess", "onError", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.m3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/m3.class */
public final class C14081m3 {

    /* renamed from: j.a.w0.m3$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/m3$a.class */
    public static final class C14082a<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C14082a f31555a = new C14082a();

        /* renamed from: a */
        public final void call(Throwable th) {
            C13973d4.m2952a(th);
        }
    }

    /* renamed from: j.a.w0.m3$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/m3$b.class */
    public static final class C14083b<T> implements Action1<T> {

        /* renamed from: a */
        public static final C14083b f31556a = new C14083b();

        @Override // p660rx.functions.Action1
        public final void call(T t) {
        }
    }

    /* renamed from: j.a.w0.m3$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/m3$c.class */
    public static final class C14084c extends AbstractC15150l implements AbstractC15107a<WeakHashMap<Integer, Subscription>> {

        /* renamed from: a */
        public static final C14084c f31557a = new C14084c();

        public C14084c() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final WeakHashMap<Integer, Subscription> invoke() {
            return new WeakHashMap<>();
        }
    }

    static {
        C15131a0.m412a(new C15157s(C15131a0.m419a(C14081m3.class), "subscriptionMap", "getSubscriptionMap()Ljava/util/WeakHashMap;"));
        new C14081m3();
        C14975g.m662a(C14084c.f31557a);
    }

    /* renamed from: a */
    public static final Action1<Throwable> m2611a() {
        return C14082a.f31555a;
    }

    /* renamed from: a */
    public static final <T> void m2610a(Single.OnSubscribe<T> onSubscribe) {
        m2607a(onSubscribe, null, null, null, null, 30, null);
    }

    /* renamed from: a */
    public static final <T> void m2609a(Single.OnSubscribe<T> onSubscribe, Scheduler scheduler, Scheduler scheduler2, Action1<T> action1) {
        m2607a(onSubscribe, scheduler, scheduler2, action1, null, 16, null);
    }

    /* renamed from: a */
    public static final <T> void m2608a(Single.OnSubscribe<T> onSubscribe, Scheduler scheduler, Scheduler scheduler2, Action1<T> action1, Action1<Throwable> action12) {
        C15149k.m377b(onSubscribe, "subscriber");
        C15149k.m377b(scheduler, "subscribeOn");
        C15149k.m377b(action1, "onSuccess");
        C15149k.m377b(action12, "onError");
        Single<T> subscribeOn = Single.create(onSubscribe).subscribeOn(scheduler);
        Single<T> single = subscribeOn;
        if (scheduler2 != null) {
            Single<T> observeOn = subscribeOn.observeOn(scheduler2);
            single = subscribeOn;
            if (observeOn != null) {
                single = observeOn;
            }
        }
        single.subscribe(action1, action12);
    }

    /* renamed from: a */
    public static /* synthetic */ void m2607a(Single.OnSubscribe onSubscribe, Scheduler scheduler, Scheduler scheduler2, Action1 action1, Action1 action12, int i, Object obj) {
        if ((i & 2) != 0) {
            scheduler = Schedulers.m0io();
            C15149k.m383a((Object) scheduler, "Schedulers.io()");
        }
        if ((i & 4) != 0) {
            scheduler2 = null;
        }
        if ((i & 8) != 0) {
            action1 = C14083b.f31556a;
        }
        if ((i & 16) != 0) {
            action12 = m2611a();
        }
        m2608a(onSubscribe, scheduler, scheduler2, action1, action12);
    }
}
