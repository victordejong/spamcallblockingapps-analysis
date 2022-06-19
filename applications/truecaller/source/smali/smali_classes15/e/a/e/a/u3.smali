.class public final Le/a/e/a/u3;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ui.dialogs.QaMockImDialog$addMessages$1"
    f = "QaMockImDialog.kt"
    l = {
        0x7b,
        0x7d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/e/a/y3;

.field public final synthetic h:Z

.field public final synthetic i:I

.field public final synthetic j:Landroid/app/ProgressDialog;

.field public final synthetic k:I


# direct methods
.method public constructor <init>(Le/a/e/a/y3;ZILandroid/app/ProgressDialog;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/u3;->g:Le/a/e/a/y3;

    iput-boolean p2, p0, Le/a/e/a/u3;->h:Z

    iput p3, p0, Le/a/e/a/u3;->i:I

    iput-object p4, p0, Le/a/e/a/u3;->j:Landroid/app/ProgressDialog;

    iput p5, p0, Le/a/e/a/u3;->k:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
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

    new-instance v0, Le/a/e/a/u3;

    iget-object v2, p0, Le/a/e/a/u3;->g:Le/a/e/a/y3;

    iget-boolean v3, p0, Le/a/e/a/u3;->h:Z

    iget v4, p0, Le/a/e/a/u3;->i:I

    iget-object v5, p0, Le/a/e/a/u3;->j:Landroid/app/ProgressDialog;

    iget v6, p0, Le/a/e/a/u3;->k:I

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Le/a/e/a/u3;-><init>(Le/a/e/a/y3;ZILandroid/app/ProgressDialog;ILs1/w/d;)V

    iput-object p1, v0, Le/a/e/a/u3;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/e/a/u3;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/e/a/u3;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e/a/u3;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/e/a/u3;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Le/a/e/a/u3;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

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
    iget-object v0, p0, Le/a/e/a/u3;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/e/a/u3;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-boolean v1, p0, Le/a/e/a/u3;->h:Z

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p0, Le/a/e/a/u3;->g:Le/a/e/a/y3;

    iget v3, p0, Le/a/e/a/u3;->i:I

    iget-object v5, p0, Le/a/e/a/u3;->j:Landroid/app/ProgressDialog;

    iput-object p1, p0, Le/a/e/a/u3;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/e/a/u3;->f:I

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v4, Lq3/a/t0;->d:Lq3/a/g0;

    .line 8
    new-instance v6, Le/a/e/a/v3;

    invoke-direct {v6, v1, v3, v5, v2}, Le/a/e/a/v3;-><init>(Le/a/e/a/y3;ILandroid/app/ProgressDialog;Ls1/w/d;)V

    invoke-static {v4, v6, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    move-object p1, v1

    .line 9
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :goto_1
    move-object v3, v0

    goto :goto_3

    .line 10
    :cond_4
    iget-object v4, p0, Le/a/e/a/u3;->g:Le/a/e/a/y3;

    iget v5, p0, Le/a/e/a/u3;->k:I

    iget v6, p0, Le/a/e/a/u3;->i:I

    iget-object v7, p0, Le/a/e/a/u3;->j:Landroid/app/ProgressDialog;

    iput-object p1, p0, Le/a/e/a/u3;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/e/a/u3;->f:I

    .line 11
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lq3/a/t0;->d:Lq3/a/g0;

    .line 13
    new-instance v9, Le/a/e/a/w3;

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Le/a/e/a/w3;-><init>(Le/a/e/a/y3;IILandroid/app/ProgressDialog;Ls1/w/d;)V

    invoke-static {v1, v9, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    move-object p1, v1

    .line 14
    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_1

    .line 15
    :goto_3
    iget-object v0, p0, Le/a/e/a/u3;->g:Le/a/e/a/y3;

    invoke-static {v0}, Le/a/e/a/y3;->PA(Le/a/e/a/y3;)Ls1/w/f;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Le/a/e/a/u3$a;

    invoke-direct {v6, p0, p1, v2}, Le/a/e/a/u3$a;-><init>(Le/a/e/a/u3;ILs1/w/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 16
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
