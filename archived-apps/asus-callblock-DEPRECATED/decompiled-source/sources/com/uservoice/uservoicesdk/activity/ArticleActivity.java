package com.uservoice.uservoicesdk.activity;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.m;
import android.support.v4.view.ViewPager;
import android.support.v4.view.p;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.g;
import com.uservoice.uservoicesdk.h.a;
import com.uservoice.uservoicesdk.model.Article;
import com.uservoice.uservoicesdk.ui.l;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/activity/ArticleActivity.class */
public class ArticleActivity extends com.uservoice.uservoicesdk.activity.a implements d {
    public boolean[] n;
    private int q;
    private ViewPager r;
    private List<Article> s;
    private p t;
    private Article u;

    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/activity/ArticleActivity$a.class */
    private final class a extends android.support.v4.app.p {
        public a(m mVar) {
            super(mVar);
        }

        @Override // android.support.v4.app.p
        public final Fragment a(int i) {
            return com.uservoice.uservoicesdk.g.a.a((Article) ArticleActivity.this.s.get(i), i);
        }

        @Override // android.support.v4.view.p
        public final int getCount() {
            return ArticleActivity.this.s.size();
        }

        @Override // android.support.v4.view.p
        public final CharSequence getPageTitle(int i) {
            return ((Article) ArticleActivity.this.s.get(i)).f4714a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.uservoice.uservoicesdk.activity.a, android.support.v4.app.i, android.support.v4.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        g.c = true;
        if (e.a().f4631b == null) {
            finish();
            return;
        }
        setContentView(d.c.f4620a);
        setTitle(d.f.c);
        if (getResources().getIdentifier("windowTranslucentStatus", "attr", "android") != 0) {
            if (!l.a(g.f4678b)) {
                findViewById(d.b.f4618a).setBackgroundColor(g.f4678b);
            } else {
                findViewById(d.b.f4618a).setBackgroundColor(-16777216);
            }
            getActionBar().setBackgroundDrawable(new ColorDrawable(g.f4678b));
        } else {
            getActionBar().setBackgroundDrawable(new ColorDrawable(g.f4678b));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            getActionBar().setBackgroundDrawable(new ColorDrawable(Color.argb(255, 254, 254, 254)));
        }
        int intExtra = getIntent().getIntExtra("article_id", -1);
        if (bundle != null) {
            this.u = (Article) bundle.getParcelable("article");
        }
        if (this.u == null && intExtra != -1) {
            this.n = new boolean[1];
            Article.b(intExtra, new com.uservoice.uservoicesdk.ui.a<Article>(this) { // from class: com.uservoice.uservoicesdk.activity.ArticleActivity.1
                @Override // com.uservoice.uservoicesdk.j.a
                public final /* synthetic */ void a(Object obj) {
                    Article article = (Article) obj;
                    if (article != null) {
                        ArticleActivity.this.s = new ArrayList();
                        ArticleActivity.this.u = article;
                        ArticleActivity.this.s.add(ArticleActivity.this.u);
                        ArticleActivity.this.q = ArticleActivity.this.getIntent().getIntExtra("position", 0);
                        ArticleActivity.this.r = (ViewPager) ArticleActivity.this.findViewById(d.b.i);
                        ArticleActivity.this.t = new a(ArticleActivity.this.getSupportFragmentManager());
                        ArticleActivity.this.r.setAdapter(ArticleActivity.this.t);
                        ArticleActivity.this.r.setOnPageChangeListener(new ViewPager.e() { // from class: com.uservoice.uservoicesdk.activity.ArticleActivity.1.1
                            @Override // android.support.v4.view.ViewPager.e
                            public final void onPageScrollStateChanged(int i) {
                            }

                            @Override // android.support.v4.view.ViewPager.e
                            public final void onPageScrolled(int i, float f, int i2) {
                            }

                            @Override // android.support.v4.view.ViewPager.e
                            public final void onPageSelected(int i) {
                                a.b.a(ArticleActivity.this, ((Article) ArticleActivity.this.s.get(i)).c());
                            }
                        });
                        if (ArticleActivity.this.q == 0) {
                            a.b.a(ArticleActivity.this, ((Article) ArticleActivity.this.s.get(0)).c());
                        }
                        ArticleActivity.this.r.setCurrentItem(ArticleActivity.this.q);
                        return;
                    }
                    ArticleActivity.this.finish();
                }
            });
        } else if (this.u != null) {
            this.n = new boolean[1];
            this.s = new ArrayList();
            this.s.add(this.u);
            this.q = 0;
            this.r = (ViewPager) findViewById(d.b.i);
            this.t = new a(getSupportFragmentManager());
            this.r.setAdapter(this.t);
            this.r.setOnPageChangeListener(new ViewPager.e() { // from class: com.uservoice.uservoicesdk.activity.ArticleActivity.2
                @Override // android.support.v4.view.ViewPager.e
                public final void onPageScrollStateChanged(int i) {
                }

                @Override // android.support.v4.view.ViewPager.e
                public final void onPageScrolled(int i, float f, int i2) {
                }

                @Override // android.support.v4.view.ViewPager.e
                public final void onPageSelected(int i) {
                    a.b.a(ArticleActivity.this, ((Article) ArticleActivity.this.s.get(i)).c());
                }
            });
            if (this.q == 0) {
                a.b.a(this, this.s.get(0).c());
            }
            this.r.setCurrentItem(this.q);
        } else {
            this.s = getIntent().getParcelableArrayListExtra(Article.class.getName());
            this.n = new boolean[this.s.size()];
            this.q = getIntent().getIntExtra("position", 0);
            this.r = (ViewPager) findViewById(d.b.i);
            if (this.s != null) {
                this.t = new a(getSupportFragmentManager());
                this.r.setAdapter(this.t);
                this.r.setOnPageChangeListener(new ViewPager.e() { // from class: com.uservoice.uservoicesdk.activity.ArticleActivity.3
                    @Override // android.support.v4.view.ViewPager.e
                    public final void onPageScrollStateChanged(int i) {
                    }

                    @Override // android.support.v4.view.ViewPager.e
                    public final void onPageScrolled(int i, float f, int i2) {
                    }

                    @Override // android.support.v4.view.ViewPager.e
                    public final void onPageSelected(int i) {
                        a.b.a(ArticleActivity.this, ((Article) ArticleActivity.this.s.get(i)).c());
                    }
                });
                if (this.q == 0) {
                    a.b.a(this, this.s.get(0).c());
                }
                this.r.setCurrentItem(this.q);
                return;
            }
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.i, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (this.u != null) {
            bundle.putParcelable("article", this.u);
        }
        super.onSaveInstanceState(bundle);
    }
}
