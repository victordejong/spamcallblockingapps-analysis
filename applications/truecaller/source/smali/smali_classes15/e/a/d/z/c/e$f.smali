.class public final Le/a/d/z/c/e$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/z/c/e;->Oj(Le/a/d/w/b;)Lq3/a/p1;
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
    c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$updateNotification$1"
    f = "InvitationServicePresenter.kt"
    l = {
        0xc4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/z/c/e;

.field public final synthetic g:Le/a/d/w/b;


# direct methods
.method public constructor <init>(Le/a/d/z/c/e;Le/a/d/w/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/z/c/e$f;->f:Le/a/d/z/c/e;

    iput-object p2, p0, Le/a/d/z/c/e$f;->g:Le/a/d/w/b;

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

    new-instance p1, Le/a/d/z/c/e$f;

    iget-object v0, p0, Le/a/d/z/c/e$f;->f:Le/a/d/z/c/e;

    iget-object v1, p0, Le/a/d/z/c/e$f;->g:Le/a/d/w/b;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/z/c/e$f;-><init>(Le/a/d/z/c/e;Le/a/d/w/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/z/c/e$f;

    iget-object v0, p0, Le/a/d/z/c/e$f;->f:Le/a/d/z/c/e;

    iget-object v1, p0, Le/a/d/z/c/e$f;->g:Le/a/d/w/b;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/z/c/e$f;-><init>(Le/a/d/z/c/e;Le/a/d/w/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/z/c/e$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/z/c/e$f;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

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
    iget-object p1, p0, Le/a/d/z/c/e$f;->g:Le/a/d/w/b;

    invoke-interface {p1}, Le/a/d/w/b;->getState()Lq3/a/x2/i1;

    move-result-object p1

    new-instance v1, Le/a/d/z/c/e$f$a;

    invoke-direct {v1, v2}, Le/a/d/z/c/e$f$a;-><init>(Ls1/w/d;)V

    iput v3, p0, Le/a/d/z/c/e$f;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->N0(Lq3/a/x2/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object v3, p0, Le/a/d/z/c/e$f;->f:Le/a/d/z/c/e;

    iget-object p1, p0, Le/a/d/z/c/e$f;->g:Le/a/d/w/b;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v6, Le/a/d/z/c/i;

    invoke-direct {v6, v3, p1, v2}, Le/a/d/z/c/i;-><init>(Le/a/d/z/c/e;Le/a/d/w/b;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
