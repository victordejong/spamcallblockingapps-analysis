package com.uservoice.uservoicesdk.activity;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.asus.updatesdk.cdn.CdnUtils;
import com.uservoice.uservoicesdk.a.a;
import com.uservoice.uservoicesdk.c.a;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.model.Article;
import com.uservoice.uservoicesdk.model.Topic;
import com.uservoice.uservoicesdk.ui.f;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/activity/TopicActivity.class */
public class TopicActivity extends b implements d {
    @Override // com.uservoice.uservoicesdk.activity.a, com.uservoice.uservoicesdk.activity.d
    public final void e() {
        super.e();
        getActionBar().setNavigationMode(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.uservoice.uservoicesdk.activity.a, android.support.v4.app.i, android.support.v4.app.e, android.app.Activity
    @SuppressLint({"InlinedApi", "NewApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (e.a().f4631b == null) {
            finish();
        }
        Topic topic = (Topic) getIntent().getParcelableExtra(CdnUtils.NODE_TOPIC);
        if (f()) {
            ActionBar actionBar = getActionBar();
            actionBar.setNavigationMode(1);
            actionBar.setListNavigationCallbacks(new ArrayAdapter(actionBar.getThemedContext(), 17367049, e.a().i), new ActionBar.OnNavigationListener() { // from class: com.uservoice.uservoicesdk.activity.TopicActivity.1
                @Override // android.app.ActionBar.OnNavigationListener
                public final boolean onNavigationItemSelected(int i, long j) {
                    TopicActivity.this.getIntent().putExtra(CdnUtils.NODE_TOPIC, e.a().i.get(i));
                    ((com.uservoice.uservoicesdk.ui.e) ((a) TopicActivity.this).q).d();
                    return true;
                }
            });
            actionBar.setSelectedNavigationItem(e.a().i.indexOf(topic));
        }
        setTitle((CharSequence) null);
        j().setDivider(null);
        a(new com.uservoice.uservoicesdk.ui.e<Article>(this, d.c.w, new ArrayList()) { // from class: com.uservoice.uservoicesdk.activity.TopicActivity.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.uservoice.uservoicesdk.ui.d
            public final void a(int i, com.uservoice.uservoicesdk.j.a<List<Article>> aVar) {
                Topic topic2 = (Topic) TopicActivity.this.getIntent().getParcelableExtra(CdnUtils.NODE_TOPIC);
                if (topic2.c() == -1) {
                    Article.a(i, aVar);
                } else {
                    Article.a(topic2.c(), i, aVar);
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.uservoice.uservoicesdk.ui.d
            public final /* synthetic */ void a(View view, Object obj) {
                Article article = (Article) obj;
                Topic topic2 = (Topic) TopicActivity.this.getIntent().getParcelableExtra(CdnUtils.NODE_TOPIC);
                TextView textView = (TextView) view.findViewById(d.b.ai);
                TextView textView2 = (TextView) view.findViewById(d.b.aj);
                textView.setText(article.f4714a);
                if (topic2.c() != -1 || article.c == null) {
                    textView2.setVisibility(8);
                    return;
                }
                textView2.setVisibility(0);
                textView2.setText(article.c);
            }

            @Override // com.uservoice.uservoicesdk.ui.e
            public final int b() {
                Topic topic2 = (Topic) TopicActivity.this.getIntent().getParcelableExtra(CdnUtils.NODE_TOPIC);
                return topic2.c() == -1 ? -1 : topic2.f4734b;
            }
        });
        j().setOnScrollListener(new f((com.uservoice.uservoicesdk.ui.e) ((a) this).q));
        j().setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.uservoice.uservoicesdk.activity.TopicActivity.3
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                Article article = (Article) ((a) TopicActivity.this).q.getItem(i);
                Intent intent = new Intent(TopicActivity.this, ArticleActivity.class);
                intent.putExtra("article", article);
                TopicActivity.this.startActivity(intent);
            }
        });
        com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.VIEW_TOPIC, topic.c());
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(d.C0137d.f4622a, menu);
        a(menu);
        return true;
    }
}
