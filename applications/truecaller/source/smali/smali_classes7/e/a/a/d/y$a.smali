.class public final Le/a/a/d/y$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/d/y;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Le/a/k3/l/k/a;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.newconversation.NewConversationPresenter$loadExistingImGroupParticipants$1$participants$1"
    f = "NewConversationPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/d/y;


# direct methods
.method public constructor <init>(Le/a/a/d/y;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/y$a;->e:Le/a/a/d/y;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/a/d/y$a;

    iget-object v0, p0, Le/a/a/d/y$a;->e:Le/a/a/d/y;

    invoke-direct {p1, v0, p2}, Le/a/a/d/y$a;-><init>(Le/a/a/d/y;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/a/d/y$a;->e:Le/a/a/d/y;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/a/d/y;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 6
    iget-object p2, p2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->B:Le/a/r2/f;

    .line 7
    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/k/a/a/m;

    .line 8
    iget-object p1, p1, Le/a/a/d/y;->g:Ljava/lang/String;

    invoke-interface {p2, p1}, Le/a/a/k/a/a/m;->q(Ljava/lang/String;)Le/a/r2/x;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/k/a/a/o;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 10
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {p1}, Le/a/a/k/a/a/o;->i1()Le/a/k3/l/k/a;

    move-result-object v1

    .line 13
    iget-object v2, v1, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    .line 14
    new-instance v3, Ls1/k;

    invoke-direct {v3, v2, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 17
    invoke-static {v0}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p2

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 18
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_1
    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/d/y$a;->e:Le/a/a/d/y;

    iget-object p1, p1, Le/a/a/d/y;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 3
    iget-object p1, p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->B:Le/a/r2/f;

    .line 4
    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/k/a/a/m;

    .line 5
    iget-object v0, p0, Le/a/a/d/y$a;->e:Le/a/a/d/y;

    iget-object v0, v0, Le/a/a/d/y;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/a/k/a/a/m;->q(Ljava/lang/String;)Le/a/r2/x;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/k/a/a/o;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-interface {p1}, Le/a/a/k/a/a/o;->i1()Le/a/k3/l/k/a;

    move-result-object v2

    .line 10
    iget-object v3, v2, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    .line 11
    new-instance v4, Ls1/k;

    invoke-direct {v4, v3, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 14
    invoke-static {v1}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    return-object v0
.end method
