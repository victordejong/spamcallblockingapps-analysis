.class public Lcom/freshchat/consumer/sdk/k/u;
.super Lcom/freshchat/consumer/sdk/k/n;
.source "SourceFile"


# instance fields
.field private categoryId:Ljava/lang/String;

.field private categoryName:Ljava/lang/String;

.field private faq:Lcom/freshchat/consumer/sdk/beans/FAQ;

.field private faqId:Ljava/lang/String;

.field private final rA:Ljava/lang/String;

.field private rr:Lcom/freshchat/consumer/sdk/service/Status;

.field private final rz:Lcom/freshchat/consumer/sdk/b/m;

.field private s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/n;-><init>(Landroid/content/Context;)V

    const-string p1, "HL_ARTICLE_TITLE"

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/u;->s:Ljava/lang/String;

    const-string p1, "<head><link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_res/raw/normalize.css\"/><script src=\'file:///freshchat_assets/freshchat_hacks.js\'></script><title>"

    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->s:Ljava/lang/String;

    const-string v1, "</title></head>"

    invoke-static {p1, v0, v1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/u;->t:Ljava/lang/String;

    const-string v0, "<!DOCTYPE html>\t<html>"

    const-string v1, "<body onload=\'correctIframe()\'> <bdi>"

    invoke-static {v0, p1, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/u;->u:Ljava/lang/String;

    const-string p1, "</bdi></body></html>"

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/u;->rA:Ljava/lang/String;

    new-instance p1, Lcom/freshchat/consumer/sdk/b/m;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/b/m;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/u;->rz:Lcom/freshchat/consumer/sdk/b/m;

    return-void
.end method

.method private d(Lcom/freshchat/consumer/sdk/service/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/u;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    return-void
.end method

.method private jA()Z
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->faq:Lcom/freshchat/consumer/sdk/beans/FAQ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/u;->rz:Lcom/freshchat/consumer/sdk/b/m;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/u;->categoryId:Ljava/lang/String;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/k/u;->faqId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/FAQ;->getLastUpdatedAt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/freshchat/consumer/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private jz()Z
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->faq:Lcom/freshchat/consumer/sdk/beans/FAQ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/u;->rz:Lcom/freshchat/consumer/sdk/b/m;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/u;->categoryId:Ljava/lang/String;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/k/u;->faqId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/FAQ;->getLastUpdatedAt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/freshchat/consumer/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/am$a;)V
    .locals 6

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/u;->categoryId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/u;->faqId:Ljava/lang/String;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/k/u;->faq:Lcom/freshchat/consumer/sdk/beans/FAQ;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/FAQ;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/k/u;->faq:Lcom/freshchat/consumer/sdk/beans/FAQ;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/FAQ;->getLastUpdatedAt()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/freshchat/consumer/sdk/service/e/am$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->faqId:Ljava/lang/String;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->z:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/k/u;->b(Lcom/freshchat/consumer/sdk/service/e/am$a;)V

    return-void
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/am$a;)V
    .locals 6

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/am$a;->rl:Lcom/freshchat/consumer/sdk/service/e/am$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v5, p1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/u;->categoryId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/u;->categoryName:Ljava/lang/String;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/k/u;->faqId:Ljava/lang/String;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/k/u;->title:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public g(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/service/Status;
    .locals 1

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "RESPONSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/reqres/FAQFetchResponse;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/reqres/FAQFetchResponse;->getFaq()Lcom/freshchat/consumer/sdk/beans/FAQ;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->faq:Lcom/freshchat/consumer/sdk/beans/FAQ;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ag;->getStatus()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/u;->d(Lcom/freshchat/consumer/sdk/service/Status;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "faqFetchResponse cannot be null in FAQDetailViewModel::processResponse()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bundle cannot be null in FAQDetailViewModel::processResponse()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/k/u;->d(Lcom/freshchat/consumer/sdk/service/Status;)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/k/u;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    return-object p1
.end method

.method public h(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "article_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "category_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hV()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_no_articles_found:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "RESPONSE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/an;

    if-nez p1, :cond_1

    return v0

    :cond_1
    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->SUCCESS:Lcom/freshchat/consumer/sdk/service/Status;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/an;->getStatus()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public j(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/k/n;->j(Landroid/content/Intent;)V

    const-string v0, "article_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->faqId:Ljava/lang/String;

    :cond_0
    const-string v0, "category_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->categoryId:Ljava/lang/String;

    :cond_1
    const-string v0, "EXTRA_FAQ_VIEW_TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->title:Ljava/lang/String;

    :cond_2
    const-string v0, "category_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->categoryName:Ljava/lang/String;

    :cond_3
    const-string v0, "LAUNCHED_FROM_CONVERSATION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/k/u;->y:Z

    :cond_4
    return-void
.end method

.method public jB()Z
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->z:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/u;->faqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/k/u;->jz()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public jC()Z
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/n;->shouldShowContactUsOnFaqNotHelpful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/k/u;->jA()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/k/u;->y:Z

    return v0
.end method

.method public jc()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->faq:Lcom/freshchat/consumer/sdk/beans/FAQ;

    return-void
.end method

.method public jd()Lcom/freshchat/consumer/sdk/service/Status;
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/u;->faqId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/u;->categoryId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/b;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->INIT_LOADING:Lcom/freshchat/consumer/sdk/service/Status;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->NO_INTERNET:Lcom/freshchat/consumer/sdk/service/Status;

    :goto_0
    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/k/u;->d(Lcom/freshchat/consumer/sdk/service/Status;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    return-object v0
.end method

.method public jm()Lcom/freshchat/consumer/sdk/service/Status;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->NO_INTERNET:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/u;->jd()Lcom/freshchat/consumer/sdk/service/Status;

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->INIT_LOADING:Lcom/freshchat/consumer/sdk/service/Status;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/k/u;->d(Lcom/freshchat/consumer/sdk/service/Status;)V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    return-object v0
.end method

.method public jv()Lcom/freshchat/consumer/sdk/service/Status;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/u;->jd()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object v0

    return-object v0
.end method

.method public jw()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->categoryName:Ljava/lang/String;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_activity_title_article_detail:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->categoryName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public jx()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/u;->faq:Lcom/freshchat/consumer/sdk/beans/FAQ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/u;->faq:Lcom/freshchat/consumer/sdk/beans/FAQ;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/FAQ;->getContent()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

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

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_rich_media_content_cannot_be_displayed:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    iget-object v3, p0, Lcom/freshchat/consumer/sdk/k/u;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<div class=\"article-title\";><h3 >"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/k/u;->faq:Lcom/freshchat/consumer/sdk/beans/FAQ;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/FAQ;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</h3></div>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<div class=\"article-body\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</bdi></body></html>"

    invoke-static {v0, v1, v4, v2}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/u;->faq:Lcom/freshchat/consumer/sdk/beans/FAQ;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/FAQ;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/u;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/u;->faq:Lcom/freshchat/consumer/sdk/beans/FAQ;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/FAQ;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public jy()V
    .locals 6

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/u;->categoryId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/u;->categoryName:Ljava/lang/String;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/k/u;->faqId:Ljava/lang/String;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/k/u;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/k/n;->lE:[Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
