.class public final Le/a/a/c/a/h$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/a/h;->i(Le/a/c/i/g/c;ZLs1/z/b/a;)V
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
    c = "com.truecaller.messaging.conversation.smartcards.SmartCardManagerImpl$loadSmartCards$1"
    f = "SmartCardsManager.kt"
    l = {
        0xab,
        0xcd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/a/h;

.field public final synthetic g:Le/a/c/i/g/c;

.field public final synthetic h:Z

.field public final synthetic i:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/a/c/a/h;Le/a/c/i/g/c;ZLs1/z/b/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    iput-object p2, p0, Le/a/a/c/a/h$d;->g:Le/a/c/i/g/c;

    iput-boolean p3, p0, Le/a/a/c/a/h$d;->h:Z

    iput-object p4, p0, Le/a/a/c/a/h$d;->i:Ls1/z/b/a;

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

    new-instance p1, Le/a/a/c/a/h$d;

    iget-object v1, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    iget-object v2, p0, Le/a/a/c/a/h$d;->g:Le/a/c/i/g/c;

    iget-boolean v3, p0, Le/a/a/c/a/h$d;->h:Z

    iget-object v4, p0, Le/a/a/c/a/h$d;->i:Ls1/z/b/a;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/c/a/h$d;-><init>(Le/a/a/c/a/h;Le/a/c/i/g/c;ZLs1/z/b/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/c/a/h$d;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/c/a/h$d;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/a/h$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/a/c/a/h$d;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

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
    iget-object p1, p0, Le/a/a/c/a/h$d;->g:Le/a/c/i/g/c;

    .line 5
    iget-object p1, p1, Le/a/c/i/g/c;->d:Le/a/c/a0/r;

    if-eqz p1, :cond_3

    .line 6
    iget-object v2, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    .line 7
    iget-object v2, v2, Le/a/a/c/a/h;->l:Ljava/util/List;

    .line 8
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    iget-object v2, p0, Le/a/a/c/a/h$d;->g:Le/a/c/i/g/c;

    .line 10
    iget-boolean v6, p1, Le/a/a/c/a/h;->f:Z

    .line 11
    iput v5, p0, Le/a/a/c/a/h$d;->e:I

    .line 12
    iget-object v7, p1, Le/a/a/c/a/h;->r:Ls1/w/f;

    new-instance v8, Le/a/a/c/a/i;

    const/4 v9, 0x0

    invoke-direct {v8, p1, v2, v6, v9}, Le/a/a/c/a/i;-><init>(Le/a/a/c/a/h;Le/a/c/i/g/c;ZLs1/w/d;)V

    invoke-static {v7, v8, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 13
    :cond_4
    :goto_0
    check-cast p1, Le/a/c/p/f;

    if-eqz p1, :cond_c

    .line 14
    iget-object v2, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    .line 15
    iget-boolean v6, v2, Le/a/a/c/a/h;->f:Z

    if-eqz v6, :cond_8

    .line 16
    iget-object v6, p1, Le/a/c/p/f;->a:Ljava/util/Map;

    .line 17
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/c/r/j/s;

    .line 20
    iget-object v7, v7, Le/a/c/r/j/s;->a:Le/a/c/r/j/p;

    .line 21
    instance-of v7, v7, Le/a/c/r/j/p$g;

    .line 22
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 23
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    move v5, v3

    .line 24
    :cond_7
    :goto_1
    iput-boolean v5, v2, Le/a/a/c/a/h;->f:Z

    .line 25
    :cond_8
    iget-object v2, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    .line 26
    iget-object v2, v2, Le/a/a/c/a/h;->d:Ljava/util/Map;

    .line 27
    iget-object v5, p1, Le/a/c/p/f;->a:Ljava/util/Map;

    .line 28
    invoke-interface {v2, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 29
    iget-object v2, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    .line 30
    iget-object v2, v2, Le/a/a/c/a/h;->e:Ljava/util/List;

    .line 31
    iget-object p1, p1, Le/a/c/p/f;->a:Ljava/util/Map;

    .line 32
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 33
    new-instance v5, Le/a/a/c/a/j;

    invoke-direct {v5}, Le/a/a/c/a/j;-><init>()V

    invoke-static {p1, v5}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 34
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object p1, p0, Le/a/a/c/a/h$d;->g:Le/a/c/i/g/c;

    .line 36
    iget-object p1, p1, Le/a/c/i/g/c;->d:Le/a/c/a0/r;

    if-nez p1, :cond_9

    .line 37
    iget-object p1, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    .line 38
    iget-object p1, p1, Le/a/a/c/a/h;->e:Ljava/util/List;

    .line 39
    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/r/j/s;

    if-eqz p1, :cond_9

    .line 40
    iget-object p1, p1, Le/a/c/r/j/s;->e:Le/a/c/r/j/q;

    if-eqz p1, :cond_9

    .line 41
    iget-object p1, p1, Le/a/c/r/j/q;->a:Lw3/b/a/b;

    if-eqz p1, :cond_9

    .line 42
    iget-object v2, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    .line 43
    iget-object v2, v2, Le/a/a/c/a/h;->e:Ljava/util/List;

    .line 44
    invoke-static {v2}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/r/j/s;

    if-eqz v2, :cond_9

    .line 45
    iget-object v2, v2, Le/a/c/r/j/s;->e:Le/a/c/r/j/q;

    if-eqz v2, :cond_9

    .line 46
    iget-object v2, v2, Le/a/c/r/j/q;->a:Lw3/b/a/b;

    if-eqz v2, :cond_9

    .line 47
    iget-object v5, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    .line 48
    iget-object v5, v5, Le/a/a/c/a/h;->l:Ljava/util/List;

    .line 49
    new-instance v6, Le/a/c/a0/r;

    invoke-direct {v6, p1, v2}, Le/a/c/a0/r;-><init>(Lw3/b/a/b;Lw3/b/a/b;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_9
    iget-object p1, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    .line 51
    iget-object p1, p1, Le/a/a/c/a/h;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_a

    .line 53
    iget-object p1, p0, Le/a/a/c/a/h$d;->i:Ls1/z/b/a;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 54
    :cond_a
    iget-object p1, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    iget-object v2, p0, Le/a/a/c/a/h$d;->g:Le/a/c/i/g/c;

    .line 55
    iget-wide v5, v2, Le/a/c/i/g/c;->a:J

    .line 56
    iput v4, p0, Le/a/a/c/a/h$d;->e:I

    invoke-virtual {p1, v5, v6, p0}, Le/a/a/c/a/h;->t(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    .line 57
    :cond_b
    :goto_2
    iget-object p1, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    .line 58
    iput-boolean v3, p1, Le/a/a/c/a/h;->j:Z

    return-object v0

    .line 59
    :cond_c
    iget-boolean p1, p0, Le/a/a/c/a/h$d;->h:Z

    if-eqz p1, :cond_e

    .line 60
    iget-object p1, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    .line 61
    iget-object p1, p1, Le/a/a/c/a/h;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_d

    .line 63
    iget-object p1, p0, Le/a/a/c/a/h$d;->i:Ls1/z/b/a;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 64
    :cond_d
    iget-object p1, p0, Le/a/a/c/a/h$d;->f:Le/a/a/c/a/h;

    .line 65
    invoke-virtual {p1}, Le/a/a/c/a/h;->u()V

    :cond_e
    return-object v0
.end method
