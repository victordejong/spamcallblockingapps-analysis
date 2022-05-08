package androidx.transition;

import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/transition/TransitionSet.class */
public class TransitionSet extends Transition {

    /* renamed from: Q */
    int f5260Q;

    /* renamed from: O */
    private ArrayList<Transition> f5258O = new ArrayList<>();

    /* renamed from: P */
    private boolean f5259P = true;

    /* renamed from: R */
    boolean f5261R = false;

    /* renamed from: S */
    private int f5262S = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/TransitionSet$TransitionSetListener.class */
    public static class TransitionSetListener extends TransitionListenerAdapter {

        /* renamed from: a */
        TransitionSet f5264a;

        TransitionSetListener(TransitionSet transitionSet) {
            this.f5264a = transitionSet;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        /* renamed from: a */
        public void mo8575a(@NonNull Transition transition) {
            TransitionSet transitionSet = this.f5264a;
            if (!transitionSet.f5261R) {
                transitionSet.m16763n0();
                this.f5264a.f5261R = true;
            }
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        /* renamed from: c */
        public void mo8573c(@NonNull Transition transition) {
            TransitionSet transitionSet = this.f5264a;
            int i = transitionSet.f5260Q - 1;
            transitionSet.f5260Q = i;
            if (i == 0) {
                transitionSet.f5261R = false;
                transitionSet.m16761s();
            }
            transition.mo16743Z(this);
        }
    }

    public TransitionSet() {
    }

    @SuppressLint({"RestrictedApi"})
    public TransitionSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f5205g);
        m16717z0(TypedArrayUtils.m19596g(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionOrdering", 0, 0));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: B0 */
    private void m16745B0() {
        TransitionSetListener transitionSetListener = new TransitionSetListener(this);
        Iterator<Transition> it = this.f5258O.iterator();
        while (it.hasNext()) {
            it.next().mo16742a(transitionSetListener);
        }
        this.f5260Q = this.f5258O.size();
    }

    /* renamed from: s0 */
    private void m16724s0(@NonNull Transition transition) {
        this.f5258O.add(transition);
        transition.f5239w = this;
    }

    @NonNull
    /* renamed from: A0 */
    public TransitionSet mo16731m0(long j) {
        super.mo16731m0(j);
        return this;
    }

    @Override // androidx.transition.Transition
    @RestrictTo
    /* renamed from: V */
    public void mo16744V(View view) {
        super.mo16744V(view);
        int size = this.f5258O.size();
        for (int i = 0; i < size; i++) {
            this.f5258O.get(i).mo16744V(view);
        }
    }

    @Override // androidx.transition.Transition
    @RestrictTo
    /* renamed from: b0 */
    public void mo16739b0(View view) {
        super.mo16739b0(view);
        int size = this.f5258O.size();
        for (int i = 0; i < size; i++) {
            this.f5258O.get(i).mo16739b0(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    @RestrictTo
    public void cancel() {
        super.cancel();
        int size = this.f5258O.size();
        for (int i = 0; i < size; i++) {
            this.f5258O.get(i).cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    @RestrictTo
    /* renamed from: e0 */
    public void mo16738e0() {
        if (this.f5258O.isEmpty()) {
            m16763n0();
            m16761s();
            return;
        }
        m16745B0();
        if (!this.f5259P) {
            for (int i = 1; i < this.f5258O.size(); i++) {
                final Transition transition = this.f5258O.get(i);
                this.f5258O.get(i - 1).mo16742a(new TransitionListenerAdapter(this) { // from class: androidx.transition.TransitionSet.1
                    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                    /* renamed from: c */
                    public void mo8573c(@NonNull Transition transition2) {
                        transition.mo16738e0();
                        transition2.mo16743Z(this);
                    }
                });
            }
            Transition transition2 = this.f5258O.get(0);
            if (transition2 != null) {
                transition2.mo16738e0();
                return;
            }
            return;
        }
        Iterator<Transition> it = this.f5258O.iterator();
        while (it.hasNext()) {
            it.next().mo16738e0();
        }
    }

    @Override // androidx.transition.Transition
    @NonNull
    /* renamed from: f0 */
    public /* bridge */ /* synthetic */ Transition mo16737f0(long j) {
        m16719x0(j);
        return this;
    }

    @Override // androidx.transition.Transition
    /* renamed from: g0 */
    public void mo16736g0(Transition.EpicenterCallback epicenterCallback) {
        super.mo16736g0(epicenterCallback);
        this.f5262S |= 8;
        int size = this.f5258O.size();
        for (int i = 0; i < size; i++) {
            this.f5258O.get(i).mo16736g0(epicenterCallback);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo8628i(@NonNull TransitionValues transitionValues) {
        if (m16780N(transitionValues.f5272b)) {
            Iterator<Transition> it = this.f5258O.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.m16780N(transitionValues.f5272b)) {
                    next.mo8628i(transitionValues);
                    transitionValues.f5273c.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: k0 */
    public void mo16734k0(PathMotion pathMotion) {
        super.mo16734k0(pathMotion);
        this.f5262S |= 4;
        if (this.f5258O != null) {
            for (int i = 0; i < this.f5258O.size(); i++) {
                this.f5258O.get(i).mo16734k0(pathMotion);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    /* renamed from: l */
    public void mo16733l(TransitionValues transitionValues) {
        super.mo16733l(transitionValues);
        int size = this.f5258O.size();
        for (int i = 0; i < size; i++) {
            this.f5258O.get(i).mo16733l(transitionValues);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: l0 */
    public void mo16732l0(TransitionPropagation transitionPropagation) {
        super.mo16732l0(transitionPropagation);
        this.f5262S |= 2;
        int size = this.f5258O.size();
        for (int i = 0; i < size; i++) {
            this.f5258O.get(i).mo16732l0(transitionPropagation);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo8627m(@NonNull TransitionValues transitionValues) {
        if (m16780N(transitionValues.f5272b)) {
            Iterator<Transition> it = this.f5258O.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.m16780N(transitionValues.f5272b)) {
                    next.mo8627m(transitionValues);
                    transitionValues.f5273c.add(next);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    /* renamed from: o0 */
    public String mo16730o0(String str) {
        String o0 = super.mo16730o0(str);
        for (int i = 0; i < this.f5258O.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(o0);
            sb.append("\n");
            Transition transition = this.f5258O.get(i);
            sb.append(transition.mo16730o0(str + "  "));
            o0 = sb.toString();
        }
        return o0;
    }

    @Override // androidx.transition.Transition
    /* renamed from: p */
    public Transition clone() {
        TransitionSet transitionSet = (TransitionSet) super.clone();
        transitionSet.f5258O = new ArrayList<>();
        int size = this.f5258O.size();
        for (int i = 0; i < size; i++) {
            transitionSet.m16724s0(this.f5258O.get(i).clone());
        }
        return transitionSet;
    }

    @NonNull
    /* renamed from: p0 */
    public TransitionSet mo16742a(@NonNull Transition.TransitionListener transitionListener) {
        super.mo16742a(transitionListener);
        return this;
    }

    @NonNull
    /* renamed from: q0 */
    public TransitionSet mo16740b(@NonNull View view) {
        for (int i = 0; i < this.f5258O.size(); i++) {
            this.f5258O.get(i).mo16740b(view);
        }
        super.mo16740b(view);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    @RestrictTo
    /* renamed from: r */
    public void mo16726r(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2, ArrayList<TransitionValues> arrayList, ArrayList<TransitionValues> arrayList2) {
        long D = m16787D();
        int size = this.f5258O.size();
        for (int i = 0; i < size; i++) {
            Transition transition = this.f5258O.get(i);
            if (D > 0 && (this.f5259P || i == 0)) {
                long D2 = transition.m16787D();
                if (D2 > 0) {
                    transition.mo16731m0(D2 + D);
                } else {
                    transition.mo16731m0(D);
                }
            }
            transition.mo16726r(viewGroup, transitionValuesMaps, transitionValuesMaps2, arrayList, arrayList2);
        }
    }

    @NonNull
    /* renamed from: r0 */
    public TransitionSet m16725r0(@NonNull Transition transition) {
        m16724s0(transition);
        long j = this.f5224h;
        if (j >= 0) {
            transition.mo16737f0(j);
        }
        if ((this.f5262S & 1) != 0) {
            transition.mo16735h0(m16757w());
        }
        if ((this.f5262S & 2) != 0) {
            transition.mo16732l0(m16789A());
        }
        if ((this.f5262S & 4) != 0) {
            transition.mo16734k0(m16754z());
        }
        if ((this.f5262S & 8) != 0) {
            transition.mo16736g0(m16758v());
        }
        return this;
    }

    @Nullable
    /* renamed from: t0 */
    public Transition m16723t0(int i) {
        if (i < 0 || i >= this.f5258O.size()) {
            return null;
        }
        return this.f5258O.get(i);
    }

    /* renamed from: u0 */
    public int m16722u0() {
        return this.f5258O.size();
    }

    @NonNull
    /* renamed from: v0 */
    public TransitionSet mo16743Z(@NonNull Transition.TransitionListener transitionListener) {
        super.mo16743Z(transitionListener);
        return this;
    }

    @NonNull
    /* renamed from: w0 */
    public TransitionSet mo16741a0(@NonNull View view) {
        for (int i = 0; i < this.f5258O.size(); i++) {
            this.f5258O.get(i).mo16741a0(view);
        }
        super.mo16741a0(view);
        return this;
    }

    @NonNull
    /* renamed from: x0 */
    public TransitionSet m16719x0(long j) {
        ArrayList<Transition> arrayList;
        super.mo16737f0(j);
        if (this.f5224h >= 0 && (arrayList = this.f5258O) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f5258O.get(i).mo16737f0(j);
            }
        }
        return this;
    }

    @NonNull
    /* renamed from: y0 */
    public TransitionSet mo16735h0(@Nullable TimeInterpolator timeInterpolator) {
        this.f5262S |= 1;
        ArrayList<Transition> arrayList = this.f5258O;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f5258O.get(i).mo16735h0(timeInterpolator);
            }
        }
        super.mo16735h0(timeInterpolator);
        return this;
    }

    @NonNull
    /* renamed from: z0 */
    public TransitionSet m16717z0(int i) {
        if (i == 0) {
            this.f5259P = true;
        } else if (i == 1) {
            this.f5259P = false;
        } else {
            throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
        }
        return this;
    }
}
