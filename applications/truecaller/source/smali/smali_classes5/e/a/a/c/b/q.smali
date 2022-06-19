.class public final Le/a/a/c/b/q;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/b/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/a/c/b/o;",
        ">;",
        "Le/a/a/c/b/n;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/r2/j;

.field public final e:Lcom/truecaller/messaging/data/types/Conversation;

.field public final f:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r2/j;Lcom/truecaller/messaging/data/types/Conversation;Le/a/r2/f;)V
    .locals 1
    .param p1    # Le/a/r2/j;
        .annotation runtime Ljavax/inject/Named;
            value = "ui_thread"
        .end annotation
    .end param
    .param p2    # Lcom/truecaller/messaging/data/types/Conversation;
        .annotation runtime Ljavax/inject/Named;
            value = "conversation"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/j;",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiThread"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversation"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/a/c/b/q;->d:Le/a/r2/j;

    iput-object p2, p0, Le/a/a/c/b/q;->e:Lcom/truecaller/messaging/data/types/Conversation;

    iput-object p3, p0, Le/a/a/c/b/q;->f:Le/a/r2/f;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/b/q;->b:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/b/q;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public U8(Ljava/lang/String;)V
    .locals 8

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/b/q;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Le/a/a/c/b/q;->c:Ljava/util/List;

    iget-object v0, p0, Le/a/a/c/b/q;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/a/c/b/q;->b:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/entity/messaging/Participant;

    .line 6
    iget-object v4, v3, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "Locale.ROOT"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-static {v4, v5, v2, v6}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v4

    if-ne v4, v1, :cond_2

    .line 7
    iget-object v4, p0, Le/a/a/c/b/q;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_3
    :goto_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/b/o;

    if-eqz p1, :cond_4

    iget-object v0, p0, Le/a/a/c/b/q;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Le/a/a/c/b/o;->gh(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/a/c/b/o;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/a/c/b/q;->e:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Le/a/a/c/b/q;->f:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    .line 6
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 7
    invoke-interface {v0, p1}, Le/a/a/k/a/a/m;->b(Ljava/lang/String;)Le/a/r2/x;

    move-result-object p1

    iget-object v0, p0, Le/a/a/c/b/q;->d:Le/a/r2/j;

    new-instance v1, Le/a/a/c/b/p;

    invoke-direct {v1, p0}, Le/a/a/c/b/p;-><init>(Le/a/a/c/b/q;)V

    invoke-virtual {p1, v0, v1}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/c/b/o;->s()V

    :cond_0
    return-void
.end method

.method public we(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/b/q;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/o;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Le/a/a/c/b/o;->l5(Lcom/truecaller/data/entity/messaging/Participant;)V

    .line 4
    invoke-interface {v0}, Le/a/a/c/b/o;->s()V

    :cond_0
    return-void
.end method
