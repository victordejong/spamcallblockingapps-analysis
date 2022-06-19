.class public final Le/a/l/n2/d;
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
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.billing.GooglePlayBilling$execute$2"
    f = "GooglePlayBilling.kt"
    l = {
        0x10a,
        0x10b,
        0x10c,
        0x112
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final synthetic i:Le/a/l/n2/a;

.field public final synthetic j:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Le/a/l/n2/a;Ls1/z/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/n2/d;->i:Le/a/l/n2/a;

    iput-object p2, p0, Le/a/l/n2/d;->j:Ls1/z/b/l;

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

    new-instance p1, Le/a/l/n2/d;

    iget-object v0, p0, Le/a/l/n2/d;->i:Le/a/l/n2/a;

    iget-object v1, p0, Le/a/l/n2/d;->j:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/n2/d;-><init>(Le/a/l/n2/a;Ls1/z/b/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/n2/d;

    iget-object v0, p0, Le/a/l/n2/d;->i:Le/a/l/n2/a;

    iget-object v1, p0, Le/a/l/n2/d;->j:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/n2/d;-><init>(Le/a/l/n2/a;Ls1/z/b/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/n2/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/n2/d;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget v1, p0, Le/a/l/n2/d;->f:I

    iget v7, p0, Le/a/l/n2/d;->e:I

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, p0

    move p1, v1

    move-object v1, v0

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget v1, p0, Le/a/l/n2/d;->g:I

    iget v7, p0, Le/a/l/n2/d;->f:I

    iget v8, p0, Le/a/l/n2/d;->e:I

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v9, v1

    move p1, v7

    move v7, v8

    move-object v8, p0

    move-object v1, v0

    goto :goto_2

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/l/n2/d;->i:Le/a/l/n2/a;

    invoke-static {p1}, Le/a/l/n2/a;->n(Le/a/l/n2/a;)Le/d/a/a/d;

    move-result-object p1

    invoke-virtual {p1}, Le/d/a/a/d;->e()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x5

    const/4 v1, 0x0

    move-object v8, p0

    move v7, v1

    move-object v1, v0

    :goto_0
    if-ge v7, p1, :cond_b

    .line 5
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 6
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 7
    iget-object v10, v8, Le/a/l/n2/d;->i:Le/a/l/n2/a;

    iput v7, v8, Le/a/l/n2/d;->e:I

    iput p1, v8, Le/a/l/n2/d;->f:I

    iput v9, v8, Le/a/l/n2/d;->g:I

    iput v6, v8, Le/a/l/n2/d;->h:I

    .line 8
    iget-object v11, v10, Le/a/l/n2/a;->g:Ls1/w/f;

    new-instance v12, Le/a/l/n2/b;

    invoke-direct {v12, v10, v2}, Le/a/l/n2/b;-><init>(Le/a/l/n2/a;Ls1/w/d;)V

    invoke-static {v11, v12, v8}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_5

    goto :goto_1

    :cond_5
    sget-object v10, Ls1/s;->a:Ls1/s;

    :goto_1
    if-ne v10, v0, :cond_6

    return-object v0

    .line 9
    :cond_6
    :goto_2
    iget-object v10, v8, Le/a/l/n2/d;->i:Le/a/l/n2/a;

    invoke-static {v10}, Le/a/l/n2/a;->n(Le/a/l/n2/a;)Le/d/a/a/d;

    move-result-object v10

    invoke-virtual {v10}, Le/d/a/a/d;->e()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object p1, v8, Le/a/l/n2/d;->j:Ls1/z/b/l;

    iput v3, v8, Le/a/l/n2/d;->h:I

    invoke-interface {p1, v8}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_3
    return-object p1

    .line 10
    :cond_8
    iget-object v10, v8, Le/a/l/n2/d;->i:Le/a/l/n2/a;

    .line 11
    iget-object v10, v10, Le/a/l/n2/a;->g:Ls1/w/f;

    .line 12
    new-instance v11, Le/a/l/n2/d$a;

    invoke-direct {v11, v9, v2}, Le/a/l/n2/d$a;-><init>(ILs1/w/d;)V

    iput v7, v8, Le/a/l/n2/d;->e:I

    iput p1, v8, Le/a/l/n2/d;->f:I

    iput v4, v8, Le/a/l/n2/d;->h:I

    invoke-static {v10, v11, v8}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_9

    return-object v0

    :cond_9
    :goto_4
    add-int/2addr v7, v6

    goto :goto_0

    :cond_a
    move-object v8, p0

    .line 13
    :cond_b
    iget-object p1, v8, Le/a/l/n2/d;->j:Ls1/z/b/l;

    iput v5, v8, Le/a/l/n2/d;->h:I

    invoke-interface {p1, v8}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    :cond_c
    :goto_5
    return-object p1
.end method
