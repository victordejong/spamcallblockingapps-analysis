package p193e.p194a.p798g5;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.truecaller.common.tag.TagView;
import com.truecaller.tagger.C4604R;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import p1727n3.p1869w.p1870a.AbstractC27043a;
import p1727n3.p1869w.p1871b.AbstractC27049a;
import p1727n3.p1869w.p1871b.C27051b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p372b0.p426p.AbstractC8552d;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.AbstractView$OnClickListenerC14526l;
/* renamed from: e.a.g5.t */
/* loaded from: classes14-dex2jar.jar:e/a/g5/t.class */
public class View$OnClickListenerC14541t extends AbstractView$OnClickListenerC14526l.AbstractC14530d implements View.OnClickListener, AbstractC27043a.AbstractC27044a<List<C8551c>> {

    /* renamed from: w */
    public static final /* synthetic */ int f41820w = 0;
    @Inject

    /* renamed from: e */
    public AbstractC8552d f41821e;
    @Inject

    /* renamed from: f */
    public AbstractC14537p f41822f;
    @Inject

    /* renamed from: g */
    public AbstractC19462a f41823g;

    /* renamed from: h */
    public ViewGroup f41824h;

    /* renamed from: i */
    public ViewGroup f41825i;

    /* renamed from: j */
    public View f41826j;

    /* renamed from: k */
    public View f41827k;

    /* renamed from: l */
    public TextView f41828l;

    /* renamed from: m */
    public TagView f41829m;

    /* renamed from: n */
    public C8551c f41830n;

    /* renamed from: o */
    public TagView f41831o;

    /* renamed from: p */
    public TagView f41832p;

    /* renamed from: r */
    public float f41834r;

    /* renamed from: q */
    public boolean f41833q = false;

    /* renamed from: s */
    public final Animator.AnimatorListener f41835s = new C14542a();

    /* renamed from: t */
    public final Animator.AnimatorListener f41836t = new C14543b();

    /* renamed from: u */
    public final Animator.AnimatorListener f41837u = new C14544c();

    /* renamed from: v */
    public final Animator.AnimatorListener f41838v = new C14545d();

    /* renamed from: e.a.g5.t$a */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/t$a.class */
    public class C14542a extends AnimatorListenerAdapter {
        public C14542a() {
            View$OnClickListenerC14541t.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View$OnClickListenerC14541t.this.f41826j.setVisibility(4);
            View$OnClickListenerC14541t.this.f41826j.setTranslationY(0.0f);
            View$OnClickListenerC14541t.this.f41826j.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            View$OnClickListenerC14541t.this.f41833q = true;
        }
    }

    /* renamed from: e.a.g5.t$b */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/t$b.class */
    public class C14543b extends AnimatorListenerAdapter {
        public C14543b() {
            View$OnClickListenerC14541t.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View$OnClickListenerC14541t view$OnClickListenerC14541t = View$OnClickListenerC14541t.this;
            view$OnClickListenerC14541t.f41833q = false;
            TagView tagView = view$OnClickListenerC14541t.f41831o;
            if (tagView != null) {
                tagView.m35716h(false, true);
                View$OnClickListenerC14541t.this.f41831o = null;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            View$OnClickListenerC14541t.this.f41826j.setVisibility(0);
        }
    }

    /* renamed from: e.a.g5.t$c */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/t$c.class */
    public class C14544c extends AnimatorListenerAdapter {
        public C14544c() {
            View$OnClickListenerC14541t.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View$OnClickListenerC14541t.this.f41827k.setVisibility(8);
            View$OnClickListenerC14541t.this.f41827k.setTranslationY(0.0f);
            View$OnClickListenerC14541t.this.f41827k.setAlpha(1.0f);
            View$OnClickListenerC14541t.this.f41832p = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            View$OnClickListenerC14541t.this.f41833q = true;
        }
    }

    /* renamed from: e.a.g5.t$d */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/t$d.class */
    public class C14545d extends AnimatorListenerAdapter {
        public C14545d() {
            View$OnClickListenerC14541t.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View$OnClickListenerC14541t.this.f41833q = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            View$OnClickListenerC14541t.this.f41827k.setVisibility(0);
        }
    }

    /* renamed from: e.a.g5.t$e */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/t$e.class */
    public static class C14546e extends AbstractC27049a<List<C8551c>> {

        /* renamed from: a */
        public final long f41843a;

        /* renamed from: b */
        public AbstractC8552d f41844b;

        public C14546e(Context context, long j, AbstractC8552d abstractC8552d) {
            super(context);
            this.f41843a = j;
            this.f41844b = abstractC8552d;
        }

        @Override // p1727n3.p1869w.p1871b.AbstractC27049a
        public List<C8551c> loadInBackground() {
            return this.f41844b.mo28403a(this.f41843a);
        }

        @Override // p1727n3.p1869w.p1871b.C27051b
        public void onReset() {
            super.onReset();
            cancelLoad();
        }

