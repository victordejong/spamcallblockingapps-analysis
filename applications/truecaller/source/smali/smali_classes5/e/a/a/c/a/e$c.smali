.class public final Le/a/a/c/a/e$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/a/e;->i(Le/a/c/i/g/c;ZLs1/z/b/a;)V
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
    c = "com.truecaller.messaging.conversation.smartcards.InfoCardManagerRevampImpl$loadSmartCards$1"
    f = "InfoCardsManagerRevamp.kt"
    l = {
        0x7e,
        0x9a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/a/e;

.field public final synthetic g:Le/a/c/i/g/c;

.field public final synthetic h:Z

.field public final synthetic i:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/a/c/a/e;Le/a/c/i/g/c;ZLs1/z/b/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/e$c;->f:Le/a/a/c/a/e;

    iput-object p2, p0, Le/a/a/c/a/e$c;->g:Le/a/c/i/g/c;

    iput-boolean p3, p0, Le/a/a/c/a/e$c;->h:Z

    iput-object p4, p0, Le/a/a/c/a/e$c;->i:Ls1/z/b/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/a/c/a/e$c;

    iget-object v1, p0, Le/a/a/c/a/e$c;->f:Le/a/a/c/a/e;

    iget-object v2, p0, Le/a/a/c/a/e$c;->g:Le/a/c/i/g/c;

    iget-boolean v3, p0, Le/a/a/c/a/e$c;->h:Z

    iget-object v4, p0, Le/a/a/c/a/e$c;->i:Ls1/z/b/a;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/c/a/e$c;-><init>(Le/a/a/c/a/e;Le/a/c/i/g/c;ZLs1/z/b/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/c/a/e$c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/c/a/e$c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/a/e$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/a/e$c;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

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
    iget-object p1, p0, Le/a/a/c/a/e$c;->g:Le/a/c/i/g/c;

    .line 5
    iget-object p1, p1, Le/a/c/i/g/c;->d:Le/a/c/a0/r;

    if-eqz p1, :cond_3

    .line 6
    iget-object v1, p0, Le/a/a/c/a/e$c;->f:Le/a/a/c/a/e;

    .line 7
    iget-object v1, v1, Le/a/a/c/a/e;->f:Ljava/util/List;

    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/a/c/a/e$c;->f:Le/a/a/c/a/e;

    iget-object v1, p0, Le/a/a/c/a/e$c;->g:Le/a/c/i/g/c;

    iput v3, p0, Le/a/a/c/a/e$c;->e:I

    .line 10
    iget-object v3, p1, Le/a/a/c/a/e;->l:Ls1/w/f;

    new-instance v4, Le/a/a/c/a/f;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v1, v5}, Le/a/a/c/a/f;-><init>(Le/a/a/c/a/e;Le/a/c/i/g/c;Ls1/w/d;)V

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 11
    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 12
    iget-boolean v1, p0, Le/a/a/c/a/e$c;->h:Z

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    iget-object v1, p0, Le/a/a/c/a/e$c;->f:Le/a/a/c/a/e;

    .line 14
    iget-object v1, v1, Le/a/a/c/a/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_5

    .line 16
    iget-object v1, p0, Le/a/a/c/a/e$c;->i:Ls1/z/b/a;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/s;

    .line 17
    :cond_5
    iget-object v1, p0, Le/a/a/c/a/e$c;->f:Le/a/a/c/a/e;

    .line 18
    invoke-virtual {v1}, Le/a/a/c/a/e;->m()V

    .line 19
    :cond_6
    iget-object v1, p0, Le/a/a/c/a/e$c;->f:Le/a/a/c/a/e;

    .line 20
    iget-object v1, v1, Le/a/a/c/a/e;->c:Ljava/util/Map;

    const/16 v3, 0xa

    .line 21
    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Le/q/f/a/d/a;->Y1(I)I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_7

    move v3, v4

    .line 22
    :cond_7
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 24
    move-object v6, v5

    check-cast v6, Le/a/c/y/f;

    .line 25
    iget-wide v6, v6, Le/a/c/y/f;->a:J

    .line 26
    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 27
    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 28
    iget-object v1, p0, Le/a/a/c/a/e$c;->f:Le/a/a/c/a/e;

    .line 29
    iget-object v1, v1, Le/a/a/c/a/e;->d:Ljava/util/List;

    .line 30
    new-instance v3, Le/a/a/c/a/e$c$a;

    invoke-direct {v3}, Le/a/a/c/a/e$c$a;-><init>()V

    invoke-static {p1, v3}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 31
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    iget-object p1, p0, Le/a/a/c/a/e$c;->g:Le/a/c/i/g/c;

    .line 33
    iget-object p1, p1, Le/a/c/i/g/c;->d:Le/a/c/a0/r;

    if-nez p1, :cond_9

    .line 34
    iget-object p1, p0, Le/a/a/c/a/e$c;->f:Le/a/a/c/a/e;

    .line 35
    iget-object p1, p1, Le/a/a/c/a/e;->d:Ljava/util/List;

    .line 36
    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/y/f;

    if-eqz p1, :cond_9

    .line 37
    iget-object p1, p1, Le/a/c/y/f;->g:Lw3/b/a/b;

    if-eqz p1, :cond_9

    .line 38
    iget-object v1, p0, Le/a/a/c/a/e$c;->f:Le/a/a/c/a/e;

    .line 39
    iget-object v1, v1, Le/a/a/c/a/e;->d:Ljava/util/List;

    .line 40
    invoke-static {v1}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/y/f;

    if-eqz v1, :cond_9

    .line 41
    iget-object v1, v1, Le/a/c/y/f;->g:Lw3/b/a/b;

    if-eqz v1, :cond_9

    .line 42
    iget-object v3, p0, Le/a/a/c/a/e$c;->f:Le/a/a/c/a/e;

    .line 43
    iget-object v3, v3, Le/a/a/c/a/e;->f:Ljava/util/List;

    .line 44
    new-instance v4, Le/a/c/a0/r;

    invoke-direct {v4, p1, v1}, Le/a/c/a0/r;-><init>(Lw3/b/a/b;Lw3/b/a/b;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_9
    iget-object p1, p0, Le/a/a/c/a/e$c;->f:Le/a/a/c/a/e;

    .line 46
    iget-object p1, p1, Le/a/a/c/a/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_a

    .line 48
    iget-object p1, p0, Le/a/a/c/a/e$c;->i:Ls1/z/b/a;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 49
    :cond_a
    iget-object p1, p0, Le/a/a/c/a/e$c;->f:Le/a/a/c/a/e;

    iget-object v1, p0, Le/a/a/c/a/e$c;->g:Le/a/c/i/g/c;

    .line 50
    iget-wide v3, v1, Le/a/c/i/g/c;->a:J

    .line 51
    iput v2, p0, Le/a/a/c/a/e$c;->e:I

    invoke-virtual {p1, v3, v4, p0}, Le/a/a/c/a/e;->k(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 52
    :cond_b
    :goto_2
    iget-object p1, p0, Le/a/a/c/a/e$c;->f:Le/a/a/c/a/e;

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
