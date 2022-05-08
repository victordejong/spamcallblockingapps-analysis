package com.tmobile.services.nameid.scamBlock;

import android.content.Context;
import androidx.fragment.app.Fragment;
import com.tmobile.services.nameid.scamBlock.ScamBlock;
import com.tmobile.services.nameid.utility.DateUtils;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.WidgetUtils;
import java.lang.ref.WeakReference;
import java.sql.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� &2\u00020\u00012\u00020\u0002:\u0001&B\u0017\u0012\u0006\u0010#\u001a\u00020 \u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b$\u0010%J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0016\u0010\u0010J\u0017\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0018\u0010\rJ\u0017\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u0010R\u0019\u0010\u001b\u001a\u00020\u001a8\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u001f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006'"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlockPresenter;", "com/tmobile/services/nameid/scamBlock/ScamBlock$Presenter", "com/tmobile/services/nameid/scamBlock/ScamBlock$StateListener", "Ljava/sql/Date;", "getCutoffDate", "()Ljava/sql/Date;", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "getState", "()Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "", "userConfirmed", "", "onScamBlockClicked", "(Z)V", "newState", "onScamBlockStateChanged", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;)V", "desiredState", "", "errorCode", "onUpdateFail", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;Ljava/lang/String;)V", "onUpdateSuccess", "visible", "onViewVisiblity", "updateView", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$Model;", "model", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$Model;", "getModel", "()Lcom/tmobile/services/nameid/scamBlock/ScamBlock$Model;", "Ljava/lang/ref/WeakReference;", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$View;", "viewRef", "Ljava/lang/ref/WeakReference;", "view", "<init>", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$View;Lcom/tmobile/services/nameid/scamBlock/ScamBlock$Model;)V", "Companion", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockPresenter.class */
public final class ScamBlockPresenter implements ScamBlock.Presenter, ScamBlock.StateListener {

    /* renamed from: a */
    private final WeakReference<ScamBlock.View> f13813a;
    @NotNull

    /* renamed from: b */
    private final ScamBlock.Model f13814b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlockPresenter$Companion;", "", "LOG_TAG", "Ljava/lang/String;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockPresenter$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockPresenter$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13815a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f13816b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f13817c;

        static {
            int[] iArr = new int[ScamBlock.State.values().length];
            f13815a = iArr;
            iArr[ScamBlock.State.ON.ordinal()] = 1;
            f13815a[ScamBlock.State.FAKE_ON.ordinal()] = 2;
            f13815a[ScamBlock.State.OFF.ordinal()] = 3;
            f13815a[ScamBlock.State.FAKE_OFF.ordinal()] = 4;
            f13815a[ScamBlock.State.PENDING_ON.ordinal()] = 5;
            f13815a[ScamBlock.State.PENDING_OFF.ordinal()] = 6;
            int[] iArr2 = new int[ScamBlock.State.values().length];
            f13816b = iArr2;
            iArr2[ScamBlock.State.ON.ordinal()] = 1;
            int[] iArr3 = new int[ScamBlock.State.values().length];
            f13817c = iArr3;
            iArr3[ScamBlock.State.ON.ordinal()] = 1;
            f13817c[ScamBlock.State.FAKE_ON.ordinal()] = 2;
            f13817c[ScamBlock.State.OFF.ordinal()] = 3;
            f13817c[ScamBlock.State.FAKE_OFF.ordinal()] = 4;
            f13817c[ScamBlock.State.PENDING_ON.ordinal()] = 5;
            f13817c[ScamBlock.State.PENDING_OFF.ordinal()] = 6;
        }
    }

    public ScamBlockPresenter(@NotNull ScamBlock.View view, @NotNull ScamBlock.Model model) {
        Intrinsics.m1830e(view, "view");
        Intrinsics.m1830e(model, "model");
        this.f13814b = model;
        this.f13813a = new WeakReference<>(view);
        this.f13814b.mo6334c(this);
    }

    /* renamed from: f */
    private final Date m6280f() {
        return new Date(System.currentTimeMillis() - (DateUtils.f14255d.longValue() * 30));
    }

    /* renamed from: g */
    private final void m6279g(ScamBlock.State state) {
        Date f = m6280f();
        switch (WhenMappings.f13817c[state.ordinal()]) {
            case 1:
            case 2:
                ScamBlock.View view = this.f13813a.get();
                if (view != null) {
                    view.mo6288m0();
                }
                int b = this.f13814b.mo6329b(f);
                ScamBlock.View view2 = this.f13813a.get();
                if (view2 != null) {
                    view2.mo6290a(b);
                    return;
                }
                return;
            case 3:
            case 4:
                ScamBlock.View view3 = this.f13813a.get();
                if (view3 != null) {
                    view3.mo6287p();
                }
                int a = this.f13814b.mo6330a(f);
                ScamBlock.View view4 = this.f13813a.get();
                if (view4 != null) {
                    view4.mo6290a(a);
                    return;
                }
                return;
            case 5:
                ScamBlock.View view5 = this.f13813a.get();
                if (view5 != null) {
                    view5.mo6289h0();
                    return;
                }
                return;
            case 6:
                ScamBlock.View view6 = this.f13813a.get();
                if (view6 != null) {
                    view6.mo6286t0();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.StateListener
    /* renamed from: a */
    public void mo6285a(@NotNull ScamBlock.State newState) {
        Intrinsics.m1830e(newState, "newState");
        LogUtil.m5643d("ScamBlockPresenter#", "Scam Block State changed to " + newState);
        m6279g(newState);
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.StateListener
    /* renamed from: b */
    public void mo6284b(@NotNull ScamBlock.State desiredState, @NotNull String errorCode) {
        Intrinsics.m1830e(desiredState, "desiredState");
        Intrinsics.m1830e(errorCode, "errorCode");
        ScamBlock.View view = this.f13813a.get();
        if (view != null) {
            view.mo6298M(desiredState == ScamBlock.State.ON, errorCode);
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.Presenter
    /* renamed from: c */
    public void mo6283c(boolean z) {
        ScamBlock.View view;
        if (z) {
            m6279g(this.f13814b.getState());
            if (WhenMappings.f13816b[this.f13814b.getState().ordinal()] == 1 && (view = this.f13813a.get()) != null) {
                view.mo6306A();
            }
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.Presenter
    /* renamed from: d */
    public void mo6282d(boolean z) {
        Fragment fragment;
        Context context;
        ScamBlock.View view = this.f13813a.get();
        if ((view instanceof Fragment) && (context = (fragment = (Fragment) view).getContext()) != null && !WidgetUtils.m5241c0(context, fragment.getChildFragmentManager())) {
            int i = WhenMappings.f13815a[this.f13814b.getState().ordinal()];
            if (i == 1 || i == 2) {
                if (z) {
                    this.f13814b.mo6333e(context);
                    return;
                }
                ScamBlock.View view2 = this.f13813a.get();
                if (view2 != null) {
                    view2.mo6293Q();
                }
            } else if (i == 3 || i == 4) {
                this.f13814b.mo6331h(context);
            }
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.StateListener
    /* renamed from: e */
    public void mo6281e(@NotNull ScamBlock.State newState) {
        ScamBlock.View view;
        Intrinsics.m1830e(newState, "newState");
        if (newState == ScamBlock.State.ON && !this.f13814b.mo6332g() && (view = this.f13813a.get()) != null) {
            view.mo6291V();
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.Presenter
    @NotNull
    public ScamBlock.State getState() {
        return this.f13814b.getState();
    }
}