        @Override // p1727n3.p1869w.p1871b.C27051b
        public void onStartLoading() {
            forceLoad();
        }

        @Override // p1727n3.p1869w.p1871b.C27051b
        public void onStopLoading() {
            cancelLoad();
        }
    }

    /* renamed from: e.a.g5.t$f */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/t$f.class */
    public interface AbstractC14547f {
        /* renamed from: F5 */
        void mo20018F5(C8551c c8551c);

        /* renamed from: f8 */
        void mo20017f8();
    }

    @Override // p193e.p194a.p798g5.AbstractView$OnClickListenerC14526l.AbstractC14530d
    /* renamed from: OA */
    public void mo20021OA() {
        m20019SA();
    }

    /* renamed from: RA */
    public final TagView m20020RA(ViewGroup viewGroup, List<C8551c> list) {
        viewGroup.removeAllViews();
        int dimensionPixelSize = getResources().getDimensionPixelSize(C4604R.dimen.space);
        Iterator<C8551c> it = list.iterator();
        TagView tagView = null;
        while (true) {
            TagView tagView2 = tagView;
            if (it.hasNext()) {
                C8551c next = it.next();
                TagView tagView3 = new TagView(getContext(), false, next.f26352c == 0);
                tagView3.setTag(this.f41822f.mo20026a(next));
                tagView3.setTextSize(0, getResources().getDimension(C4604R.dimen.tagTextSize));
                tagView3.setOnClickListener(this);
                C8551c c8551c = this.f41830n;
                TagView tagView4 = tagView2;
                if (c8551c != null) {
                    long j = next.f26350a;
                    if (j != c8551c.f26350a) {
                        tagView4 = tagView2;
                        if (j != c8551c.f26352c) {
                        }
                    }
                    tagView3.m35716h(true, false);
                    tagView4 = tagView3;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
                marginLayoutParams.setMarginEnd(dimensionPixelSize);
                marginLayoutParams.bottomMargin = dimensionPixelSize;
                viewGroup.addView(tagView3, marginLayoutParams);
                tagView = tagView4;
            } else {
                return tagView2;
            }
        }
    }

    /* renamed from: SA */
    public final void m20019SA() {
        C8551c c8551c;
        C8551c c8551c2;
        AbstractC14547f activity = getActivity();
        if (activity instanceof AbstractC14547f) {
            AbstractC14547f abstractC14547f = activity;
            TagView tagView = this.f41832p;
            if (tagView != null) {
                c8551c = tagView.getAvailableTag();
            } else {
                TagView tagView2 = this.f41831o;
                c8551c = tagView2 != null ? tagView2.getAvailableTag() : null;
            }
            if ((c8551c != null && !c8551c.equals(this.f41830n)) || ((c8551c2 = this.f41830n) != null && !c8551c2.equals(c8551c))) {
                abstractC14547f.mo20018F5(c8551c);
            } else {
                abstractC14547f.mo20017f8();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        char c;
        int id = view.getId();
        if (id == C4604R.C4606id.tag_selected_root) {
            this.f41827k.animate().translationYBy(-this.f41834r).alpha(0.0f).setDuration(200L).setListener(this.f41837u).start();
            this.f41826j.setTranslationY(this.f41834r);
            this.f41826j.setAlpha(0.0f);
            this.f41826j.animate().translationY(0.0f).alpha(1.0f).setDuration(200L).setStartDelay(200L).setListener(this.f41836t).start();
        } else if (id == C4604R.C4606id.close_button) {
            m20019SA();
        } else if (!(view instanceof TagView) || this.f41833q) {
        } else {
            TagView tagView = (TagView) view;
            if (tagView.getParentTagId() != 0) {
                TagView tagView2 = this.f41832p;
                if (tagView2 == tagView) {
                    this.f41832p = null;
                    c = 65535;
                } else {
                    if (tagView2 != null) {
                        tagView2.m35716h(false, true);
                    }
                    this.f41832p = tagView;
                    c = tagView.getTagId();
                }
                this.f41833q = c != -1;
                boolean z = false;
                if (this.f41832p == tagView) {
                    z = true;
                }
                tagView.m35716h(z, true);
                if (!this.f41833q) {
                    return;
                }
                ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.35f);
                ofFloat.setDuration(200L);
                ofFloat.addListener(new C14548u(this));
                ofFloat.start();
                return;
            }
            TagView tagView3 = this.f41831o;
            if (tagView == tagView3) {
                tagView.m35716h(false, true);
                this.f41831o = null;
            } else {
                if (tagView3 != null) {
                    tagView3.m35716h(false, true);
                }
                long tagId = tagView.getTagId();
                this.f41831o = tagView;
                tagView.m35716h(true, true);
                this.f41828l.setText(C4604R.string.TagsChooserChildTitle);
                Bundle bundle = new Bundle();
                bundle.putLong("root_tag", tagId);
                getLoaderManager().mo976d(C4604R.C4606id.truecaller_loader_child_tags, bundle, this);
            }
            StringBuilder m8728C = C22128a.m8728C("Root = ");
            m8728C.append(this.f41829m);
            m8728C.append(", Parent = ");
            m8728C.append(this.f41831o);
            m8728C.append(", Child = ");
            m8728C.append(this.f41832p);
            m8728C.toString();
        }
    }

    public void onCreate(Bundle bundle) {
        View$OnClickListenerC14541t.super.onCreate(bundle);
        this.f41823g.mo13274b(C19597a.m13114b("tagPicker"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r3v0 */
    @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
    public C27051b<List<C8551c>> onCreateLoader(int i, Bundle bundle) {
        ?? r10 = false;
        if (bundle != null) {
            r10 = bundle.getLong("root_tag", 0L);
        }
        return new C14546e(getContext(), r10 == true ? 1L : 0L, this.f41821e);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C4604R.layout.view_tag_picker, viewGroup, false);
    }

    @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
    public void onLoadFinished(C27051b<List<C8551c>> c27051b, List<C8551c> list) {
        List<C8551c> list2 = list;
        int id = c27051b.getId();
        if (id == C4604R.C4606id.truecaller_loader_root_tags) {
            this.f41831o = m20020RA(this.f41824h, list2);
        } else if (id != C4604R.C4606id.truecaller_loader_child_tags) {
        } else {
            this.f41832p = m20020RA(this.f41825i, list2);
            C8551c mo28396h = this.f41821e.mo28396h(((C14546e) c27051b).f41843a);
            if (mo28396h == null) {
                return;
            }
            this.f41829m.setTag(this.f41822f.mo20024c(mo28396h.f26350a));
            if (this.f41827k.getVisibility() == 0) {
                return;
            }
            this.f41826j.animate().translationYBy(this.f41834r).alpha(0.0f).setDuration(200L).setListener(this.f41835s).start();
            this.f41827k.setTranslationY(-this.f41834r);
            this.f41827k.setAlpha(0.0f);
            this.f41827k.animate().translationY(0.0f).alpha(1.0f).setStartDelay(200L).setDuration(200L).setListener(this.f41838v).start();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.5f, 1.1f, 1.0f);
            ofFloat.addUpdateListener(new C14549v(this));
            ofFloat.setStartDelay(200L);
            ofFloat.setDuration(300L);
            ofFloat.start();
        }
    }

    @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
    public void onLoaderReset(C27051b<List<C8551c>> c27051b) {
    }

    public void onViewCreated(View view, Bundle bundle) {
        this.f41824h = (ViewGroup) view.findViewById(C4604R.C4606id.tag_container_level_1);
        this.f41825i = (ViewGroup) view.findViewById(C4604R.C4606id.tag_container_level_2);
        this.f41826j = view.findViewById(C4604R.C4606id.tags_level_1);
        this.f41827k = view.findViewById(C4604R.C4606id.tags_level_2);
        this.f41828l = (TextView) view.findViewById(C4604R.C4606id.tag_level_2_title_text);
        this.f41829m = (TagView) view.findViewById(C4604R.C4606id.tag_selected_root);
        this.f41834r = getResources().getDimensionPixelSize(C4604R.dimen.tag_animation_translation);
        this.f41829m.m35716h(true, false);
        Bundle arguments = getArguments();
        long j = arguments.getLong("initial_tag", Long.MIN_VALUE);
        this.f41830n = j != Long.MIN_VALUE ? this.f41821e.mo28396h(j) : null;
        int i = arguments.getInt("tag_context", 0);
        if (i == 3 || i == 4) {
            view.findViewById(C4604R.C4606id.titleFirstLine).setVisibility(4);
            view.findViewById(C4604R.C4606id.titleSecondLine).setVisibility(8);
        }
        C8551c c8551c = this.f41830n;
        C8551c c8551c2 = c8551c;
        if (c8551c != null) {
            long j2 = c8551c.f26352c;
            c8551c2 = c8551c;
            if (j2 != 0) {
                c8551c2 = this.f41821e.mo28396h(j2);
            }
        }
        getLoaderManager().mo976d(C4604R.C4606id.truecaller_loader_root_tags, null, this);
        if (c8551c2 != null) {
            this.f41826j.setVisibility(4);
            this.f41827k.setVisibility(0);
            long j3 = c8551c2.f26350a;
            Bundle bundle2 = new Bundle();
            bundle2.putLong("root_tag", j3);
            getLoaderManager().mo976d(C4604R.C4606id.truecaller_loader_child_tags, bundle2, this);
            this.f41828l.setText(C4604R.string.TagsChooserEditTitle);
        } else {
            this.f41828l.setText(C4604R.string.TagsChooserChildTitle);
        }
        this.f41829m.setOnClickListener(this);
        view.findViewById(C4604R.C4606id.close_button).setOnClickListener(this);
        View$OnClickListenerC14541t.super.onViewCreated(view, bundle);
    }
}
