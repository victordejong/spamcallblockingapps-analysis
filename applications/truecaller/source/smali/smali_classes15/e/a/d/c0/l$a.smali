.class public final Le/a/d/c0/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/l;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Ls1/z/c/c0;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/l$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/d/c0/l$a;->b:Ls1/z/c/c0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Le/a/d/c0/l$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/c0/l$a$a;

    iget v1, v0, Le/a/d/c0/l$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/l$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/l$a$a;

    invoke-direct {v0, p0, p2}, Le/a/d/c0/l$a$a;-><init>(Le/a/d/c0/l$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/c0/l$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/l$a$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/c0/l$a$a;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iget-object v0, v0, Le/a/d/c0/l$a$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/c0/l$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/d/c0/l$a$a;->i:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iget-object v2, v0, Le/a/d/c0/l$a$a;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v5, v0, Le/a/d/c0/l$a$a;->g:Ljava/lang/Object;

    check-cast v5, Le/a/d/c0/l$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    move-object v2, p1

    check-cast v2, Ljava/util/Set;

    .line 5
    iget-object p1, p0, Le/a/d/c0/l$a;->b:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-static {v2, p1}, Ls1/u/i;->b0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 6
    iget-object p2, p0, Le/a/d/c0/l$a;->b:Ls1/z/c/c0;

    iget-object p2, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    invoke-static {p2, v2}, Ls1/u/i;->b0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_5

    .line 8
    iget-object v5, p0, Le/a/d/c0/l$a;->a:Lq3/a/x2/g;

    new-instance v6, Le/a/d/c0/c0$a;

    invoke-direct {v6, p1}, Le/a/d/c0/c0$a;-><init>(Ljava/util/Set;)V

    iput-object p0, v0, Le/a/d/c0/l$a$a;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/c0/l$a$a;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/c0/l$a$a;->i:Ljava/lang/Object;

    iput v4, v0, Le/a/d/c0/l$a$a;->e:I

    invoke-interface {v5, v6, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p0

    move-object p1, p2

    :goto_1
    move-object p2, p1

    :goto_2
    move-object p1, v2

    goto :goto_3

    :cond_5
    move-object v5, p0

    goto :goto_2

    .line 9
    :goto_3
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_7

    .line 10
    iget-object v2, v5, Le/a/d/c0/l$a;->a:Lq3/a/x2/g;

    new-instance v4, Le/a/d/c0/c0$b;

    invoke-direct {v4, p2}, Le/a/d/c0/c0$b;-><init>(Ljava/util/Set;)V

    iput-object v5, v0, Le/a/d/c0/l$a$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/c0/l$a$a;->h:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, v0, Le/a/d/c0/l$a$a;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c0/l$a$a;->e:I

    invoke-interface {v2, v4, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, v5

    :goto_4
    move-object v5, v0

    .line 11
    :cond_7
    iget-object p2, v5, Le/a/d/c0/l$a;->b:Ls1/z/c/c0;

    iput-object p1, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 12
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
