.class Lzendesk/support/guide/HelpModel$1;
.super Lcom/zendesk/service/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/guide/HelpModel;->getArticlesForSection(Lzendesk/support/SectionItem;[Ljava/lang/String;Lcom/zendesk/service/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/f<",
        "Ljava/util/List<",
        "Lzendesk/support/Article;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/guide/HelpModel;

.field final synthetic val$callback:Lcom/zendesk/service/f;


# direct methods
.method constructor <init>(Lzendesk/support/guide/HelpModel;Lcom/zendesk/service/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpModel$1;->this$0:Lzendesk/support/guide/HelpModel;

    iput-object p2, p0, Lzendesk/support/guide/HelpModel$1;->val$callback:Lcom/zendesk/service/f;

    invoke-direct {p0}, Lcom/zendesk/service/f;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpModel$1;->val$callback:Lcom/zendesk/service/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzendesk/support/guide/HelpModel$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/Article;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/Article;

    .line 4
    iget-object v2, p0, Lzendesk/support/guide/HelpModel$1;->this$0:Lzendesk/support/guide/HelpModel;

    invoke-static {v2, v1}, Lzendesk/support/guide/HelpModel;->access$000(Lzendesk/support/guide/HelpModel;Lzendesk/support/Article;)Lzendesk/support/ArticleItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lzendesk/support/guide/HelpModel$1;->val$callback:Lcom/zendesk/service/f;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
