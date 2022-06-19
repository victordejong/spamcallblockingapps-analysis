.class public final Le/a/l/e2$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/e2;->a()Landroidx/work/ListenableWorker$a;
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
    c = "com.truecaller.premium.PremiumStatusWorkAction$execute$2"
    f = "PremiumStatusWorkAction.kt"
    l = {
        0x2e,
        0x30,
        0x35,
        0x39
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/l/e2;

.field public final synthetic h:Ls1/z/c/y;


# direct methods
.method public constructor <init>(Le/a/l/e2;Ls1/z/c/y;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/e2$b;->g:Le/a/l/e2;

    iput-object p2, p0, Le/a/l/e2$b;->h:Ls1/z/c/y;

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

    new-instance p1, Le/a/l/e2$b;

    iget-object v0, p0, Le/a/l/e2$b;->g:Le/a/l/e2;

    iget-object v1, p0, Le/a/l/e2$b;->h:Ls1/z/c/y;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/e2$b;-><init>(Le/a/l/e2;Ls1/z/c/y;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/e2$b;

    iget-object v0, p0, Le/a/l/e2$b;->g:Le/a/l/e2;

    iget-object v1, p0, Le/a/l/e2$b;->h:Ls1/z/c/y;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/e2$b;-><init>(Le/a/l/e2;Ls1/z/c/y;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/e2$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/e2$b;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

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
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Le/a/l/e2$b;->e:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/y;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Le/a/l/e2$b;->h:Ls1/z/c/y;

    iget-boolean p1, v1, Ls1/z/c/y;->a:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Le/a/l/e2$b;->g:Le/a/l/e2;

    .line 5
    iget-object p1, p1, Le/a/l/e2;->f:Le/a/l/n2/e;

    .line 6
    iput-object v1, p0, Le/a/l/e2$b;->e:Ljava/lang/Object;

    iput v6, p0, Le/a/l/e2$b;->f:I

    invoke-interface {p1, p0}, Le/a/l/n2/e;->l(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move p1, v2

    goto :goto_2

    :cond_7
    :goto_1
    move p1, v6

    :goto_2
    iput-boolean p1, v1, Ls1/z/c/y;->a:Z

    .line 7
    iget-object p1, p0, Le/a/l/e2$b;->g:Le/a/l/e2;

    .line 8
    iget-object p1, p1, Le/a/l/e2;->e:Le/a/l/p2/k0;

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Le/a/l/e2$b;->e:Ljava/lang/Object;

    iput v5, p0, Le/a/l/e2$b;->f:I

    invoke-interface {p1, v6, v6, v6, p0}, Le/a/l/p2/k0;->b(ZZZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 10
    :cond_8
    :goto_3
    check-cast p1, Le/a/l/p2/k0$a;

    .line 11
    iget-object v1, p0, Le/a/l/e2$b;->h:Ls1/z/c/y;

    iget-boolean v5, v1, Ls1/z/c/y;->a:Z

    if-nez v5, :cond_9

    instance-of v5, p1, Le/a/l/p2/k0$a$b;

    if-nez v5, :cond_a

    :cond_9
    move v2, v6

    :cond_a
    iput-boolean v2, v1, Ls1/z/c/y;->a:Z

    .line 12
    instance-of v1, p1, Le/a/l/p2/k0$a$b;

    if-eqz v1, :cond_b

    .line 13
    iget-object v1, p0, Le/a/l/e2$b;->g:Le/a/l/e2;

    .line 14
    iget-object v1, v1, Le/a/l/e2;->f:Le/a/l/n2/e;

    .line 15
    check-cast p1, Le/a/l/p2/k0$a$b;

    .line 16
    iget-object p1, p1, Le/a/l/p2/k0$a$b;->a:Le/a/l/p2/l1;

    .line 17
    invoke-virtual {p1}, Le/a/l/p2/l1;->d()Le/a/l/p2/m1;

    move-result-object p1

    iput v4, p0, Le/a/l/e2$b;->f:I

    invoke-interface {v1, p1, p0}, Le/a/l/n2/e;->b(Le/a/l/p2/m1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 18
    :cond_b
    :goto_4
    iget-object p1, p0, Le/a/l/e2$b;->g:Le/a/l/e2;

    .line 19
    iget-object p1, p1, Le/a/l/e2;->g:Le/a/o5/x1;

    .line 20
    invoke-interface {p1}, Le/a/o5/x1;->a()Z

    move-result p1

    if-nez p1, :cond_c

    .line 21
    iget-object p1, p0, Le/a/l/e2$b;->g:Le/a/l/e2;

    .line 22
    iget-object p1, p1, Le/a/l/e2;->f:Le/a/l/n2/e;

    .line 23
    iput v3, p0, Le/a/l/e2$b;->f:I

    invoke-interface {p1, p0}, Le/a/l/n2/e;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    .line 24
    :cond_c
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
