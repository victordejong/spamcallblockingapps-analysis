.class public final Le/a/g0/e$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g0/e;->d()Lq3/a/x2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/x2/g<",
        "-",
        "Le/a/g0/c;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.suspension.SuspensionMangerImpl$sendFeedbackReport$1"
    f = "SuspensionManager.kt"
    l = {
        0xc3,
        0xd0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/g0/e;


# direct methods
.method public constructor <init>(Le/a/g0/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g0/e$e;->h:Le/a/g0/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/g0/e$e;

    iget-object v1, p0, Le/a/g0/e$e;->h:Le/a/g0/e;

    invoke-direct {v0, v1, p2}, Le/a/g0/e$e;-><init>(Le/a/g0/e;Ls1/w/d;)V

    iput-object p1, v0, Le/a/g0/e$e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/g0/e$e;

    iget-object v1, p0, Le/a/g0/e$e;->h:Le/a/g0/e;

    invoke-direct {v0, v1, p2}, Le/a/g0/e$e;-><init>(Le/a/g0/e;Ls1/w/d;)V

    iput-object p1, v0, Le/a/g0/e$e;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/g0/e$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g0/e$e;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/g0/e$e;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Le/a/g0/e$e;->e:Ljava/lang/Object;

    check-cast v4, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/g0/e$e;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    .line 4
    iget-object v1, p0, Le/a/g0/e$e;->h:Le/a/g0/e;

    .line 5
    iget-object v1, v1, Le/a/g0/e;->k:Le/a/g0/j/j;

    .line 6
    invoke-interface {v1}, Le/a/g0/j/j;->i()V

    .line 7
    iget-object v1, p0, Le/a/g0/e$e;->h:Le/a/g0/e;

    .line 8
    invoke-virtual {v1}, Le/a/g0/e;->n()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 9
    iget-object v1, p0, Le/a/g0/e$e;->h:Le/a/g0/e;

    .line 10
    iget-object v1, v1, Le/a/g0/e;->k:Le/a/g0/j/j;

    .line 11
    sget-object v4, Le/a/g0/j/j$a$b;->a:Le/a/g0/j/j$a$b;

    invoke-interface {v1, v4}, Le/a/g0/j/j;->h(Le/a/g0/j/j$a;)V

    goto :goto_4

    .line 12
    :cond_3
    sget-object v5, Le/a/g0/c$a;->a:Le/a/g0/c$a;

    iput-object p1, p0, Le/a/g0/e$e;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/g0/e$e;->f:Ljava/lang/Object;

    iput v4, p0, Le/a/g0/e$e;->g:I

    invoke-interface {p1, v5, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    return-object v0

    :cond_4
    move-object v4, p1

    .line 13
    :goto_0
    :try_start_0
    iget-object p1, p0, Le/a/g0/e$e;->h:Le/a/g0/e;

    .line 14
    iget-object v5, p1, Le/a/g0/e;->f:Le/a/g0/l/a;

    .line 15
    iget-object v6, p1, Le/a/g0/e;->b:Ljava/lang/String;

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    const-string v6, ""

    .line 16
    :goto_1
    iget-object p1, p1, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v7, "iid-02"

    invoke-interface {p1, v7}, Le/a/g0/n/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    check-cast v5, Le/a/g0/l/b;

    :try_start_1
    invoke-virtual {v5, v6, v1, p1}, Le/a/g0/l/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/g0/l/a$a;

    move-result-object p1

    .line 18
    iget-object v1, p0, Le/a/g0/e$e;->h:Le/a/g0/e;

    .line 19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-boolean v5, p1, Le/a/g0/l/a$a;->a:Z

    if-eqz v5, :cond_6

    .line 21
    iget-object v1, v1, Le/a/g0/e;->k:Le/a/g0/j/j;

    invoke-interface {v1}, Le/a/g0/j/j;->c()V

    goto :goto_2

    .line 22
    :cond_6
    iget-object v1, v1, Le/a/g0/e;->k:Le/a/g0/j/j;

    new-instance v5, Le/a/g0/j/j$a$c;

    .line 23
    iget-object v6, p1, Le/a/g0/l/a$a;->b:Ljava/lang/Integer;

    .line 24
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Le/a/g0/j/j$a$c;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Le/a/g0/j/j;->h(Le/a/g0/j/j$a;)V

    .line 25
    :goto_2
    iget-boolean p1, p1, Le/a/g0/l/a$a;->a:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 27
    iget-object p1, p0, Le/a/g0/e$e;->h:Le/a/g0/e;

    .line 28
    iget-object p1, p1, Le/a/g0/e;->k:Le/a/g0/j/j;

    .line 29
    sget-object v1, Le/a/g0/j/j$a$a;->a:Le/a/g0/j/j$a$a;

    invoke-interface {p1, v1}, Le/a/g0/j/j;->h(Le/a/g0/j/j$a;)V

    :goto_3
    move-object p1, v4

    .line 30
    :goto_4
    iget-object v1, p0, Le/a/g0/e$e;->h:Le/a/g0/e;

    .line 31
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_7

    .line 32
    sget-object v4, Lcom/truecaller/suspension/FeedbackState;->RESULT_SUCCESS:Lcom/truecaller/suspension/FeedbackState;

    goto :goto_5

    :cond_7
    sget-object v4, Lcom/truecaller/suspension/FeedbackState;->RESULT_ERROR:Lcom/truecaller/suspension/FeedbackState;

    .line 33
    :goto_5
    iget-object v1, v1, Le/a/g0/e;->e:Le/a/g0/n/a;

    invoke-virtual {v4}, Lcom/truecaller/suspension/FeedbackState;->getValue()I

    move-result v4

    const-string v5, "usfs-03"

    invoke-interface {v1, v5, v4}, Le/a/g0/n/a;->putInt(Ljava/lang/String;I)V

    .line 34
    new-instance v1, Le/a/g0/c$b;

    invoke-direct {v1, v2}, Le/a/g0/c$b;-><init>(Z)V

    const/4 v2, 0x0

    iput-object v2, p0, Le/a/g0/e$e;->e:Ljava/lang/Object;

    iput-object v2, p0, Le/a/g0/e$e;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/g0/e$e;->g:I

    invoke-interface {p1, v1, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 35
    :cond_8
    :goto_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
