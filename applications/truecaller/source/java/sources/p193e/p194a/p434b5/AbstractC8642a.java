package p193e.p194a.p434b5;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.SparseArray;
import com.truecaller.log.AssertionUtil;
import com.truecaller.social.SocialNetworkType;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p434b5.C8647d;
/* renamed from: e.a.b5.a */
/* loaded from: classes13-dex2jar.jar:e/a/b5/a.class */
public abstract class AbstractC8642a implements AbstractC8645b, Handler.Callback {

    /* renamed from: b */
    public final SocialNetworkType f26502b;

    /* renamed from: d */
    public AbstractC8646c<C8652f> f26504d;

    /* renamed from: e */
    public AbstractC8646c<Boolean> f26505e;

    /* renamed from: a */
    public final SparseArray<Set<Message>> f26501a = new SparseArray<>();

    /* renamed from: c */
    public final Handler f26503c = new HandlerC8644b(Looper.getMainLooper(), this);

    /* renamed from: e.a.b5.a$a */
    /* loaded from: classes13-dex2jar.jar:e/a/b5/a$a.class */
    public static class C8643a implements Comparator<Message> {

        /* renamed from: a */
        public static final C8643a f26506a = new C8643a();

        @Override // java.util.Comparator
        public int compare(Message message, Message message2) {
            int i = message.what;
            int i2 = message2.what;
            return i < i2 ? -1 : i == i2 ? 0 : 1;
        }
    }

    /* renamed from: e.a.b5.a$b */
    /* loaded from: classes13-dex2jar.jar:e/a/b5/a$b.class */
    public static class HandlerC8644b extends Handler {

        /* renamed from: a */
        public final WeakReference<Handler.Callback> f26507a;

        public HandlerC8644b(Looper looper, Handler.Callback callback) {
            super(looper);
            this.f26507a = new WeakReference<>(callback);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Handler.Callback callback = this.f26507a.get();
            if (callback != null) {
                callback.handleMessage(message);
            }
        }
    }

    public AbstractC8642a(SocialNetworkType socialNetworkType) {
        this.f26502b = socialNetworkType;
    }

    /* renamed from: q */
    public static String m28159q(int i) {
        switch (i) {
            case 1:
                return "MSG_DO_INITIALIZE";
            case 2:
                return "MSG_ON_INITIALIZED";
            case 3:
                return "MSG_DO_CONNECTING";
            case 4:
                return "MSG_ON_CONNECTED";
            case 5:
                return "MSG_DO_SIGN_IN";
            case 6:
                return "MSG_ON_SIGNED_IN";
            case 7:
                return "MSG_DO_SIGN_OUT";
            case 8:
                return "MSG_ON_SIGNED_OUT";
            case 9:
                return "MSG_DO_GET_PROFILE";
            case 10:
                return "MSG_ON_GOT_PROFILE";
            case 11:
                return "MSG_DO_DISCONNECTING";
            case 12:
                return "MSG_ON_DISCONNECTED";
            case 13:
                return "MSG_DO_DESTROY";
            case 14:
                return "MSG_ON_DESTROYED";
            case 15:
                return "MSG_DO_RESOLVE";
            case 16:
                return "MSG_DO_ERROR";
            default:
                return C22128a.m8599l2("MSG_(", i, ")");
        }
    }

    /* renamed from: r */
    public static String m28158r(Collection<Message> collection) {
        StringBuilder sb = new StringBuilder("[");
        int i = 0;
        for (Message message : collection) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m28159q(message.what));
            i++;
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // p193e.p194a.p434b5.AbstractC8645b
    /* renamed from: c */
    public void mo28150c(Bundle bundle) {
    }

    @Override // p193e.p194a.p434b5.AbstractC8645b
    /* renamed from: d */
    public void mo28149d(Bundle bundle) {
    }

    /* renamed from: e */
    public void mo28148e(Object obj) {
        this.f26503c.sendEmptyMessage(4);
    }

    /* renamed from: f */
    public void mo28147f(Object obj) {
        this.f26503c.sendEmptyMessage(12);
    }

    /* renamed from: g */
    public abstract void mo28146g(Object obj);

