.class public final Le/a/d/v/k/h1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/h1;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/Set<",
        "+",
        "Le/a/d/x/r/i;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/d/v/k/h1;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/d/v/k/h1;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/h1$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/d/v/k/h1$a;->b:Le/a/d/v/k/h1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Le/a/d/v/k/h1$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/v/k/h1$a$a;

    iget v1, v0, Le/a/d/v/k/h1$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/v/k/h1$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/v/k/h1$a$a;

    invoke-direct {v0, p0, p2}, Le/a/d/v/k/h1$a$a;-><init>(Le/a/d/v/k/h1$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/v/k/h1$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/v/k/h1$a$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/d/v/k/h1$a$a;->f:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/d/v/k/h1$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Ljava/util/Set;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RTM peers update: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 9
    check-cast v5, Le/a/d/x/r/i;

    .line 10
    new-instance v6, Le/a/d/c0/z1/o$d;

    .line 11
    iget-object v5, v5, Le/a/d/x/r/i;->a:Ljava/lang/String;

    .line 12
    invoke-direct {v6, v5}, Le/a/d/c0/z1/o$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {v2}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 14
    iget-object v2, p0, Le/a/d/v/k/h1$a;->b:Le/a/d/v/k/h1;

    iget-object v2, v2, Le/a/d/v/k/h1;->b:Le/a/d/v/k/c1;

    .line 15
    iget-object v2, v2, Le/a/d/v/k/c1;->d:Le/a/d/c0/z1/i;

    .line 16
    iput-object p2, v0, Le/a/d/v/k/h1$a$a;->f:Ljava/lang/Object;

    iput v4, v0, Le/a/d/v/k/h1$a$a;->e:I

    invoke-interface {v2, p1, v0}, Le/a/d/c0/z1/i;->c(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_2
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    .line 17
    invoke-static {p2}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/d/v/k/h1$a$a;->f:Ljava/lang/Object;

    iput v3, v0, Le/a/d/v/k/h1$a$a;->e:I

    invoke-interface {p1, p2, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
