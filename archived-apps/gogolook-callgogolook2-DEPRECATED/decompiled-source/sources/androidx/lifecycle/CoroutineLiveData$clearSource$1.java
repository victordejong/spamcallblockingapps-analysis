package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
@AbstractC15070f(m473c = "androidx.lifecycle.CoroutineLiveData", m472f = "CoroutineLiveData.kt", m471l = {234}, m470m = "clearSource$lifecycle_livedata_ktx_release")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0080@"}, m815d2 = {"clearSource", "", ExifInterface.GPS_DIRECTION_TRUE, "continuation", "Lkotlin/coroutines/Continuation;", ""}, m814k = 3, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/CoroutineLiveData$clearSource$1.class */
public final class CoroutineLiveData$clearSource$1 extends AbstractC15068d {
    public Object L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ CoroutineLiveData this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineLiveData$clearSource$1(CoroutineLiveData coroutineLiveData, AbstractC15044d dVar) {
        super(dVar);
        this.this$0 = coroutineLiveData;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.clearSource$lifecycle_livedata_ktx_release(this);
    }
}
