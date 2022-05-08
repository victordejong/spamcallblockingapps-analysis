package p459j.p460a.p546o.p547f;

import android.content.Context;
import gogolook.callgogolook2.R$raw;
import gogolook.callgogolook2.gson.CallAction;
import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p585b5.C13930d;
import p626l.C14989s;
import p626l.p640y.C15085b;
import p626l.p640y.C15086c;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0001\u0016B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0086T¢\u0006\u0002\n��¨\u0006\u0017"}, m815d2 = {"Lgogolook/callgogolook2/cs/model/CustomerServiceDataManager;", "", "()V", "CATEGORY_BLOCK", "", "CATEGORY_CALLER_ID", "CATEGORY_IAP", "CATEGORY_NUMBER_INFO", "CATEGORY_OTHERS", "CATEGORY_PERMISSION", "CATEGORY_VERIFICATION", CallAction.DONE_TAG, "", "fetchFaqContents", "", "context", "Landroid/content/Context;", "listener", "Lgogolook/callgogolook2/cs/model/CustomerServiceDataManager$OnLoadCompleteListener;", "hasFaqContent", "", "region", "OnLoadCompleteListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.o.f.c */
/* loaded from: classes2-dex2jar.jar:j/a/o/f/c.class */
public final class C13286c {
    public static final int CATEGORY_BLOCK = 1;
    public static final int CATEGORY_CALLER_ID = 2;
    public static final int CATEGORY_IAP = 3;
    public static final int CATEGORY_NUMBER_INFO = 5;
    public static final int CATEGORY_OTHERS = 9;
    public static final int CATEGORY_PERMISSION = 4;
    public static final int CATEGORY_VERIFICATION = 6;
    public static final C13286c INSTANCE = new C13286c();
    public static final String TAG = "CustomerServiceDataManager";

    /* renamed from: j.a.o.f.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/o/f/c$a.class */
    public interface AbstractC13287a {
        void onError(Throwable th);

        void onLoadComplete(C13291d dVar);
    }

    /* renamed from: j.a.o.f.c$b */
    /* loaded from: classes2-dex2jar.jar:j/a/o/f/c$b.class */
    public static final class C13288b<T> implements Single.OnSubscribe<T> {
        public final /* synthetic */ Context $context;

        public C13288b(Context context) {
            this.$context = context;
        }

        public final void call(SingleSubscriber<? super C13291d> singleSubscriber) {
            InputStream openRawResource = this.$context.getResources().openRawResource(R$raw.cs_faq);
            if (openRawResource != null) {
                try {
                    singleSubscriber.onSuccess(C13291d.getRootAsFaqContent(ByteBuffer.wrap(C15085b.m450a(openRawResource))));
                    C14989s sVar = C14989s.f33022a;
                    th = null;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } finally {
                        C15086c.m447a(openRawResource, th);
                    }
                }
            }
        }
    }

    /* renamed from: j.a.o.f.c$c */
    /* loaded from: classes2-dex2jar.jar:j/a/o/f/c$c.class */
    public static final class C13289c<T> implements Action1<C13291d> {
        public final /* synthetic */ AbstractC13287a $listener;
        public final /* synthetic */ C13930d $probe;

        public C13289c(AbstractC13287a aVar, C13930d dVar) {
            this.$listener = aVar;
            this.$probe = dVar;
        }

        public final void call(C13291d dVar) {
            AbstractC13287a aVar = this.$listener;
            if (aVar != null) {
                C15149k.m383a((Object) dVar, "it");
                aVar.onLoadComplete(dVar);
            }
            this.$probe.m3017f();
        }
    }

    /* renamed from: j.a.o.f.c$d */
    /* loaded from: classes2-dex2jar.jar:j/a/o/f/c$d.class */
    public static final class C13290d<T> implements Action1<Throwable> {
        public final /* synthetic */ AbstractC13287a $listener;

        public C13290d(AbstractC13287a aVar) {
            this.$listener = aVar;
        }

        public final void call(Throwable th) {
            AbstractC13287a aVar = this.$listener;
            if (aVar != null) {
                C15149k.m383a((Object) th, "it");
                aVar.onError(th);
            }
        }
    }

    public static final void fetchFaqContents(Context context, AbstractC13287a aVar) {
        C15149k.m377b(context, "context");
        C13930d dVar = new C13930d();
        dVar.m3018e();
        Single.create(new C13288b(context)).subscribeOn(Schedulers.m0io()).subscribe(new C13289c(aVar, dVar), new C13290d(aVar));
    }

    public static /* synthetic */ void fetchFaqContents$default(Context context, AbstractC13287a aVar, int i, Object obj) {
        if ((i & 2) != 0) {
            aVar = null;
        }
        fetchFaqContents(context, aVar);
    }

    public static final boolean hasFaqContent(String str) {
        C15149k.m377b(str, "region");
        return C13891a.m3163b(str);
    }
}
