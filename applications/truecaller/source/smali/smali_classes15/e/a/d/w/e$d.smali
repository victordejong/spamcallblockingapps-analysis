.class public final Le/a/d/w/e$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/w/e;->d(Ljava/lang/String;Ljava/lang/String;)Lq3/a/n0;
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
        "Le/a/d/w/b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.invitation.InvitationManagerImpl$initiateInvitation$1"
    f = "InvitationManager.kt"
    l = {
        0xe3,
        0x54
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/d/w/e;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/w/e;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/w/e$d;->i:Le/a/d/w/e;

    iput-object p2, p0, Le/a/d/w/e$d;->j:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/w/e$d;->k:Ljava/lang/String;

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

    new-instance p1, Le/a/d/w/e$d;

    iget-object v0, p0, Le/a/d/w/e$d;->i:Le/a/d/w/e;

    iget-object v1, p0, Le/a/d/w/e$d;->j:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/w/e$d;->k:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/w/e$d;-><init>(Le/a/d/w/e;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/w/e$d;

    iget-object v0, p0, Le/a/d/w/e$d;->i:Le/a/d/w/e;

    iget-object v1, p0, Le/a/d/w/e$d;->j:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/w/e$d;->k:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/w/e$d;-><init>(Le/a/d/w/e;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/w/e$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Le/a/d/w/g$b;->a:Le/a/d/w/g$b;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/w/e$d;->h:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/d/w/e$d;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/z1/i;

    iget-object v2, p0, Le/a/d/w/e$d;->f:Ljava/lang/Object;

    check-cast v2, Le/a/d/c0/d0;

    iget-object v3, p0, Le/a/d/w/e$d;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Le/a/d/w/e$d;->f:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v6, p0, Le/a/d/w/e$d;->e:Ljava/lang/Object;

    check-cast v6, Le/a/d/c0/r;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/w/e$d;->i:Le/a/d/w/e;

    .line 5
    iget-object v6, p1, Le/a/d/w/e;->b:Le/a/d/w/e$a;

    .line 6
    iget-object p1, v6, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 7
    iput-object v6, p0, Le/a/d/w/e$d;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/d/w/e$d;->f:Ljava/lang/Object;

    iput v4, p0, Le/a/d/w/e$d;->h:I

    invoke-interface {p1, v5, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object v2

    .line 9
    iget-object v6, p0, Le/a/d/w/e$d;->i:Le/a/d/w/e;

    .line 10
    iget-object v6, v6, Le/a/d/w/e;->b:Le/a/d/w/e$a;

    .line 11
    invoke-virtual {v6}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/d/w/g;

    invoke-static {v6, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    xor-int/2addr v4, v6

    if-eqz v4, :cond_4

    .line 12
    invoke-interface {p1, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v5

    .line 13
    :cond_4
    :try_start_2
    iget-object v4, p0, Le/a/d/w/e$d;->i:Le/a/d/w/e;

    .line 14
    iget-object v4, v4, Le/a/d/w/e;->f:Le/a/d/c0/z1/j;

    .line 15
    invoke-virtual {v4}, Le/a/d/c0/z1/j;->a()Le/a/d/c0/z1/i;

    move-result-object v4

    .line 16
    iget-object v6, p0, Le/a/d/w/e$d;->j:Ljava/lang/String;

    iget-object v7, p0, Le/a/d/w/e$d;->k:Ljava/lang/String;

    iput-object p1, p0, Le/a/d/w/e$d;->e:Ljava/lang/Object;

    iput-object v2, p0, Le/a/d/w/e$d;->f:Ljava/lang/Object;

    iput-object v4, p0, Le/a/d/w/e$d;->g:Ljava/lang/Object;

    iput v3, p0, Le/a/d/w/e$d;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v4

    check-cast v3, Le/a/d/c0/z1/k;

    :try_start_3
    invoke-virtual {v3, v6, v7, p0}, Le/a/d/c0/z1/k;->w(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, v4

    move-object v8, v3

    move-object v3, p1

    move-object p1, v8

    :goto_1
    :try_start_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    .line 17
    invoke-interface {v2, v0}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    invoke-interface {v3, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v5

    .line 19
    :cond_6
    :try_start_5
    iget-object p1, p0, Le/a/d/w/e$d;->i:Le/a/d/w/e;

    .line 20
    iget-object p1, p1, Le/a/d/w/e;->d:Le/a/d/u/g;

    .line 21
    check-cast p1, Le/a/r1$m;

    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iput-object v1, p1, Le/a/r1$m;->b:Le/a/d/c0/z1/i;

    .line 25
    iget-object v0, p0, Le/a/d/w/e$d;->k:Ljava/lang/String;

    .line 26
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iput-object v0, p1, Le/a/r1$m;->c:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Le/a/r1$m;->b:Le/a/d/c0/z1/i;

    const-class v4, Le/a/d/c0/z1/i;

    invoke-static {v0, v4}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 29
    iget-object v0, p1, Le/a/r1$m;->c:Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    invoke-static {v0, v4}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 30
    new-instance v0, Le/a/r1$n;

    iget-object v4, p1, Le/a/r1$m;->a:Le/a/r1;

    iget-object v6, p1, Le/a/r1$m;->b:Le/a/d/c0/z1/i;

    iget-object p1, p1, Le/a/r1$m;->c:Ljava/lang/String;

    invoke-direct {v0, v4, v6, p1, v5}, Le/a/r1$n;-><init>(Le/a/r1;Le/a/d/c0/z1/i;Ljava/lang/String;Le/a/h1;)V

    .line 31
    iget-object p1, v0, Le/a/r1$n;->G:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/w/b;

    .line 32
    invoke-interface {p1}, Le/a/d/w/j/g;->c()Lq3/a/p1;

    .line 33
    iget-object v0, p0, Le/a/d/w/e$d;->i:Le/a/d/w/e;

    invoke-static {v0, p1}, Le/a/d/w/e;->h(Le/a/d/w/e;Le/a/d/w/b;)Lq3/a/p1;

    .line 34
    new-instance v0, Le/a/d/w/g$a;

    invoke-direct {v0, p1, v1}, Le/a/d/w/g$a;-><init>(Le/a/d/w/b;Le/a/d/c0/z1/d;)V

    invoke-interface {v2, v0}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Le/a/d/w/e$d;->i:Le/a/d/w/e;

    .line 36
    iget-object v0, v0, Le/a/d/w/e;->l:Lo3/a;

    .line 37
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/c0/m1;

    invoke-interface {v0}, Le/a/d/c0/m1;->b()Z

    .line 38
    iget-object v0, p0, Le/a/d/w/e$d;->i:Le/a/d/w/e;

    .line 39
    iget-object v0, v0, Le/a/d/w/e;->m:Le/a/d/c/a/f;

    .line 40
    invoke-interface {v0, v1}, Le/a/d/c/a/f;->a(Le/a/d/c0/z1/i;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 41
    invoke-interface {v3, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :goto_2
    move-object v0, p1

    move-object p1, v3

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    invoke-interface {p1, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0
.end method
