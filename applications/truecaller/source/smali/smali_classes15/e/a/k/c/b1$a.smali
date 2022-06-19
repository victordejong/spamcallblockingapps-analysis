.class public final Le/a/k/c/b1$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/b1;->a(Landroid/content/Intent;)Lq3/a/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.VideoCallerIdPresenceHandlerImpl$onPresenceUpdate$1"
    f = "VideoCallerIdPresenceHandler.kt"
    l = {
        0x26
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/c/b1;

.field public final synthetic g:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Le/a/k/c/b1;Landroid/content/Intent;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/b1$a;->f:Le/a/k/c/b1;

    iput-object p2, p0, Le/a/k/c/b1$a;->g:Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/c/b1$a;

    iget-object v0, p0, Le/a/k/c/b1$a;->f:Le/a/k/c/b1;

    iget-object v1, p0, Le/a/k/c/b1$a;->g:Landroid/content/Intent;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/c/b1$a;-><init>(Le/a/k/c/b1;Landroid/content/Intent;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/c/b1$a;

    iget-object v0, p0, Le/a/k/c/b1$a;->f:Le/a/k/c/b1;

    iget-object v1, p0, Le/a/k/c/b1$a;->g:Landroid/content/Intent;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/c/b1$a;-><init>(Le/a/k/c/b1;Landroid/content/Intent;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/c/b1$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/c/b1$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/c/b1$a;->f:Le/a/k/c/b1;

    .line 5
    iget-object p1, p1, Le/a/k/c/b1;->c:Le/a/k/j;

    .line 6
    iget-object v1, p0, Le/a/k/c/b1$a;->g:Landroid/content/Intent;

    check-cast p1, Le/a/k/k;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "intent"

    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "com.truecaller.datamanager.EXTRA_PRESENCE"

    .line 8
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v1, p1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move-object p1, v3

    :cond_2
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Le/a/l4/e;

    .line 12
    iget-object v5, v4, Le/a/l4/e;->l:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    if-eqz v5, :cond_4

    .line 13
    iget-object v4, v4, Le/a/l4/e;->a:Ljava/lang/String;

    .line 14
    new-instance v6, Le/a/k/g;

    .line 15
    invoke-virtual {v5}, Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;->getDisabled()Z

    move-result v7

    xor-int/2addr v7, v2

    .line 16
    invoke-virtual {v5}, Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;->getVersion()I

    move-result v5

    .line 17
    invoke-direct {v6, v4, v7, v5}, Le/a/k/g;-><init>(Ljava/lang/String;ZI)V

    goto :goto_1

    :cond_4
    move-object v6, v3

    :goto_1
    if-eqz v6, :cond_3

    .line 18
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_5
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    .line 20
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 22
    check-cast v3, Le/a/k/g;

    .line 23
    new-instance v4, Le/a/k/l/d;

    .line 24
    iget-object v5, v3, Le/a/k/g;->a:Ljava/lang/String;

    .line 25
    iget-boolean v6, v3, Le/a/k/g;->b:Z

    .line 26
    iget v3, v3, Le/a/k/g;->c:I

    .line 27
    invoke-direct {v4, v5, v6, v3}, Le/a/k/l/d;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_7
    iget-object v1, p0, Le/a/k/c/b1$a;->f:Le/a/k/c/b1;

    .line 29
    iget-object v1, v1, Le/a/k/c/b1;->b:Le/a/k/c/r0;

    .line 30
    iput v2, p0, Le/a/k/c/b1$a;->e:I

    invoke-interface {v1, p1, p0}, Le/a/k/c/r0;->f(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 31
    :cond_8
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