    /* renamed from: h */
    public void mo28145h(int i, Object obj) {
        m28161o(16, i, 0, new C8647d(obj == null ? null : obj.toString()));
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            String str = "handleMessage(" + m28159q(message.what) + "," + message.arg1 + "," + message.arg2 + "," + message.obj + ")";
            int size = this.f26501a.size();
            for (int i = 0; i < size; i++) {
                if (this.f26501a.valueAt(i).remove(message)) {
                    m28159q(message.what);
                    m28159q(this.f26501a.keyAt(i));
                }
            }
            switch (message.what) {
                case 1:
                    this.f26503c.sendEmptyMessage(2);
                    break;
                case 2:
                    mo28140m(message.obj);
                    break;
                case 3:
                    mo28148e(message.obj);
                    break;
                case 4:
                    mo28142k(message.obj);
                    break;
                case 5:
                    mo28144i(message.obj);
                    break;
                case 6:
                    AbstractC8646c<Boolean> abstractC8646c = this.f26505e;
                    if (abstractC8646c != null) {
                        abstractC8646c.m28156b(this, Boolean.TRUE);
                    }
                    this.f26503c.sendEmptyMessage(3);
                    break;
                case 7:
                    mo28143j(message.obj);
                    break;
                case 8:
                    AbstractC8646c<Boolean> abstractC8646c2 = this.f26505e;
                    if (abstractC8646c2 != null) {
                        abstractC8646c2.m28156b(this, Boolean.FALSE);
                    }
                    this.f26503c.sendEmptyMessage(11);
                    break;
                case 9:
                    mo28146g(message.obj);
                    break;
                case 10:
                    Object obj = message.obj;
                    AbstractC8646c<C8652f> abstractC8646c3 = this.f26504d;
                    if (abstractC8646c3 != null) {
                        if (obj instanceof C8652f) {
                            abstractC8646c3.m28156b(this, (C8652f) obj);
                            break;
                        } else if (obj instanceof Throwable) {
                            abstractC8646c3.m28157a(this, (Throwable) obj);
                            break;
                        } else {
                            abstractC8646c3.m28157a(this, new C8647d.C8649b(obj == null ? "No profile" : obj.toString()));
                            break;
                        }
                    }
                    break;
                case 11:
                    mo28147f(message.obj);
                    break;
                case 12:
                    mo28141l(message.obj);
                    break;
                case 13:
                    this.f26503c.sendEmptyMessage(14);
                    break;
                case 14:
                    break;
                case 15:
                    m28159q(message.arg1);
                    mo28145h(message.arg1, message.obj);
                    break;
                case 16:
                    m28159q(message.arg1);
                    int i2 = message.arg1;
                    Throwable th = (Throwable) message.obj;
                    if (i2 == 9 || i2 == 10) {
                        AbstractC8646c<C8652f> abstractC8646c4 = this.f26504d;
                        if (abstractC8646c4 != null) {
                            abstractC8646c4.m28157a(this, th);
                        }
                    } else {
                        AbstractC8646c<Boolean> abstractC8646c5 = this.f26505e;
                        if (abstractC8646c5 != null) {
                            abstractC8646c5.m28157a(this, th);
                        }
                    }
                    this.f26503c.sendEmptyMessage(11);
                    break;
                default:
                    AssertionUtil.isTrue(false, "MSG_(" + message.what + ")");
                    break;
            }
            Set<Message> set = this.f26501a.get(message.what);
            if (set == null || set.isEmpty()) {
                return true;
            }
            m28159q(message.what);
            m28158r(set);
            for (Message message2 : set) {
                message2.sendToTarget();
            }
            set.clear();
            return true;
        } catch (RuntimeException e) {
            AssertionUtil.shouldNeverHappen(e, new String[0]);
            m28162n(message.what, e);
            return true;
        }
    }

    /* renamed from: i */
    public abstract void mo28144i(Object obj);

    /* renamed from: j */
    public abstract void mo28143j(Object obj);

    /* renamed from: k */
    public void mo28142k(Object obj) {
    }

    /* renamed from: l */
    public void mo28141l(Object obj) {
    }

    /* renamed from: m */
    public void mo28140m(Object obj) {
    }

    /* renamed from: n */
    public void m28162n(int i, Throwable th) {
        m28161o(16, i, 0, th);
    }

    /* renamed from: o */
    public void m28161o(int i, int i2, int i3, Object obj) {
        Handler handler = this.f26503c;
        handler.sendMessage(handler.obtainMessage(i, i2, i3, obj));
    }

    @Override // p193e.p194a.p434b5.AbstractC8645b
    public void onStart() {
    }

    @Override // p193e.p194a.p434b5.AbstractC8645b
    public void onStop() {
    }

    /* renamed from: p */
    public void m28160p(int i, int i2, int i3, int i4, Object obj) {
        Set<Message> set = this.f26501a.get(i);
        TreeSet treeSet = set;
        if (set == null) {
            treeSet = new TreeSet(C8643a.f26506a);
            this.f26501a.append(i, treeSet);
        }
        treeSet.add(this.f26503c.obtainMessage(i2, i3, i4, null));
    }
}
