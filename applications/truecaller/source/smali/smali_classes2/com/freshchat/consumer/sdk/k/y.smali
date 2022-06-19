.class public Lcom/freshchat/consumer/sdk/k/y;
.super Lcom/freshchat/consumer/sdk/k/n;
.source "SourceFile"


# instance fields
.field private botFAQ:Lcom/freshchat/consumer/sdk/beans/BotFAQ;

.field private ej:Ljava/lang/String;

.field private placeholderReferenceId:Ljava/lang/String;

.field private final rA:Ljava/lang/String;

.field private referenceId:Ljava/lang/String;

.field private rr:Lcom/freshchat/consumer/sdk/service/Status;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/n;-><init>(Landroid/content/Context;)V

    const-string p1, "HL_ARTICLE_TITLE"

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/y;->s:Ljava/lang/String;

    const-string p1, "<head><link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_res/raw/normalize.css\"/><script src=\'file:///freshchat_assets/freshchat_hacks.js\'></script><title>HL_ARTICLE_TITLE</title></head>"

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/y;->t:Ljava/lang/String;

    const-string p1, "<!DOCTYPE html>\t<html><head><link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_res/raw/normalize.css\"/><script src=\'file:///freshchat_assets/freshchat_hacks.js\'></script><title>HL_ARTICLE_TITLE</title></head><body onload=\'correctIframe()\'> <bdi>"

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/y;->u:Ljava/lang/String;

    const-string p1, "</bdi></body></html>"

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/y;->rA:Ljava/lang/String;

    return-void
.end method

.method private d(Lcom/freshchat/consumer/sdk/service/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/y;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    return-void
.end method

.method private kd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->botFAQ:Lcom/freshchat/consumer/sdk/beans/BotFAQ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->getTemplateContentPayloads()Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->botFAQ:Lcom/freshchat/consumer/sdk/beans/BotFAQ;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->getTemplateContentPayloads()Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;->getDescription()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->botFAQ:Lcom/freshchat/consumer/sdk/beans/BotFAQ;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->getTemplateContentPayloads()Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;->getDescription()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public c(Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/bg;->y(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/y;->ej:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/y;->referenceId:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;Ljava/lang/String;)V

    return-void
.end method

.method public g(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/service/Status;
    .locals 1

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "RESPONSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;->getBotFAQ()Lcom/freshchat/consumer/sdk/beans/BotFAQ;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->botFAQ:Lcom/freshchat/consumer/sdk/beans/BotFAQ;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ag;->getStatus()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/y;->d(Lcom/freshchat/consumer/sdk/service/Status;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "botFAQFetchResponse cannot be null in BotFAQDetailViewModel::processResponse()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bundle cannot be null in BotFAQDetailViewModel::processResponse()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/k/y;->d(Lcom/freshchat/consumer/sdk/service/Status;)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/k/y;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    return-object p1
.end method

.method public getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->botFAQ:Lcom/freshchat/consumer/sdk/beans/BotFAQ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->getTemplateContentPayloads()Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->botFAQ:Lcom/freshchat/consumer/sdk/beans/BotFAQ;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->getTemplateContentPayloads()Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->botFAQ:Lcom/freshchat/consumer/sdk/beans/BotFAQ;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/BotFAQ;->getTemplateContentPayloads()Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/TemplateContentPayloads;->getCallbacks()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public h(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "MESSAGE_ALIAS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "EXTRA_TITLE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "REFERENCE_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "PLACEOLDER_REFERENCE_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method

.method public hV()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_no_faq_found:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/k/n;->j(Landroid/content/Intent;)V

    const-string v0, "MESSAGE_ALIAS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->ej:Ljava/lang/String;

    :cond_0
    const-string v0, "EXTRA_TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->title:Ljava/lang/String;

    :cond_1
    const-string v0, "REFERENCE_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->referenceId:Ljava/lang/String;

    :cond_2
    const-string v0, "PLACEOLDER_REFERENCE_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/y;->placeholderReferenceId:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public jc()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->botFAQ:Lcom/freshchat/consumer/sdk/beans/BotFAQ;

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

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/y;->referenceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/y;->placeholderReferenceId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/b;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->INIT_LOADING:Lcom/freshchat/consumer/sdk/service/Status;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->NO_INTERNET:Lcom/freshchat/consumer/sdk/service/Status;

    :goto_0
    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/k/y;->d(Lcom/freshchat/consumer/sdk/service/Status;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    return-object v0
.end method

.method public jm()Lcom/freshchat/consumer/sdk/service/Status;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->NO_INTERNET:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/y;->jd()Lcom/freshchat/consumer/sdk/service/Status;

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->INIT_LOADING:Lcom/freshchat/consumer/sdk/service/Status;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/k/y;->d(Lcom/freshchat/consumer/sdk/service/Status;)V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    return-object v0
.end method

.method public jv()Lcom/freshchat/consumer/sdk/service/Status;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/y;->jd()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object v0

    return-object v0
.end method

.method public jw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/y;->title:Ljava/lang/String;

    return-object v0
.end method

.method public jx()Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/k/y;->kd()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "src=\"//"

    const-string v3, "src=\"http://"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value=\"//"

    const-string v3, "value=\"http://"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<\\s*(img|iframe).*?src\\s*=[ \'\"]+http[s]?:\\/\\/.*?>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "</div>"

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "<div class=\'offline-article-message\'>"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_rich_media_content_cannot_be_displayed:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    const-string v3, "<!DOCTYPE html>\t<html><head><link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_res/raw/normalize.css\"/><script src=\'file:///freshchat_assets/freshchat_hacks.js\'></script><title>HL_ARTICLE_TITLE</title></head><body onload=\'correctIframe()\'> <bdi>"

    const-string v5, "<div class=\"article-body\">"

    invoke-static {v2, v3, v1, v5, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "</bdi></body></html>"

    invoke-static {v2, v4, v0}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/y;->jw()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HL_ARTICLE_TITLE"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public kc()V
    .locals 4

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/y;->jw()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/y;->referenceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/k/y;->placeholderReferenceId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
