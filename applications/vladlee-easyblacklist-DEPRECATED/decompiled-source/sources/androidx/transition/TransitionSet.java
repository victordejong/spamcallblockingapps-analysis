package androidx.transition;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.p033a.C0645i;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/TransitionSet.class */
public class TransitionSet extends Transition {

    /* renamed from: a */
    int f5154a;

    /* renamed from: j */
    private ArrayList<Transition> f5156j = new ArrayList<>();

    /* renamed from: k */
    private boolean f5157k = true;

    /* renamed from: i */
    boolean f5155i = false;

    /* renamed from: l */
    private int f5158l = 0;

    /* renamed from: androidx.transition.TransitionSet$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/TransitionSet$a.class */
    static final class C1184a extends C1215az {

        /* renamed from: a */
        TransitionSet f5159a;

        C1184a(TransitionSet transitionSet) {
            this.f5159a = transitionSet;
        }

        @Override // androidx.transition.C1215az, androidx.transition.Transition.AbstractC1183c
        /* renamed from: a */
        public final void mo6478a(Transition transition) {
            this.f5159a.f5154a--;
            if (this.f5159a.f5154a == 0) {
                TransitionSet transitionSet = this.f5159a;
                transitionSet.f5155i = false;
                transitionSet.m6597h();
            }
            transition.mo6579b(this);
        }

        @Override // androidx.transition.C1215az, androidx.transition.Transition.AbstractC1183c
        /* renamed from: c */
        public final void mo6476c() {
            if (!this.f5159a.f5155i) {
                this.f5159a.m6598g();
                this.f5159a.f5155i = true;
            }
        }
    }

    public TransitionSet() {
    }

