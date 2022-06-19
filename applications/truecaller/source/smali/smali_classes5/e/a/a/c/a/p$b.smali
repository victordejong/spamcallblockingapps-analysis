.class public final Le/a/a/c/a/p$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/a/p;->f(Le/a/c/i/g/d;ZLs1/z/b/a;)V
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
    c = "com.truecaller.messaging.conversation.smartcards.UpdateCategoriesManagerImpl$loadUpdateTags$2"
    f = "UpdateCategoriesManager.kt"
    l = {
        0x4c,
        0x55
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/a/p;

.field public final synthetic g:Le/a/c/i/g/d;

.field public final synthetic h:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/a/c/a/p;Le/a/c/i/g/d;Ls1/z/b/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/p$b;->f:Le/a/a/c/a/p;

    iput-object p2, p0, Le/a/a/c/a/p$b;->g:Le/a/c/i/g/d;

    iput-object p3, p0, Le/a/a/c/a/p$b;->h:Ls1/z/b/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/a/c/a/p$b;

    iget-object v0, p0, Le/a/a/c/a/p$b;->f:Le/a/a/c/a/p;

    iget-object v1, p0, Le/a/a/c/a/p$b;->g:Le/a/c/i/g/d;

    iget-object v2, p0, Le/a/a/c/a/p$b;->h:Ls1/z/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/a/p$b;-><init>(Le/a/a/c/a/p;Le/a/c/i/g/d;Ls1/z/b/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/a/p$b;

    iget-object v0, p0, Le/a/a/c/a/p$b;->f:Le/a/a/c/a/p;

    iget-object v1, p0, Le/a/a/c/a/p$b;->g:Le/a/c/i/g/d;

    iget-object v2, p0, Le/a/a/c/a/p$b;->h:Ls1/z/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/a/p$b;-><init>(Le/a/a/c/a/p;Le/a/c/i/g/d;Ls1/z/b/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/a/p$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/a/p$b;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/c/a/p$b;->f:Le/a/a/c/a/p;

    .line 5
    iget-object p1, p1, Le/a/a/c/a/p;->i:Le/a/c/b0/d;

    .line 6
    iget-object v1, p0, Le/a/a/c/a/p$b;->g:Le/a/c/i/g/d;

    iput v3, p0, Le/a/a/c/a/p$b;->e:I

    invoke-interface {p1, v1, p0}, Le/a/c/b0/d;->e(Le/a/c/i/g/d;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 7
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/Map;

    .line 8
    iget-object v1, p0, Le/a/a/c/a/p$b;->f:Le/a/a/c/a/p;

    .line 9
    iget-object v4, v1, Le/a/a/c/a/p;->b:Ljava/util/Map;

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_5

    .line 10
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    iput-object v3, v1, Le/a/a/c/a/p;->b:Ljava/util/Map;

    .line 12
    :cond_5
    iget-object v1, p0, Le/a/a/c/a/p$b;->f:Le/a/a/c/a/p;

    .line 13
    iget-object v1, v1, Le/a/a/c/a/p;->b:Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 14
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    iget-object p1, p0, Le/a/a/c/a/p$b;->f:Le/a/a/c/a/p;

    .line 16
    iget-object p1, p1, Le/a/a/c/a/p;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_6

    .line 18
    iget-object p1, p0, Le/a/a/c/a/p$b;->f:Le/a/a/c/a/p;

    .line 19
    iget-object p1, p1, Le/a/a/c/a/p;->g:Ls1/w/f;

    .line 20
    new-instance v1, Le/a/a/c/a/p$b$a;

    invoke-direct {v1, p0, v3}, Le/a/a/c/a/p$b$a;-><init>(Le/a/a/c/a/p$b;Ls1/w/d;)V

    iput v2, p0, Le/a/a/c/a/p$b;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 21
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_7
    const-string p1, "updateCategoryCache"

    .line 22
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
