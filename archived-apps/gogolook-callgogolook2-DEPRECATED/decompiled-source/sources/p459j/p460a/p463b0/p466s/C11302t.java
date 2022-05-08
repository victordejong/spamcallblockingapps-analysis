package p459j.p460a.p463b0.p466s;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Resources;
import android.media.AudioManager;
import android.media.ToneGenerator;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.LruCache;
import android.view.View;
import androidx.core.app.Person;
import androidx.exifinterface.media.ExifInterface;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import androidx.media2.exoplayer.external.util.MimeTypes;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import io.realm.Case;
import io.realm.Realm;
import io.realm.RealmObject;
import io.realm.Sort;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p463b0.p466s.C11257f;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p531k0.C12860e;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p541n0.C13110i;
import p459j.p460a.p541n0.C13131j;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C13938c4;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p613z0.p617p.C14687h;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p631e0.C14966w;
import p626l.p632u.C15020l;
import p626l.p632u.C15021m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Observable;
import p660rx.Subscriber;
import p660rx.Subscription;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0016\n\u0002\u0010\b\n\u0002\b\u0016\u0018�� \\2\u00020\u0001:\u0001\\B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010/\u001a\u000200H\u0016J\n\u00101\u001a\u0004\u0018\u00010\u0017H\u0016J\n\u00102\u001a\u0004\u0018\u00010\nH\u0016J\n\u00103\u001a\u0004\u0018\u00010\u0017H\u0016J\n\u00104\u001a\u0004\u0018\u00010\u0017H\u0016J\n\u00105\u001a\u0004\u0018\u00010\u0017H\u0016J\u0010\u00106\u001a\u0002002\u0006\u00107\u001a\u00020\nH\u0016J\b\u00108\u001a\u000200H\u0016J\b\u00109\u001a\u000200H\u0016J\b\u0010:\u001a\u000200H\u0016J\b\u0010;\u001a\u000200H\u0016J\b\u0010<\u001a\u000200H\u0016J\b\u0010=\u001a\u000200H\u0016J\u0010\u0010>\u001a\u0002002\u0006\u0010?\u001a\u00020\nH\u0016J\u0010\u0010@\u001a\u0002002\u0006\u0010?\u001a\u00020\nH\u0016J\b\u0010A\u001a\u000200H\u0016J\b\u0010B\u001a\u000200H\u0016J\b\u0010\u001a\u001a\u00020\u0019H\u0016J\b\u0010\u001b\u001a\u00020\u0019H\u0016J\b\u0010C\u001a\u000200H\u0016J\u0018\u0010D\u001a\u0002002\u0006\u0010E\u001a\u00020\u00172\u0006\u0010F\u001a\u00020GH\u0016J\u0018\u0010H\u001a\u0002002\u0006\u0010E\u001a\u00020\u00172\u0006\u0010F\u001a\u00020GH\u0016J\u0018\u0010I\u001a\u0002002\u0006\u0010J\u001a\u00020G2\u0006\u0010K\u001a\u00020GH\u0016J\u0018\u0010L\u001a\u0002002\u0006\u0010M\u001a\u00020\u00192\u0006\u0010N\u001a\u00020\u0017H\u0016J\u0016\u0010O\u001a\b\u0012\u0004\u0012\u00020'0\t2\u0006\u0010N\u001a\u00020\u0017H\u0002J\u0016\u0010P\u001a\b\u0012\u0004\u0012\u00020'0\t2\u0006\u0010N\u001a\u00020\u0017H\u0002J\b\u0010Q\u001a\u000200H\u0016J\b\u0010R\u001a\u000200H\u0016J\b\u0010S\u001a\u000200H\u0016J;\u0010T\u001a\b\u0012\u0004\u0012\u0002HU0\t\"\u0004\b��\u0010U2\f\u0010V\u001a\b\u0012\u0004\u0012\u0002HU0\t2\u0006\u0010W\u001a\u00020G2\n\b\u0002\u0010X\u001a\u0004\u0018\u0001HUH\u0002¢\u0006\u0002\u0010YJ\b\u0010Z\u001a\u000200H\u0017J\b\u0010[\u001a\u000200H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R)\u0010\u0007\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t0\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010 \u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n��R)\u0010\"\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t0\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u000e\u001a\u0004\b#\u0010\fR-\u0010%\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0\t0&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010\u000e\u001a\u0004\b(\u0010)R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e¢\u0006\u0002\n��¨\u0006]"}, m815d2 = {"Lgogolook/callgogolook2/main/dialer/DialerPresenter;", "Lgogolook/callgogolook2/main/dialer/DialerContract$Presenter;", "view", "Lgogolook/callgogolook2/main/dialer/DialerContract$View;", "(Lgogolook/callgogolook2/main/dialer/DialerContract$View;)V", "callLogAsync", "Lgogolook/callgogolook2/main/dialer/CallLogAsync;", "contactQueryObservable", "Lrx/Observable;", "", "Lio/realm/RealmObject;", "getContactQueryObservable", "()Lrx/Observable;", "contactQueryObservable$delegate", "Lkotlin/Lazy;", "dialerRecommendationDuration", "", "getDialerRecommendationDuration", "()J", "dialerView", "haptic", "Lgogolook/callgogolook2/main/dialer/HapticFeedback;", "inputNumber", "", "isDTMFToneEnabled", "", "isLastLongClickLogBlocked", "isLastLongClickLogIsContact", "isNeedRefresh", "lastLongClickLogDisplayNumber", "lastLongClickLogE164", "lastLongClickLogNumber", "lastLongClickLogs", "lastNumberDialed", "recommendationQueryObservable", "getRecommendationQueryObservable", "recommendationQueryObservable$delegate", "searchResultCache", "Landroid/util/LruCache;", "Lgogolook/callgogolook2/realm/obj/index/CacheIndexRealmObject;", "getSearchResultCache", "()Landroid/util/LruCache;", "searchResultCache$delegate", "subscription", "Lrx/Subscription;", "toneGenerator", "Landroid/media/ToneGenerator;", "create", "", "getLastDialerNumber", "getLastLongClickLog", "getLastLongClickLogDisplayNumber", "getLastLongClickLogE164", "getLastLongClickLogNumber", "handleCallLogsLongClick", "logsObject", "handleContextMenuActionBlock", "handleContextMenuActionCall", "handleContextMenuActionFavorite", "handleContextMenuActionMessage", "handleContextMenuActionReport", "handleContextMenuActionSave", "handleDialerCallButtonClick", "realmObject", "handleDialerItemClick", "initHaptic", "initToneGenerator", "onStop", "performCall", "enterNumber", "from", "", "performSMS", "playTone", "tone", "duration", "queryContactsDialerLog", "refresh", "input", "queryDialer", "queryDialerWithCache", "queryLastOutgoingCall", "queryRecommendationDialerLog", "stopTone", "trimList", ExifInterface.GPS_DIRECTION_TRUE, "list", "limit", "emptyDefault", "(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;", "tryToCallVoiceEmail", "vibrate", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.s.t */
/* loaded from: classes2-dex2jar.jar:j/a/b0/s/t.class */
public final class C11302t implements AbstractC11266j {

    /* renamed from: r */
    public static final /* synthetic */ AbstractC14906i[] f25374r;

    /* renamed from: s */
    public static final String f25375s = C11302t.class.getSimpleName();

    /* renamed from: a */
    public AbstractC11267k f25376a;

    /* renamed from: b */
    public C11257f f25377b;

    /* renamed from: d */
    public boolean f25379d;

    /* renamed from: e */
    public ToneGenerator f25380e;

    /* renamed from: g */
    public Subscription f25382g;

    /* renamed from: k */
    public RealmObject f25386k;

    /* renamed from: l */
    public boolean f25387l;

    /* renamed from: m */
    public String f25388m;

    /* renamed from: n */
    public String f25389n;

    /* renamed from: o */
    public String f25390o;

    /* renamed from: p */
    public boolean f25391p;

    /* renamed from: c */
    public final AbstractC14974f f25378c = C14975g.m662a(C11314j.f25404a);

    /* renamed from: f */
    public final C11317v f25381f = new C11317v();

    /* renamed from: h */
    public final AbstractC14974f f25383h = C14975g.m662a(new C11312i());

    /* renamed from: i */
    public final AbstractC14974f f25384i = C14975g.m662a(new C11304b());

    /* renamed from: j */
    public String f25385j = "";

    /* renamed from: q */
    public String f25392q = "";

    /* renamed from: j.a.b0.s.t$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/t$a.class */
    public static final class C11303a {
        public C11303a() {
        }

        public /* synthetic */ C11303a(C15145g gVar) {
            this();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002 \u0004*\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0005"}, m815d2 = {"<anonymous>", "Lrx/Observable;", "", "Lio/realm/RealmObject;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.b0.s.t$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/t$b.class */
    public static final class C11304b extends AbstractC15150l implements AbstractC15107a<Observable<List<? extends RealmObject>>> {

        /* renamed from: j.a.b0.s.t$b$a */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/s/t$b$a.class */
        public static final class C11305a<T> implements Observable.OnSubscribe<T> {
            public C11305a() {
            }

            /* renamed from: a */
            public final void call(Subscriber<? super List<? extends RealmObject>> subscriber) {
                String str = C11302t.this.f25385j;
                List b = C11302t.this.m9834b(str);
                C11302t tVar = C11302t.this;
                String l = C14108o4.m2474l(str);
                C15149k.m383a((Object) l, "UtilsTelephony.parseE164Number(input)");
                subscriber.onNext(tVar.m9840a(b, 20, new CacheIndexRealmObject(0L, 0L, 16, str, l, 0L, null, 0L, null, null, null, 2019, null)));
                subscriber.onCompleted();
            }
        }

        public C11304b() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Observable<List<? extends RealmObject>> invoke() {
            return Observable.create(new C11305a()).debounce(300L, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.from(C14174u.m2296h())).observeOn(AndroidSchedulers.mainThread());
        }
    }

    /* renamed from: j.a.b0.s.t$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/t$c.class */
    public static final class C11306c<T> implements Action1<List<? extends RealmObject>> {
        public C11306c() {
        }

        /* renamed from: a */
        public final void call(List<? extends RealmObject> list) {
            if (list != null) {
                C11302t.this.f25376a.mo9888j(list);
            }
        }
    }

    /* renamed from: j.a.b0.s.t$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/t$d.class */
    public static final class C11307d<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C11307d f25396a = new C11307d();

        /* renamed from: a */
        public final void call(Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    /* renamed from: j.a.b0.s.t$e */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/t$e.class */
    public static final class C11308e extends AbstractC15150l implements AbstractC15118l<Realm, List<? extends CacheIndexRealmObject>> {

        /* renamed from: b */
        public final /* synthetic */ String f25398b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11308e(String str) {
            super(1);
            this.f25398b = str;
        }

        /* renamed from: a */
        public final List<CacheIndexRealmObject> invoke(Realm realm) {
            List<CacheIndexRealmObject> list;
            C15149k.m377b(realm, "it");
            try {
                list = realm.copyFromRealm(realm.where(CacheIndexRealmObject.class).contains("dialerIndexRealmObjects.normalized_index", this.f25398b, Case.INSENSITIVE).m10371or().beginsWith("numberIndexRealmObjects.normalized_index", this.f25398b, Case.INSENSITIVE).sort("_id", Sort.DESCENDING).distinct("e164").findAll());
                C11302t.this.m9823i().put(this.f25398b, list);
            } catch (Exception e) {
                C13973d4.m2952a(e);
                list = null;
            }
            return list;
        }
    }

    /* renamed from: j.a.b0.s.t$f */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/t$f.class */
    public static final class C11309f implements C11257f.AbstractC11260c {
        public C11309f() {
        }

        @Override // p459j.p460a.p463b0.p466s.C11257f.AbstractC11260c
        /* renamed from: a */
        public final void mo9802a(String str) {
            C11302t tVar = C11302t.this;
            C15149k.m383a((Object) str, "number");
            tVar.f25392q = str;
        }
    }

    /* renamed from: j.a.b0.s.t$g */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/t$g.class */
    public static final class C11310g<T> implements Action1<List<? extends RealmObject>> {
        public C11310g() {
        }

        /* renamed from: a */
        public final void call(List<? extends RealmObject> list) {
            if (list != null) {
                C11302t.this.f25376a.mo9888j(list);
            }
        }
    }

    /* renamed from: j.a.b0.s.t$h */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/t$h.class */
    public static final class C11311h<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C11311h f25401a = new C11311h();

        /* renamed from: a */
        public final void call(Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a&\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002 \u0004*\u0012\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0005"}, m815d2 = {"<anonymous>", "Lrx/Observable;", "", "Lio/realm/RealmObject;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.b0.s.t$i */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/t$i.class */
    public static final class C11312i extends AbstractC15150l implements AbstractC15107a<Observable<List<? extends RealmObject>>> {

        /* renamed from: j.a.b0.s.t$i$a */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/s/t$i$a.class */
        public static final class C11313a<T> implements Observable.OnSubscribe<T> {
            public C11313a() {
            }

            /* renamed from: a */
            public final void call(Subscriber<? super List<? extends RealmObject>> subscriber) {
                subscriber.onNext(C11302t.m9843a(C11302t.this, C13131j.m4538b(C11302t.this.m9832c()), 5, null, 4, null));
                subscriber.onCompleted();
            }
        }

        public C11312i() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Observable<List<? extends RealmObject>> invoke() {
            return Observable.create(new C11313a()).debounce(300L, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.from(C14174u.m2296h())).observeOn(AndroidSchedulers.mainThread());
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\t\n��\n\u0002\b\u0003*\u0001\u0001\u0010��\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, m815d2 = {"<anonymous>", "gogolook/callgogolook2/main/dialer/DialerPresenter$searchResultCache$2$1", "invoke", "()Lgogolook/callgogolook2/main/dialer/DialerPresenter$searchResultCache$2$1;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.b0.s.t$j */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/t$j.class */
    public static final class C11314j extends AbstractC15150l implements AbstractC15107a<C11315a> {

        /* renamed from: a */
        public static final C11314j f25404a = new C11314j();

        /* renamed from: j.a.b0.s.t$j$a */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/s/t$j$a.class */
        public static final class C11315a extends LruCache<String, List<? extends CacheIndexRealmObject>> {
            public C11315a(int i) {
                super(i);
            }

            /* renamed from: a */
            public int sizeOf(String str, List<? extends CacheIndexRealmObject> list) {
                C15149k.m377b(str, Person.KEY_KEY);
                C15149k.m377b(list, C13032a.f29462d);
                return list.size();
            }
        }

        public C11314j() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C11315a invoke() {
            return new C11315a(20);
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11302t.class), "searchResultCache", "getSearchResultCache()Landroid/util/LruCache;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C11302t.class), "recommendationQueryObservable", "getRecommendationQueryObservable()Lrx/Observable;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C11302t.class), "contactQueryObservable", "getContactQueryObservable()Lrx/Observable;");
        C15131a0.m412a(sVar3);
        f25374r = new AbstractC14906i[]{sVar, sVar2, sVar3};
        new C11303a(null);
    }

    public C11302t(AbstractC11267k kVar) {
        C15149k.m377b(kVar, "view");
        this.f25376a = kVar;
    }

    /* renamed from: a */
    public static /* synthetic */ List m9843a(C11302t tVar, List list, int i, Object obj, int i2, Object obj2) {
        if ((i2 & 4) != 0) {
            obj = null;
        }
        return tVar.m9840a(list, i, obj);
    }

    /* renamed from: a */
    public final List<CacheIndexRealmObject> m9842a(String str) {
        List<CacheIndexRealmObject> list = (List) C13193p.m4435b(C13110i.f29596e.m4606a(), new C11308e(str));
        if (list == null) {
            list = C15021m.m565a();
        }
        return list;
    }

    /* renamed from: a */
    public final <T> List<T> m9840a(List<? extends T> list, int i, T t) {
        List<? extends T> list2;
        if (list.size() > i) {
            list2 = list.subList(0, i - 1);
        } else {
            list2 = (List<T>) list;
            if (t != null) {
                list2 = (List<T>) list;
                if (list.isEmpty()) {
                    list2 = (List<T>) C15020l.m567a(t);
                }
            }
        }
        return (List<T>) list2;
    }

    /* renamed from: a */
    public void m9849a() {
        C13110i.m4602a(this.f25376a.mo9917a());
    }

    /* renamed from: a */
    public void m9848a(int i, int i2) {
        ToneGenerator toneGenerator;
        if (this.f25379d) {
            Object systemService = this.f25376a.mo9917a().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            if (systemService != null) {
                int ringerMode = ((AudioManager) systemService).getRingerMode();
                if (ringerMode != 0 && ringerMode != 1 && (toneGenerator = this.f25380e) != null) {
                    toneGenerator.startTone(i, i2);
                    return;
                }
                return;
            }
            throw new C14986p("null cannot be cast to non-null type android.media.AudioManager");
        }
    }

    /* renamed from: a */
    public void m9847a(RealmObject realmObject) {
        C15149k.m377b(realmObject, "logsObject");
        this.f25386k = realmObject;
        boolean z = true;
        boolean z2 = true;
        if (realmObject instanceof LogsGroupRealmObject) {
            LogsGroupRealmObject logsGroupRealmObject = (LogsGroupRealmObject) realmObject;
            this.f25388m = C15149k.m384a((Object) logsGroupRealmObject.getE164(), (Object) C14206w4.m2225a((int) R$string.unknown_number)) ? "" : logsGroupRealmObject.getE164();
            this.f25389n = C15149k.m384a((Object) logsGroupRealmObject.getNumber(), (Object) C14206w4.m2225a((int) R$string.unknown_number)) ? "" : logsGroupRealmObject.getNumber();
            this.f25390o = C14108o4.m2481e(this.f25389n);
            if (logsGroupRealmObject.getContact_id() <= 0) {
                z2 = false;
            }
            this.f25391p = z2;
        } else if (realmObject instanceof CacheIndexRealmObject) {
            CacheIndexRealmObject cacheIndexRealmObject = (CacheIndexRealmObject) realmObject;
            this.f25388m = C15149k.m384a((Object) cacheIndexRealmObject.getE164(), (Object) C14206w4.m2225a((int) R$string.unknown_number)) ? "" : cacheIndexRealmObject.getE164();
            this.f25389n = C15149k.m384a((Object) cacheIndexRealmObject.getNumber(), (Object) C14206w4.m2225a((int) R$string.unknown_number)) ? "" : cacheIndexRealmObject.getNumber();
            this.f25390o = C14108o4.m2481e(this.f25389n);
            if (cacheIndexRealmObject.getContact_id() <= 0) {
                z = false;
            }
            this.f25391p = z;
        }
        C14299q.m1677s();
        C12942i a = C12928g.m5000a().m4996a(this.f25376a.mo9917a(), this.f25389n, "", 3);
        C15149k.m383a((Object) a, TtmlNode.TAG_BR);
        this.f25387l = a.m4960d();
        this.f25376a.mo9910b();
    }

    /* renamed from: a */
    public void m9841a(String str, int i) {
        C15149k.m377b(str, "enterNumber");
        C14217x3.m2182a(this.f25376a.mo9917a(), str, false, i);
    }

    /* renamed from: a */
    public void m9839a(boolean z, String str) {
        C15149k.m377b(str, "input");
        this.f25385j = str;
        Subscription subscription = this.f25382g;
        if (subscription != null) {
            if (!(!subscription.isUnsubscribed())) {
                subscription = null;
            }
            if (subscription != null) {
                subscription.unsubscribe();
            }
        }
        this.f25382g = m9838b().subscribe(new C11306c(), C11307d.f25396a);
    }

    /* renamed from: b */
    public final List<CacheIndexRealmObject> m9834b(String str) {
        List<CacheIndexRealmObject> list = m9823i().get(str);
        return list != null ? list : m9842a(str);
    }

    /* renamed from: b */
    public final Observable<List<RealmObject>> m9838b() {
        AbstractC14974f fVar = this.f25384i;
        AbstractC14906i iVar = f25374r[2];
        return (Observable) fVar.getValue();
    }

    /* renamed from: b */
    public void m9837b(RealmObject realmObject) {
        C15149k.m377b(realmObject, "realmObject");
        boolean z = true;
        boolean z2 = true;
        if (realmObject instanceof CacheIndexRealmObject) {
            String number = ((CacheIndexRealmObject) realmObject).getNumber();
            if (number.length() <= 0) {
                z2 = false;
            }
            if (!z2) {
                number = null;
            }
            if (number != null) {
                m9841a(number, 31);
            }
        } else if (realmObject instanceof LogsGroupRealmObject) {
            String number2 = ((LogsGroupRealmObject) realmObject).getNumber();
            if (number2 != null) {
                if (number2.length() <= 0) {
                    z = false;
                }
                if (!z) {
                    number2 = null;
                }
                if (number2 != null) {
                    m9841a(number2, 33);
                }
            }
        }
    }

    /* renamed from: b */
    public void m9833b(String str, int i) {
        C15149k.m377b(str, "enterNumber");
        C12810o.m5266a(this.f25376a.mo9917a(), 6, str, null, true, 0, 32, null);
    }

    /* renamed from: c */
    public final long m9832c() {
        return C13640c.m3745d().m3748b("dialpad_mostfrequent_duration_criteria");
    }

    /* renamed from: c */
    public void m9831c(RealmObject realmObject) {
        Intent intent;
        Integer type;
        C15149k.m377b(realmObject, "realmObject");
        Bundle bundle = new Bundle();
        if (realmObject instanceof CacheIndexRealmObject) {
            bundle.putInt("key_dialer_section", 31);
            CacheIndexRealmObject cacheIndexRealmObject = (CacheIndexRealmObject) realmObject;
            intent = NumberDetailActivity.f12014n.m26841a(this.f25376a.mo9917a(), cacheIndexRealmObject.getNumber(), cacheIndexRealmObject.getE164(), bundle, "FROM_Dialer_Shortcut");
        } else if (realmObject instanceof LogsGroupRealmObject) {
            bundle.putInt("key_dialer_section", 33);
            LogsGroupRealmObject logsGroupRealmObject = (LogsGroupRealmObject) realmObject;
            Integer type2 = logsGroupRealmObject.getType();
            bundle.putBoolean("show_sn_warning", (type2 != null && type2.intValue() == 17) || ((type = logsGroupRealmObject.getType()) != null && type.intValue() == 19));
            intent = NumberDetailActivity.f12014n.m26841a(this.f25376a.mo9917a(), logsGroupRealmObject.getNumber(), logsGroupRealmObject.getE164(), bundle, "FROM_Dialer_Shortcut");
        } else {
            intent = null;
        }
        this.f25376a.mo9917a().startActivity(intent);
    }

    /* renamed from: d */
    public String m9829d() {
        return this.f25392q;
    }

    /* renamed from: e */
    public RealmObject m9827e() {
        return this.f25386k;
    }

    /* renamed from: f */
    public String m9826f() {
        return this.f25388m;
    }

    /* renamed from: g */
    public String m9825g() {
        return this.f25389n;
    }

    /* renamed from: h */
    public final Observable<List<RealmObject>> m9824h() {
        AbstractC14974f fVar = this.f25383h;
        AbstractC14906i iVar = f25374r[1];
        return (Observable) fVar.getValue();
    }

    /* renamed from: i */
    public final LruCache<String, List<CacheIndexRealmObject>> m9823i() {
        AbstractC14974f fVar = this.f25378c;
        AbstractC14906i iVar = f25374r[0];
        return (LruCache) fVar.getValue();
    }

    /* renamed from: j */
    public void m9822j() {
        String str;
        String str2;
        AbstractC11267k kVar = this.f25376a;
        String str3 = this.f25390o;
        boolean z = false;
        if (!(str3 == null || str3.length() == 0)) {
            String str4 = this.f25388m;
            z = false;
            if (!(str4 == null || str4.length() == 0)) {
                z = true;
            }
        }
        if (!z) {
            kVar = null;
        }
        if (kVar == null) {
            return;
        }
        if (this.f25387l) {
            C12928g.m4997a(this.f25376a.mo9917a(), this.f25389n, 3, "", (View.OnClickListener) null, DataUserReport.Source.OTHER);
            return;
        }
        C14289m.m1909a(2, 1, this.f25388m);
        RowInfo rowInfo = C11293r.f25354h.m9860a().get(this.f25389n);
        String str5 = this.f25389n;
        String str6 = this.f25388m;
        if (rowInfo == null) {
            str = "";
        } else {
            NumberInfo g = rowInfo.m28226g();
            C15149k.m383a((Object) g, "rowInfo.numberInfo");
            str = g.m28393C();
        }
        if (rowInfo == null) {
            str2 = "";
        } else {
            NumberInfo g2 = rowInfo.m28226g();
            C15149k.m383a((Object) g2, "rowInfo.numberInfo");
            str2 = g2.m28383M();
        }
        C12928g.m4989a(this.f25376a.mo9917a(), true, true, true, this.f25389n, (HandlerC12947l) null, 0, new DataUserReport(str5, str6, str, str2, DataUserReport.Source.OTHER));
    }

    /* renamed from: k */
    public void m9821k() {
        String str = this.f25389n;
        if (str != null) {
            C14217x3.m2145e(this.f25376a.mo9917a(), str, 1);
        }
    }

    /* renamed from: l */
    public void m9820l() {
        String str = this.f25388m;
        if (str != null) {
            C14299q.m1665w();
            C12860e.m5132a(this.f25376a.mo9917a(), str, (String) null, false, f25375s, (HandlerC12947l) null);
        }
    }

    /* renamed from: m */
    public void m9819m() {
        String str = this.f25388m;
        if (str != null) {
            C14299q.m1662x();
            C12810o.m5266a(this.f25376a.mo9917a(), 2, str, null, false, 0, 32, null);
        }
    }

    /* renamed from: n */
    public void m9818n() {
        String str = this.f25388m;
        if (str != null) {
            C13938c4.m3010a(this.f25376a.mo9917a(), str);
        }
    }

    /* renamed from: o */
    public void m9817o() {
        AbstractC11267k kVar = this.f25376a;
        String str = this.f25388m;
        boolean z = false;
        if (!(str == null || str.length() == 0)) {
            String str2 = this.f25389n;
            z = false;
            if (!(str2 == null || str2.length() == 0)) {
                z = true;
            }
        }
        if (!z) {
            kVar = null;
        }
        if (kVar == null) {
            return;
        }
        if (C14217x3.m2146e(this.f25376a.mo9917a(), this.f25388m) != null) {
            C14687h.m861a(this.f25376a.mo9917a(), C14206w4.m2225a((int) R$string.already_contact), 1).m858c();
        } else {
            C14217x3.m2178a(this.f25376a.mo9887k(), this.f25389n, C11052i.m10328e().m10329d(this.f25388m));
        }
    }

    /* renamed from: p */
    public void m9816p() {
        try {
            this.f25381f.m9796a(this.f25376a.mo9917a(), true);
        } catch (Resources.NotFoundException e) {
            C13973d4.m2952a(e);
        }
    }

    /* renamed from: q */
    public void m9815q() {
        int i = 1;
        this.f25379d = Settings.System.getInt(this.f25376a.mo9917a().getContentResolver(), "dtmf_tone", 1) == 1;
        if (this.f25380e == null) {
            ToneGenerator toneGenerator = null;
            boolean z = false;
            try {
                if (!TextUtils.isEmpty(C14017g4.m2819e())) {
                    String e = C14017g4.m2819e();
                    C15149k.m383a((Object) e, "UtilsInfo.getDeviceManufacturer()");
                    if (e != null) {
                        String lowerCase = e.toLowerCase();
                        C15149k.m383a((Object) lowerCase, "(this as java.lang.String).toLowerCase()");
                        z = false;
                        if (C14966w.m712c(lowerCase, "sony", false, 2, null)) {
                            z = true;
                        }
                    } else {
                        throw new C14986p("null cannot be cast to non-null type java.lang.String");
                    }
                }
                if (z) {
                    i = 2;
                }
                toneGenerator = new ToneGenerator(8, 80 / i);
            } catch (RuntimeException e2) {
                C13973d4.m2952a(e2);
            }
            this.f25380e = toneGenerator;
        }
    }

    /* renamed from: r */
    public boolean m9814r() {
        return this.f25387l;
    }

    /* renamed from: s */
    public boolean m9813s() {
        return this.f25391p;
    }

    /* renamed from: t */
    public void m9812t() {
        Subscription subscription = this.f25382g;
        if (subscription != null) {
            if (!subscription.isUnsubscribed()) {
                subscription = null;
            }
            if (subscription != null) {
                subscription.unsubscribe();
            }
        }
    }

    /* renamed from: u */
    public void m9811u() {
        if (this.f25377b == null) {
            this.f25377b = new C11257f();
        }
        C11257f.C11258a aVar = new C11257f.C11258a(this.f25376a.mo9917a(), new C11309f());
        C11257f fVar = this.f25377b;
        if (fVar != null) {
            fVar.m9935a(aVar);
        }
    }

    /* renamed from: v */
    public void m9810v() {
        Subscription subscription = this.f25382g;
        if (subscription != null) {
            if (!(!subscription.isUnsubscribed())) {
                subscription = null;
            }
            if (subscription != null) {
                subscription.unsubscribe();
            }
        }
        this.f25382g = m9824h().subscribe(new C11310g(), C11311h.f25401a);
    }

    /* renamed from: w */
    public void m9809w() {
        ToneGenerator toneGenerator;
        if (this.f25379d && (toneGenerator = this.f25380e) != null && toneGenerator != null) {
            toneGenerator.stopTone();
        }
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: x */
    public void m9808x() {
        this.f25376a.mo9917a().startActivity(new Intent("android.intent.action.CALL", Uri.fromParts("voicemail", "", null)));
    }

    /* renamed from: y */
    public void m9807y() {
        this.f25381f.m9797a();
    }
}
