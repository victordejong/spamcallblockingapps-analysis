.class public final Le/a/c5/a/e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c5/a/e;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Le/j/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.social_login.facebook.FacebookLoginPresenter$fetchProfile$1$response$1"
    f = "FacebookLoginPresenter.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c5/a/e;


# direct methods
.method public constructor <init>(Le/a/c5/a/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c5/a/e$a;->f:Le/a/c5/a/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/c5/a/e$a;

    iget-object v0, p0, Le/a/c5/a/e$a;->f:Le/a/c5/a/e;

    invoke-direct {p1, v0, p2}, Le/a/c5/a/e$a;-><init>(Le/a/c5/a/e;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c5/a/e$a;

    iget-object v0, p0, Le/a/c5/a/e$a;->f:Le/a/c5/a/e;

    invoke-direct {p1, v0, p2}, Le/a/c5/a/e$a;-><init>(Le/a/c5/a/e;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c5/a/e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c5/a/e$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Le/a/c5/a/e$a;->f:Le/a/c5/a/e;

    iget-object v1, p1, Le/a/c5/a/e;->f:Le/a/c5/a/f;

    .line 5
    iget-object v3, v1, Le/a/c5/a/f;->h:Le/a/c5/a/h;

    .line 6
    iget-object v5, p1, Le/a/c5/a/e;->g:Lcom/facebook/AccessToken;

    .line 7
    iget-object p1, v1, Le/a/c5/a/f;->e:Ljava/lang/String;

    .line 8
    iput v2, p0, Le/a/c5/a/e$a;->e:I

    check-cast v3, Le/a/c5/a/j;

    .line 9
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    iget-object v6, v3, Le/a/c5/a/j;->a:Ljava/lang/String;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v3, Le/a/c5/a/j;->b:Ljava/lang/String;

    invoke-virtual {v7, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Le/j/m0;->a:Le/j/m0;

    new-instance p1, Lcom/facebook/GraphRequest;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x30

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Le/j/m0;Lcom/facebook/GraphRequest$b;Ljava/lang/String;I)V

    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 10
    iget-object p1, v3, Le/a/c5/a/j;->c:Ls1/w/f;

    new-instance v2, Le/a/c5/a/i;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Le/a/c5/a/i;-><init>(Ls1/z/c/c0;Ls1/w/d;)V

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
