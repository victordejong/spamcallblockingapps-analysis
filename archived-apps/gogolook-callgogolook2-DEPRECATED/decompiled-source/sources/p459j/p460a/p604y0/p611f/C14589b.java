package p459j.p460a.p604y0.p611f;

import androidx.annotation.MainThread;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u0010*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0007J \u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\b��\u0012\u00028��0\fH\u0017J\u0017\u0010\r\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00018��H\u0017¢\u0006\u0002\u0010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, m815d2 = {"Lgogolook/callgogolook2/vas/util/SingleLiveEvent;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/MutableLiveData;", "()V", "pending", "Ljava/util/concurrent/atomic/AtomicBoolean;", NotificationCompat.CATEGORY_CALL, "", "observe", "owner", "Landroidx/lifecycle/LifecycleOwner;", "observer", "Landroidx/lifecycle/Observer;", "setValue", "t", "(Ljava/lang/Object;)V", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.f.b */
/* loaded from: classes3-dex2jar.jar:j/a/y0/f/b.class */
public final class C14589b<T> extends MutableLiveData<T> {

    /* renamed from: a */
    public final AtomicBoolean f32586a = new AtomicBoolean(false);

    /* renamed from: j.a.y0.f.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/f/b$a.class */
    public static final class C14590a {
        public C14590a() {
        }

        public /* synthetic */ C14590a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.y0.f.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/f/b$b.class */
    public static final class C14591b<T> implements Observer<T> {

        /* renamed from: b */
        public final /* synthetic */ Observer f32588b;

        public C14591b(Observer observer) {
            this.f32588b = observer;
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            if (C14589b.this.f32586a.compareAndSet(true, false)) {
                this.f32588b.onChanged(t);
            }
        }
    }

    static {
        new C14590a(null);
    }

    @MainThread
    /* renamed from: a */
    public final void m1052a() {
        setValue(null);
    }

    @Override // androidx.lifecycle.LiveData
    @MainThread
    public void observe(LifecycleOwner lifecycleOwner, Observer<? super T> observer) {
        C15149k.m377b(lifecycleOwner, "owner");
        C15149k.m377b(observer, "observer");
        hasActiveObservers();
        super.observe(lifecycleOwner, new C14591b(observer));
    }

    @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
    @MainThread
    public void setValue(T t) {
        this.f32586a.set(true);
        super.setValue(t);
    }
}
