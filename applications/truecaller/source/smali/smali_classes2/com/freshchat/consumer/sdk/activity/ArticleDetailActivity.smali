.class public Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;
.super Lcom/freshchat/consumer/sdk/activity/b;
.source "SourceFile"

# interfaces
.implements Ln3/w/a/a$a;
.implements Lcom/freshchat/consumer/sdk/activity/c$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/activity/b;",
        "Ln3/w/a/a$a<",
        "Lcom/freshchat/consumer/sdk/beans/Article;",
        ">;",
        "Lcom/freshchat/consumer/sdk/activity/c$b;"
    }
.end annotation


# static fields
.field private static l:Ljava/lang/String; = "isArticleVoted"

.field private static s:Ljava/lang/String; = "HL_ARTICLE_TITLE"

.field private static final t:Ljava/lang/String;

.field private static final u:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field public C:Landroid/webkit/WebViewClient;

.field public D:Landroid/view/View$OnClickListener;

.field public E:Landroid/view/View$OnClickListener;

.field private categoryId:Ljava/lang/String;

.field private categoryName:Ljava/lang/String;

.field public g:Lcom/freshchat/consumer/sdk/FaqOptions;

.field private h:Landroid/os/Bundle;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lcom/freshchat/consumer/sdk/activity/c;

.field private lE:[Ljava/lang/String;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Lcom/freshchat/consumer/sdk/b/j;

.field private title:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "<head><link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_res/raw/normalize.css\"/><script src=\'file:///freshchat_assets/freshchat_hacks.js\'></script><title>"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->s:Ljava/lang/String;

    const-string v2, "</title></head>"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->t:Ljava/lang/String;

    const-string v1, "<!DOCTYPE html>\t<html>"

    const-string v2, "<body onload=\'correctIframe()\'> <bdi>"

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/b;-><init>()V

    new-instance v0, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->h:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->x:Z

    const-string v1, "article_list"

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->A:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->B:Z

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/v;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/v;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->C:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/x;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/x;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->D:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/aa;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/aa;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->E:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->j:Landroid/view/View;

    return-object p0
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/Article;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Article;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Article;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "src=\"//"

    const-string v3, "src=\"http://"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value=\"//"

    const-string v3, "value=\"http://"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<\\s*(img|iframe).*?src\\s*=[ \'\"]+http[s]?:\\/\\/.*?>"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "</div>"

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "<div class=\'offline-article-message\'>"

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_rich_media_content_cannot_be_displayed:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Article;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->title:Ljava/lang/String;

    sget-object p1, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<div class=\"article-title\";><h3 >"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->title:Ljava/lang/String;

    const-string v3, "</h3></div>"

    const-string v5, "<div class=\"article-body\">"

    invoke-static {v0, p1, v3, v2, v5}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "</bdi></body></html>"

    invoke-static {v0, v1, v4, p1}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryName:Ljava/lang/String;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->z:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "article_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_failed_to_load:I

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    :cond_0
    const-wide/16 v3, -0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_failed_to_load:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    :goto_0
    const-string v0, "category_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    :cond_2
    const-string v0, "category_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryName:Ljava/lang/String;

    :cond_3
    const-string v0, "EVENT_LAUNCH_SOURCE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->A:Ljava/lang/String;

    :cond_4
    const-string v0, "LAUNCHED_FROM_CONVERSATION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->y:Z

    :cond_5
    const-string v0, "INPUT_TAGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->lE:[Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Z

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;Lcom/freshchat/consumer/sdk/service/e/n$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Lcom/freshchat/consumer/sdk/service/e/n$a;)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/service/e/n$a;)V
    .locals 8

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/n$a;->gv:Lcom/freshchat/consumer/sdk/service/e/n$a;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v7, v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryName:Ljava/lang/String;

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    iget-object v6, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->title:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/freshchat/consumer/sdk/service/d/b$a;->fU:Lcom/freshchat/consumer/sdk/service/d/b$a;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/freshchat/consumer/sdk/service/d/b$a;->fV:Lcom/freshchat/consumer/sdk/service/d/b$a;

    :goto_1
    new-instance v0, Lcom/freshchat/consumer/sdk/service/d/b;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/freshchat/consumer/sdk/service/d/b;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/d/b$a;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    const-string v1, "article_id"

    invoke-virtual {v0, v1, p1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    const-string v1, "category_id"

    invoke-virtual {p1, v1, v0}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->title:Ljava/lang/String;

    const-string v1, "article_name"

    invoke-virtual {p1, v1, v0}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/d/b;->dB()V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Z

    return p1
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->i:Landroid/view/View;

    return-object p0
.end method

.method private b()V
    .locals 6

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryName:Ljava/lang/String;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->lE:[Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->B:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/service/d/b;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/service/d/b$a;->fS:Lcom/freshchat/consumer/sdk/service/d/b$a;

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/service/d/b;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/d/b$a;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    const-string v2, "category_id"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryName:Ljava/lang/String;

    const-string v2, "category_name"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    const-string v2, "article_id"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->title:Ljava/lang/String;

    const-string v2, "article_name"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->A:Ljava/lang/String;

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/d/b;->dB()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->B:Z

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Lcom/freshchat/consumer/sdk/activity/c;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    return-object p0
.end method

.method private c()V
    .locals 2

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_upvote:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->p:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_downvote:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->q:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_voting_view:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_contact_us_group:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->o:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_solution_article_root_layout:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->m:Landroid/widget/RelativeLayout;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_contact_us_btn:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_not_helpful_contact_us:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public static synthetic d(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    const-string v2, "article_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryName:Ljava/lang/String;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "EXTRA_FETCH_CATEGORY_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportLoaderManager()Ln3/w/a/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0}, Ln3/w/a/a;->c(ILandroid/os/Bundle;Ln3/w/a/a$a;)Ln3/w/b/b;

    return-void
.end method

.method public static synthetic e(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic f(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->o:Landroid/view/View;

    return-object p0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqNotHelpful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g()Lcom/freshchat/consumer/sdk/b/j;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/j;->bj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->o:Landroid/view/View;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->o:Landroid/view/View;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic g(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic h(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n()V

    return-void
.end method

.method public static synthetic i(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->y:Z

    return p0
.end method

.method public static synthetic j(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Lcom/freshchat/consumer/sdk/j/v;
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->l()V

    return-void
.end method

.method private l()V
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/service/d/b;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/service/d/b$a;->fW:Lcom/freshchat/consumer/sdk/service/d/b$a;

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/service/d/b;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/d/b$a;)V

    const-string v1, "source"

    const-string v2, "article_not_helpful"

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    const-string v2, "article_id"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    const-string v2, "category_id"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/d/b;->dB()V

    return-void
.end method

.method private m()V
    .locals 2

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->z:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/freshchat/consumer/sdk/R$anim;->freshchat_slide_up:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private n()V
    .locals 2

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Z

    if-nez v0, :cond_0

    sget v0, Lcom/freshchat/consumer/sdk/R$anim;->freshchat_slide_down:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b/a/a;->f()V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b/a/a;->A()V

    :cond_0
    return-void
.end method

.method private r()Lcom/freshchat/consumer/sdk/j/v;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FaqOptions;)Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    new-instance v1, Lcom/freshchat/consumer/sdk/activity/ab;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/activity/ab;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(Ln3/w/b/b;Lcom/freshchat/consumer/sdk/beans/Article;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/w/b/b<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Lcom/freshchat/consumer/sdk/beans/Article;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/freshchat/consumer/sdk/g/j;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/freshchat/consumer/sdk/g/j;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/g/j;->dk()Lcom/freshchat/consumer/sdk/beans/Category;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Category;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryName:Ljava/lang/String;

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->s:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v2, p2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->b()V

    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 2

    const-string v0, "com.freshchat.consumer.sdk.actions.TokenWaitTimeout"

    const-string v1, "com.freshchat.consumer.sdk.actions.FAQApiVersionChanged"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/freshchat/consumer/sdk/b/j;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->r:Lcom/freshchat/consumer/sdk/b/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/b/j;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/b/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->r:Lcom/freshchat/consumer/sdk/b/j;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->r:Lcom/freshchat/consumer/sdk/b/j;

    return-object v0
.end method

.method public h()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->m()V

    return-void
.end method

.method public i()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n()V

    return-void
.end method

.method public j()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->o()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->x:Z

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public k()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->q()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->s()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->x:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Ln3/b/a/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->x:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->s()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Landroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->h:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/u;->d(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/FaqOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->d()V

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_activity_article_detail:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->setContentView(I)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->C()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryName:Ljava/lang/String;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_activity_title_article_detail:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/activity/a;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->c()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/service/e/f$a;->go:Lcom/freshchat/consumer/sdk/service/e/f$a;

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/f$a;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->e()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g()Lcom/freshchat/consumer/sdk/b/j;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/b/j;->P(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Z

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_partial_article_progress:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->j:Landroid/view/View;

    new-instance v3, Lcom/freshchat/consumer/sdk/activity/c;

    invoke-direct {v3, p0}, Lcom/freshchat/consumer/sdk/activity/c;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->C:Landroid/webkit/WebViewClient;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    const/16 v4, 0x55

    invoke-virtual {v3, p0, v4}, Lcom/freshchat/consumer/sdk/activity/c;->a(Lcom/freshchat/consumer/sdk/activity/c$b;I)V

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->m:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/activity/c;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->m:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->j:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_2
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->i:Landroid/view/View;

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/as;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getInstance(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/Freshchat;->getWebviewListener()Lcom/freshchat/consumer/sdk/FreshchatWebViewListener;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/freshchat/consumer/sdk/FreshchatWebViewListener;->onLocaleChangedByWebView(Ljava/lang/ref/WeakReference;)V

    :cond_3
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Ln3/w/b/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Ln3/w/b/b<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/freshchat/consumer/sdk/g/j;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "article_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_FETCH_CATEGORY_INFO"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p1, v0, v1, p2}, Lcom/freshchat/consumer/sdk/g/j;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Ln3/b/a/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$menu;->freshchat_article_detail_list:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/c;->az()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/c;->aA()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Ln3/b/a/h;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic onLoadFinished(Ln3/w/b/b;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/Article;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Ln3/w/b/b;Lcom/freshchat/consumer/sdk/beans/Article;)V

    return-void
.end method

.method public onLoaderReset(Ln3/w/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/w/b/b<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onPause()V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eM()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/c;->aB()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onResume()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g()Lcom/freshchat/consumer/sdk/b/j;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/j;->P(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Z

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->f()V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->l:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method
