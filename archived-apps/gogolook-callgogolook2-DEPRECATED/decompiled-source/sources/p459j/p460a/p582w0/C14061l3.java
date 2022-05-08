package p459j.p460a.p582w0;

import p459j.p460a.p582w0.C14037j3;
import p660rx.Subscription;
import p660rx.functions.Action1;
import p660rx.subjects.PublishSubject;
import p660rx.subjects.SerializedSubject;
import p660rx.subjects.Subject;
/* renamed from: j.a.w0.l3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/l3.class */
public class C14061l3 implements C14037j3.AbstractC14039b {

    /* renamed from: a */
    public final Subject<Object, Object> f31513a = new SerializedSubject(PublishSubject.create());

    /* renamed from: j.a.w0.l3$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/l3$a.class */
    public class C14062a implements Action1<Throwable> {
        public C14062a(C14061l3 l3Var) {
        }

        /* renamed from: a */
        public void call(Throwable th) {
            C13973d4.m2952a(th);
        }
    }

    @Override // p459j.p460a.p582w0.C14037j3.AbstractC14039b
    /* renamed from: a */
    public Subscription mo2703a(Action1 action1) {
        return this.f31513a.subscribe(action1, new C14062a(this));
    }

    @Override // p459j.p460a.p582w0.C14037j3.AbstractC14039b
    /* renamed from: a */
    public void mo2704a(Object obj) {
        this.f31513a.onNext(obj);
    }
}
