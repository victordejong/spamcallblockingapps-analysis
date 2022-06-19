package p193e.p194a.p717f.p732x;

import android.view.View;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.incallui.C4013R;
import com.truecaller.incallui.utils.OngoingCallActionButton;
import p1727n3.p1806j0.AbstractC26410a;
/* renamed from: e.a.f.x.k */
/* loaded from: classes10-dex2jar.jar:e/a/f/x/k.class */
public final class C13752k implements AbstractC26410a {

    /* renamed from: a */
    public final ConstraintLayout f39877a;

    /* renamed from: b */
    public final OngoingCallActionButton f39878b;

    /* renamed from: c */
    public final FrameLayout f39879c;

    /* renamed from: d */
    public final OngoingCallActionButton f39880d;

    /* renamed from: e */
    public final FrameLayout f39881e;

    /* renamed from: f */
    public final OngoingCallActionButton f39882f;

    /* renamed from: g */
    public final OngoingCallActionButton f39883g;

    /* renamed from: h */
    public final FrameLayout f39884h;

    /* renamed from: i */
    public final OngoingCallActionButton f39885i;

    /* renamed from: j */
    public final OngoingCallActionButton f39886j;

    /* renamed from: k */
    public final OngoingCallActionButton f39887k;

    /* renamed from: l */
    public final OngoingCallActionButton f39888l;

    /* renamed from: m */
    public final OngoingCallActionButton f39889m;

    public C13752k(ConstraintLayout constraintLayout, OngoingCallActionButton ongoingCallActionButton, FrameLayout frameLayout, ConstraintLayout constraintLayout2, OngoingCallActionButton ongoingCallActionButton2, FrameLayout frameLayout2, OngoingCallActionButton ongoingCallActionButton3, OngoingCallActionButton ongoingCallActionButton4, FrameLayout frameLayout3, OngoingCallActionButton ongoingCallActionButton5, OngoingCallActionButton ongoingCallActionButton6, OngoingCallActionButton ongoingCallActionButton7, OngoingCallActionButton ongoingCallActionButton8, OngoingCallActionButton ongoingCallActionButton9) {
        this.f39877a = constraintLayout;
        this.f39878b = ongoingCallActionButton;
        this.f39879c = frameLayout;
        this.f39880d = ongoingCallActionButton2;
        this.f39881e = frameLayout2;
        this.f39882f = ongoingCallActionButton3;
        this.f39883g = ongoingCallActionButton4;
        this.f39884h = frameLayout3;
        this.f39885i = ongoingCallActionButton5;
        this.f39886j = ongoingCallActionButton6;
        this.f39887k = ongoingCallActionButton7;
        this.f39888l = ongoingCallActionButton8;
        this.f39889m = ongoingCallActionButton9;
    }

    /* renamed from: a */
    public static C13752k m21233a(View view) {
        int i = C4013R.C4015id.addCallAction;
        OngoingCallActionButton ongoingCallActionButton = (OngoingCallActionButton) view.findViewById(i);
        if (ongoingCallActionButton != null) {
            i = C4013R.C4015id.addOrMergeCallContainer;
            FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
            if (frameLayout != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i = C4013R.C4015id.holdCallAction;
                OngoingCallActionButton ongoingCallActionButton2 = (OngoingCallActionButton) view.findViewById(i);
                if (ongoingCallActionButton2 != null) {
                    i = C4013R.C4015id.holdOrSwapContainer;
                    FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i);
                    if (frameLayout2 != null) {
                        i = C4013R.C4015id.keypadAction;
                        OngoingCallActionButton ongoingCallActionButton3 = (OngoingCallActionButton) view.findViewById(i);
                        if (ongoingCallActionButton3 != null) {
                            i = C4013R.C4015id.manageCallAction;
                            OngoingCallActionButton ongoingCallActionButton4 = (OngoingCallActionButton) view.findViewById(i);
                            if (ongoingCallActionButton4 != null) {
                                i = C4013R.C4015id.manageConferenceOrMessageContainer;
                                FrameLayout frameLayout3 = (FrameLayout) view.findViewById(i);
                                if (frameLayout3 != null) {
                                    i = C4013R.C4015id.mergeCallsAction;
                                    OngoingCallActionButton ongoingCallActionButton5 = (OngoingCallActionButton) view.findViewById(i);
                                    if (ongoingCallActionButton5 != null) {
                                        i = C4013R.C4015id.messageAction;
                                        OngoingCallActionButton ongoingCallActionButton6 = (OngoingCallActionButton) view.findViewById(i);
                                        if (ongoingCallActionButton6 != null) {
                                            i = C4013R.C4015id.muteAction;
                                            OngoingCallActionButton ongoingCallActionButton7 = (OngoingCallActionButton) view.findViewById(i);
                                            if (ongoingCallActionButton7 != null) {
                                                i = C4013R.C4015id.speakerAction;
                                                OngoingCallActionButton ongoingCallActionButton8 = (OngoingCallActionButton) view.findViewById(i);
                                                if (ongoingCallActionButton8 != null) {
                                                    i = C4013R.C4015id.swapCallsAction;
                                                    OngoingCallActionButton ongoingCallActionButton9 = (OngoingCallActionButton) view.findViewById(i);
                                                    if (ongoingCallActionButton9 != null) {
                                                        return new C13752k(constraintLayout, ongoingCallActionButton, frameLayout, constraintLayout, ongoingCallActionButton2, frameLayout2, ongoingCallActionButton3, ongoingCallActionButton4, frameLayout3, ongoingCallActionButton5, ongoingCallActionButton6, ongoingCallActionButton7, ongoingCallActionButton8, ongoingCallActionButton9);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
