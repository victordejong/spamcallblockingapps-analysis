.class public final Le/a/h/c/a$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/c/a;->onActivityResult(IILandroid/content/Intent;)V
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
    c = "com.truecaller.calling.speeddial.SpeedDialOptionsDialog$onActivityResult$1"
    f = "SpeedDialOptionsDialog.kt"
    l = {
        0x55
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/h/c/a;

.field public final synthetic g:Landroid/content/Intent;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Le/a/h/c/a;Landroid/content/Intent;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/c/a$b;->f:Le/a/h/c/a;

    iput-object p2, p0, Le/a/h/c/a$b;->g:Landroid/content/Intent;

    iput p3, p0, Le/a/h/c/a$b;->h:I

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

    new-instance p1, Le/a/h/c/a$b;

    iget-object v0, p0, Le/a/h/c/a$b;->f:Le/a/h/c/a;

    iget-object v1, p0, Le/a/h/c/a$b;->g:Landroid/content/Intent;

    iget v2, p0, Le/a/h/c/a$b;->h:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/h/c/a$b;-><init>(Le/a/h/c/a;Landroid/content/Intent;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/c/a$b;

    iget-object v0, p0, Le/a/h/c/a$b;->f:Le/a/h/c/a;

    iget-object v1, p0, Le/a/h/c/a$b;->g:Landroid/content/Intent;

    iget v2, p0, Le/a/h/c/a$b;->h:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/h/c/a$b;-><init>(Le/a/h/c/a;Landroid/content/Intent;ILs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/c/a$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/c/a$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    iget-object p1, p0, Le/a/h/c/a$b;->g:Landroid/content/Intent;

    iget v1, p0, Le/a/h/c/a$b;->h:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_5

    .line 7
    iget-object v1, p0, Le/a/h/c/a$b;->f:Le/a/h/c/a;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput v2, p0, Le/a/h/c/a$b;->e:I

    .line 8
    iget-object v1, v1, Le/a/h/c/a;->f:Ls1/w/f;

    new-instance v2, Le/a/h/c/q;

    invoke-direct {v2, p1, v3}, Le/a/h/c/q;-><init>(Landroid/net/Uri;Ls1/w/d;)V

    invoke-static {v1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 9
    :cond_4
    :goto_2
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 10
    iget-object v0, p0, Le/a/h/c/a$b;->f:Le/a/h/c/a;

    .line 11
    sget v1, Le/a/h/c/a;->h:I

    .line 12
    invoke-virtual {v0, p1}, Le/a/h/c/a;->RA(Ljava/lang/String;)V

    .line 13
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
