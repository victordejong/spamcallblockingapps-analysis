.class public final Le/a/d5/g/f;
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
    c = "com.truecaller.startup_dialogs.fragments.FillProfileNameDialog$updateProfile$1"
    f = "FillProfileNameDialog.kt"
    l = {
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d5/g/g;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Le/a/e/a/f3;


# direct methods
.method public constructor <init>(Le/a/d5/g/g;Ljava/lang/String;Ljava/lang/String;Le/a/e/a/f3;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d5/g/f;->f:Le/a/d5/g/g;

    iput-object p2, p0, Le/a/d5/g/f;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/d5/g/f;->h:Ljava/lang/String;

    iput-object p4, p0, Le/a/d5/g/f;->i:Le/a/e/a/f3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/d5/g/f;

    iget-object v1, p0, Le/a/d5/g/f;->f:Le/a/d5/g/g;

    iget-object v2, p0, Le/a/d5/g/f;->g:Ljava/lang/String;

    iget-object v3, p0, Le/a/d5/g/f;->h:Ljava/lang/String;

    iget-object v4, p0, Le/a/d5/g/f;->i:Le/a/e/a/f3;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/d5/g/f;-><init>(Le/a/d5/g/g;Ljava/lang/String;Ljava/lang/String;Le/a/e/a/f3;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d5/g/f;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d5/g/f;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d5/g/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d5/g/f;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

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
    :try_start_1
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const-string p1, "first_name"

    .line 5
    iget-object v1, p0, Le/a/d5/g/f;->g:Ljava/lang/String;

    invoke-interface {v7, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "last_name"

    .line 6
    iget-object v1, p0, Le/a/d5/g/f;->h:Ljava/lang/String;

    invoke-interface {v7, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Le/a/d5/g/f;->f:Le/a/d5/g/g;

    .line 8
    iget-object p1, p1, Le/a/d5/g/g;->c:Le/a/b0/n/g;

    if-eqz p1, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x17

    const/4 v11, 0x0

    .line 9
    iput v3, p0, Le/a/d5/g/f;->e:I

    move-object v3, p1

    move-object v9, p0

    invoke-static/range {v3 .. v11}, Le/a/n/g0;->q0(Le/a/b0/n/g;Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    :goto_0
    check-cast p1, Le/a/b0/n/h;

    .line 11
    iget-boolean v0, p1, Le/a/b0/n/h;->a:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object p1, p0, Le/a/d5/g/f;->f:Le/a/d5/g/g;

    invoke-virtual {p1}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Le/a/d5/g/f;->f:Le/a/d5/g/g;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Le/a/d5/g/f;->f:Le/a/d5/g/g;

    .line 14
    iget-object v1, v1, Le/a/d5/g/g;->d:Le/a/b0/n/b;

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v1, p1}, Le/a/b0/n/b;->a(Le/a/b0/n/h;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_1
    iget-object p1, p0, Le/a/d5/g/f;->i:Le/a/e/a/f3;

    invoke-virtual {p1}, Le/a/e/a/c2;->dismissAllowingStateLoss()V

    .line 17
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_4
    :try_start_2
    const-string p1, "profileErrorMessageHelper"

    .line 18
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_5
    :try_start_3
    const-string p1, "profileRepository"

    .line 19
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 20
    :goto_2
    iget-object v0, p0, Le/a/d5/g/f;->i:Le/a/e/a/f3;

    invoke-virtual {v0}, Le/a/e/a/c2;->dismissAllowingStateLoss()V

    throw p1
.end method
