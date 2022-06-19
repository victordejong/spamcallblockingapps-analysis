.class public final Le/a/d/v/k/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/n;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/v/k/n;


# direct methods
.method public constructor <init>(Le/a/d/v/k/n;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/n$a;->a:Le/a/d/v/k/n;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Le/a/d/v/k/n$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/v/k/n$a$a;

    iget v1, v0, Le/a/d/v/k/n$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/v/k/n$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/v/k/n$a$a;

    invoke-direct {v0, p0, p2}, Le/a/d/v/k/n$a$a;-><init>(Le/a/d/v/k/n$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/v/k/n$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/v/k/n$a$a;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/v/k/n$a$a;->g:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p2

    goto/16 :goto_7

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p1, v0, Le/a/d/v/k/n$a$a;->i:I

    iget-object v2, v0, Le/a/d/v/k/n$a$a;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v4, v0, Le/a/d/v/k/n$a$a;->g:Ljava/lang/Object;

    check-cast v4, Le/a/d/v/k/n$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget p1, v0, Le/a/d/v/k/n$a$a;->i:I

    iget-object v2, v0, Le/a/d/v/k/n$a$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/v/k/n$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-wide/16 v7, 0xbb8

    .line 5
    iput-object p0, v0, Le/a/d/v/k/n$a$a;->g:Ljava/lang/Object;

    iput p1, v0, Le/a/d/v/k/n$a$a;->i:I

    iput v5, v0, Le/a/d/v/k/n$a$a;->e:I

    invoke-static {v7, v8, v0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 6
    :goto_1
    iget-object p2, v2, Le/a/d/v/k/n$a;->a:Le/a/d/v/k/n;

    iget-object p2, p2, Le/a/d/v/k/n;->f:Le/a/d/v/k/o;

    .line 7
    iget-object p2, p2, Le/a/d/v/k/o;->a:Lq3/a/b3/c;

    .line 8
    iput-object v2, v0, Le/a/d/v/k/n$a$a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/v/k/n$a$a;->h:Ljava/lang/Object;

    iput p1, v0, Le/a/d/v/k/n$a$a;->i:I

    iput v4, v0, Le/a/d/v/k/n$a$a;->e:I

    invoke-interface {p2, v6, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    return-object v1

    :cond_6
    move-object v4, v2

    move-object v2, p2

    .line 9
    :goto_2
    :try_start_1
    iget-object p2, v4, Le/a/d/v/k/n$a;->a:Le/a/d/v/k/n;

    iget-object p2, p2, Le/a/d/v/k/n;->f:Le/a/d/v/k/o;

    .line 10
    iget-object p2, p2, Le/a/d/v/k/o;->b:Le/a/d/v/g;

    .line 11
    invoke-virtual {p2}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Le/a/d/v/l/a;

    invoke-interface {v9}, Le/a/d/v/l/a;->d()I

    move-result v9

    if-ne v9, p1, :cond_8

    move v9, v5

    goto :goto_3

    :cond_8
    move v9, v8

    .line 12
    :goto_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 13
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_4

    :cond_9
    move-object v7, v6

    :goto_4
    if-nez v7, :cond_a

    goto :goto_5

    :cond_a
    move v5, v8

    :goto_5
    if-eqz v5, :cond_b

    .line 14
    iget-object p2, v4, Le/a/d/v/k/n$a;->a:Le/a/d/v/k/n;

    iget-object p2, p2, Le/a/d/v/k/n;->f:Le/a/d/v/k/o;

    .line 15
    iget-object p2, p2, Le/a/d/v/k/o;->c:Le/a/d/c0/z1/i;

    .line 16
    iput-object v2, v0, Le/a/d/v/k/n$a$a;->g:Ljava/lang/Object;

    iput-object v6, v0, Le/a/d/v/k/n$a$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/d/v/k/n$a$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/d/c0/z1/i;->j(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    move-object p1, v2

    .line 17
    :goto_6
    :try_start_2
    sget-object p2, Ls1/s;->a:Ls1/s;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    invoke-interface {p1, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p2

    :goto_7
    move-object v2, p1

    goto :goto_8

    :catchall_1
    move-exception p1

    move-object p2, p1

    :goto_8
    invoke-interface {v2, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p2
.end method
