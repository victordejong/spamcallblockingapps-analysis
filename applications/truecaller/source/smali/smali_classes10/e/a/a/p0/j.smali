.class public final Le/a/a/p0/j;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.categorizer.UnclassifiedMessagesSyncHelper$maybeTranslate$1"
    f = "UnclassifiedMessagesSyncHelper.kt"
    l = {
        0x14b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/p0/k;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:[Lcom/truecaller/messaging/data/types/Mention;


# direct methods
.method public constructor <init>(Le/a/a/p0/k;Ljava/lang/String;Ljava/lang/String;[Lcom/truecaller/messaging/data/types/Mention;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/p0/j;->f:Le/a/a/p0/k;

    iput-object p2, p0, Le/a/a/p0/j;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/a/p0/j;->h:Ljava/lang/String;

    iput-object p4, p0, Le/a/a/p0/j;->i:[Lcom/truecaller/messaging/data/types/Mention;

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

    new-instance p1, Le/a/a/p0/j;

    iget-object v1, p0, Le/a/a/p0/j;->f:Le/a/a/p0/k;

    iget-object v2, p0, Le/a/a/p0/j;->g:Ljava/lang/String;

    iget-object v3, p0, Le/a/a/p0/j;->h:Ljava/lang/String;

    iget-object v4, p0, Le/a/a/p0/j;->i:[Lcom/truecaller/messaging/data/types/Mention;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/p0/j;-><init>(Le/a/a/p0/k;Ljava/lang/String;Ljava/lang/String;[Lcom/truecaller/messaging/data/types/Mention;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/p0/j;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/p0/j;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/p0/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/p0/j;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

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
    iget-object p1, p0, Le/a/a/p0/j;->f:Le/a/a/p0/k;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sv"

    const-string v1, "ar"

    .line 6
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 7
    iget-object v1, p0, Le/a/a/p0/j;->g:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Le/a/a/p0/j;->f:Le/a/a/p0/k;

    .line 9
    iget-object v3, p1, Le/a/a/p0/k;->g:Le/a/a/g1/b;

    .line 10
    iget-object v4, p0, Le/a/a/p0/j;->g:Ljava/lang/String;

    iget-object v6, p0, Le/a/a/p0/j;->h:Ljava/lang/String;

    iget-object p1, p0, Le/a/a/p0/j;->i:[Lcom/truecaller/messaging/data/types/Mention;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    array-length v5, p1

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v5, :cond_2

    aget-object v9, p1, v8

    .line 13
    invoke-virtual {v9}, Lcom/truecaller/messaging/data/types/Mention;->getPrivateName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v7, [Ljava/lang/String;

    .line 14
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, [Ljava/lang/String;

    iput v2, p0, Le/a/a/p0/j;->e:I

    const-string v5, "en"

    move-object v8, p0

    .line 15
    invoke-interface/range {v3 .. v8}, Le/a/a/g1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 16
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
