.class public final Le/a/l/n1;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.PremiumLogsSender$sendLogsToSupport$2"
    f = "PremiumLogsSender.kt"
    l = {
        0x1a,
        0x1a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:I

.field public final synthetic l:Le/a/l/o1;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/l/o1;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/n1;->l:Le/a/l/o1;

    iput-object p2, p0, Le/a/l/n1;->m:Ljava/lang/String;

    iput-object p3, p0, Le/a/l/n1;->n:Ljava/lang/String;

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

    new-instance p1, Le/a/l/n1;

    iget-object v0, p0, Le/a/l/n1;->l:Le/a/l/o1;

    iget-object v1, p0, Le/a/l/n1;->m:Ljava/lang/String;

    iget-object v2, p0, Le/a/l/n1;->n:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/l/n1;-><init>(Le/a/l/o1;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/n1;

    iget-object v0, p0, Le/a/l/n1;->l:Le/a/l/o1;

    iget-object v1, p0, Le/a/l/n1;->m:Ljava/lang/String;

    iget-object v2, p0, Le/a/l/n1;->n:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/l/n1;-><init>(Le/a/l/o1;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/n1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/n1;->k:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/l/n1;->j:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Le/a/l/n1;->i:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    iget-object v5, p0, Le/a/l/n1;->h:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    iget-object v6, p0, Le/a/l/n1;->g:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    iget-object v7, p0, Le/a/l/n1;->f:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    iget-object v8, p0, Le/a/l/n1;->e:Ljava/lang/Object;

    check-cast v8, Le/a/v3/c/a;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/l/n1;->l:Le/a/l/o1;

    .line 5
    iget-object v8, p1, Le/a/l/o1;->c:Le/a/v3/c/a;

    .line 6
    iget-object p1, p1, Le/a/l/o1;->b:Le/a/b0/o/a;

    .line 7
    invoke-static {p1}, Le/a/l4/k;->I(Le/a/b0/o/a;)Ljava/lang/String;

    move-result-object v7

    .line 8
    iget-object v6, p0, Le/a/l/n1;->m:Ljava/lang/String;

    const-string v5, "Unable to purchase Truecaller Professional"

    .line 9
    iget-object v4, p0, Le/a/l/n1;->n:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Le/a/l/n1;->l:Le/a/l/o1;

    .line 11
    iget-object p1, p1, Le/a/l/o1;->a:Le/a/l/a/z;

    .line 12
    invoke-virtual {p1}, Le/a/l/a/z;->h()Ljava/lang/String;

    move-result-object v1

    .line 13
    iget-object p1, p0, Le/a/l/n1;->l:Le/a/l/o1;

    .line 14
    iget-object p1, p1, Le/a/l/o1;->a:Le/a/l/a/z;

    .line 15
    iput-object v8, p0, Le/a/l/n1;->e:Ljava/lang/Object;

    iput-object v7, p0, Le/a/l/n1;->f:Ljava/lang/Object;

    iput-object v6, p0, Le/a/l/n1;->g:Ljava/lang/Object;

    iput-object v5, p0, Le/a/l/n1;->h:Ljava/lang/Object;

    iput-object v4, p0, Le/a/l/n1;->i:Ljava/lang/Object;

    iput-object v1, p0, Le/a/l/n1;->j:Ljava/lang/Object;

    iput v3, p0, Le/a/l/n1;->k:I

    invoke-virtual {p1, p0}, Le/a/l/a/z;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    move-object v9, v1

    move-object v12, v8

    move-object v8, v4

    move-object v4, v12

    move-object v13, v7

    move-object v7, v5

    move-object v5, v13

    move-object v10, p1

    check-cast v10, Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/l/n1;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/l/n1;->f:Ljava/lang/Object;

    iput-object p1, p0, Le/a/l/n1;->g:Ljava/lang/Object;

    iput-object p1, p0, Le/a/l/n1;->h:Ljava/lang/Object;

    iput-object p1, p0, Le/a/l/n1;->i:Ljava/lang/Object;

    iput-object p1, p0, Le/a/l/n1;->j:Ljava/lang/Object;

    iput v2, p0, Le/a/l/n1;->k:I

    move-object v11, p0

    .line 16
    invoke-interface/range {v4 .. v11}, Le/a/v3/c/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 17
    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_5

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x0

    .line 19
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
