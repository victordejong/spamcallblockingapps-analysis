.class public final Le/a/o/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/j;
.implements Lq3/a/i0;


# instance fields
.field public final a:Le/a/o/c;

.field public final b:Ls1/w/f;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/o/c;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contextCall"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/k;->a:Le/a/o/c;

    iput-object p2, p0, Le/a/o/k;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/o/k;->c:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public d(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.truecaller.datamanager.EXTRA_PRESENCE"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Le/a/l4/e;

    .line 5
    iget-object v3, v2, Le/a/l4/e;->j:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-ne v5, v4, :cond_3

    .line 6
    new-instance v5, Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;

    .line 7
    iget-object v2, v2, Le/a/l4/e;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v3}, Lcom/truecaller/api/services/presence/v1/models/CallContext;->getDisabled()Z

    move-result v6

    xor-int/2addr v4, v6

    .line 9
    invoke-virtual {v3}, Lcom/truecaller/api/services/presence/v1/models/CallContext;->getVersion()I

    move-result v3

    .line 10
    invoke-direct {v5, v2, v4, v3}, Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;-><init>(Ljava/lang/String;II)V

    goto :goto_2

    :cond_3
    move-object v5, v1

    :goto_2
    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_4
    iget-object p1, p0, Le/a/o/k;->a:Le/a/o/c;

    invoke-interface {p1, v0}, Le/a/o/c;->r(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public e(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o/k;->a:Le/a/o/c;

    invoke-interface {v0, p1, p2}, Le/a/o/c;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method public f(Lcom/truecaller/data/entity/Number;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Number;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/k;->b:Ls1/w/f;

    new-instance v1, Le/a/o/k$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/o/k$a;-><init>(Le/a/o/k;Lcom/truecaller/data/entity/Number;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ls1/z/b/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/o/k$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/o/k$c;-><init>(Le/a/o/k;Ls1/z/b/l;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/k;->c:Ls1/w/f;

    return-object v0
.end method

.method public h(Ls1/z/b/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Le/a/o/b/j;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/o/k$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/o/k$b;-><init>(Le/a/o/k;Ls1/z/b/l;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public i(Lcom/truecaller/data/entity/Number;Le/a/e/c/i0;)V
    .locals 7

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallButtonCallbackCallback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/o/k;->c:Ls1/w/f;

    new-instance v4, Le/a/o/l;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/o/l;-><init>(Le/a/o/k;Lcom/truecaller/data/entity/Number;Le/a/e/c/i0;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public isSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/k;->a:Le/a/o/c;

    invoke-interface {v0}, Le/a/o/c;->isSupported()Z

    move-result v0

    return v0
.end method

.method public o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/k;->a:Le/a/o/c;

    invoke-interface {v0, p1}, Le/a/o/c;->o(Z)V

    return-void
.end method