    public TransitionSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1211av.f5223i);
        m6592a(C0645i.m8628a(obtainStyledAttributes, (XmlPullParser) ((XmlResourceParser) attributeSet), "transitionOrdering", 0, 0));
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Transition mo6586a(Transition.AbstractC1183c cVar) {
        return (TransitionSet) super.mo6586a(cVar);
    }

    /* renamed from: a */
    public final TransitionSet m6592a(int i) {
        if (i == 0) {
            this.f5157k = true;
        } else if (i == 1) {
            this.f5157k = false;
        } else {
            throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: ".concat(String.valueOf(i)));
        }
        return this;
    }

    /* renamed from: a */
    public final TransitionSet m6585a(Transition transition) {
        this.f5156j.add(transition);
        transition.f5128e = this;
        if (this.f5125b >= 0) {
            transition.mo6591a(this.f5125b);
        }
        if ((this.f5158l & 1) != 0) {
            transition.mo6590a(m6602c());
        }
        if ((this.f5158l & 2) != 0) {
            transition.mo6584a(this.f5131h);
        }
        if ((this.f5158l & 4) != 0) {
            transition.mo6588a(m6596i());
        }
        if ((this.f5158l & 8) != 0) {
            transition.mo6587a(m6595j());
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final String mo6583a(String str) {
        String a = super.mo6583a(str);
        for (int i = 0; i < this.f5156j.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(a);
            sb.append("\n");
            Transition transition = this.f5156j.get(i);
            sb.append(transition.mo6583a(str + "  "));
            a = sb.toString();
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo6589a(ViewGroup viewGroup, C1225bg bgVar, C1225bg bgVar2, ArrayList<C1224bf> arrayList, ArrayList<C1224bf> arrayList2) {
        long b = m6606b();
        int size = this.f5156j.size();
        for (int i = 0; i < size; i++) {
            Transition transition = this.f5156j.get(i);
            if (b > 0 && (this.f5157k || i == 0)) {
                long b2 = transition.m6606b();
                if (b2 > 0) {
                    transition.mo6581b(b2 + b);
                } else {
                    transition.mo6581b(b);
                }
            }
            transition.mo6589a(viewGroup, bgVar, bgVar2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo6588a(PathMotion pathMotion) {
        super.mo6588a(pathMotion);
        this.f5158l |= 4;
        for (int i = 0; i < this.f5156j.size(); i++) {
            this.f5156j.get(i).mo6588a(pathMotion);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo6587a(Transition.AbstractC1182b bVar) {
        super.mo6587a(bVar);
        this.f5158l |= 8;
        int size = this.f5156j.size();
        for (int i = 0; i < size; i++) {
            this.f5156j.get(i).mo6587a(bVar);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo6584a(AbstractC1220bc bcVar) {
        super.mo6584a(bcVar);
        this.f5158l |= 2;
        int size = this.f5156j.size();
        for (int i = 0; i < size; i++) {
            this.f5156j.get(i).mo6584a(bcVar);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo966a(C1224bf bfVar) {
        if (m6605b(bfVar.f5246b)) {
            Iterator<Transition> it = this.f5156j.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.m6605b(bfVar.f5246b)) {
                    next.mo966a(bfVar);
                    bfVar.f5247c.add(next);
                }
            }
        }
    }

    /* renamed from: b */
    public final Transition m6582b(int i) {
        if (i < 0 || i >= this.f5156j.size()) {
            return null;
        }
        return this.f5156j.get(i);
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Transition mo6581b(long j) {
        return (TransitionSet) super.mo6581b(j);
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Transition mo6579b(Transition.AbstractC1183c cVar) {
        return (TransitionSet) super.mo6579b(cVar);
    }

    /* renamed from: b */
    public final TransitionSet mo6590a(TimeInterpolator timeInterpolator) {
        this.f5158l |= 1;
        ArrayList<Transition> arrayList = this.f5156j;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f5156j.get(i).mo6590a(timeInterpolator);
            }
        }
        return (TransitionSet) super.mo6590a(timeInterpolator);
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final void mo965b(C1224bf bfVar) {
        if (m6605b(bfVar.f5246b)) {
            Iterator<Transition> it = this.f5156j.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.m6605b(bfVar.f5246b)) {
                    next.mo965b(bfVar);
                    bfVar.f5247c.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: c */
    public final /* synthetic */ Transition mo6577c(View view) {
        for (int i = 0; i < this.f5156j.size(); i++) {
            this.f5156j.get(i).mo6577c(view);
        }
        return (TransitionSet) super.mo6577c(view);
    }

    /* renamed from: c */
    public final TransitionSet mo6591a(long j) {
        super.mo6591a(j);
        if (this.f5125b >= 0) {
            int size = this.f5156j.size();
            for (int i = 0; i < size; i++) {
                this.f5156j.get(i).mo6591a(j);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    /* renamed from: c */
    public final void mo6576c(C1224bf bfVar) {
        super.mo6576c(bfVar);
        int size = this.f5156j.size();
        for (int i = 0; i < size; i++) {
            this.f5156j.get(i).mo6576c(bfVar);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: d */
    public final /* synthetic */ Transition mo6574d(View view) {
        for (int i = 0; i < this.f5156j.size(); i++) {
            this.f5156j.get(i).mo6574d(view);
        }
        return (TransitionSet) super.mo6574d(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    /* renamed from: d */
    public final void mo6575d() {
        if (this.f5156j.isEmpty()) {
            m6598g();
            m6597h();
            return;
        }
        C1184a aVar = new C1184a(this);
        Iterator<Transition> it = this.f5156j.iterator();
        while (it.hasNext()) {
            it.next().mo6586a(aVar);
        }
        this.f5154a = this.f5156j.size();
        if (!this.f5157k) {
            for (int i = 1; i < this.f5156j.size(); i++) {
                this.f5156j.get(i - 1).mo6586a(new C1221bd(this, this.f5156j.get(i)));
            }
            Transition transition = this.f5156j.get(0);
            if (transition != null) {
                transition.mo6575d();
                return;
            }
            return;
        }
        Iterator<Transition> it2 = this.f5156j.iterator();
        while (it2.hasNext()) {
            it2.next().mo6575d();
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: e */
    public final void mo6573e(View view) {
        super.mo6573e(view);
        int size = this.f5156j.size();
        for (int i = 0; i < size; i++) {
            this.f5156j.get(i).mo6573e(view);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: f */
    public final void mo6572f(View view) {
        super.mo6572f(view);
        int size = this.f5156j.size();
        for (int i = 0; i < size; i++) {
            this.f5156j.get(i).mo6572f(view);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: l */
    public final Transition clone() {
        TransitionSet transitionSet = (TransitionSet) super.clone();
        transitionSet.f5156j = new ArrayList<>();
        int size = this.f5156j.size();
        for (int i = 0; i < size; i++) {
            transitionSet.m6585a(this.f5156j.get(i).clone());
        }
        return transitionSet;
    }

    /* renamed from: m */
    public final int m6570m() {
        return this.f5156j.size();
    }
}
