.class public final Le/a/e/b/c/f$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/c/f;->Jj(Le/a/o5/n1$a;IIILs1/z/b/l;)V
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
    c = "com.truecaller.ui.settings.sound.SoundSettingsPresenter$requestToShowSoundPicker$1"
    f = "SoundSettingsPresenter.kt"
    l = {
        0xf9,
        0xfc,
        0x102
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/e/b/c/f;

.field public final synthetic g:Le/a/o5/n1$a;

.field public final synthetic h:Ls1/z/b/l;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public constructor <init>(Le/a/e/b/c/f;Le/a/o5/n1$a;Ls1/z/b/l;IILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/c/f$e;->f:Le/a/e/b/c/f;

    iput-object p2, p0, Le/a/e/b/c/f$e;->g:Le/a/o5/n1$a;

    iput-object p3, p0, Le/a/e/b/c/f$e;->h:Ls1/z/b/l;

    iput p4, p0, Le/a/e/b/c/f$e;->i:I

    iput p5, p0, Le/a/e/b/c/f$e;->j:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/e/b/c/f$e;

    iget-object v1, p0, Le/a/e/b/c/f$e;->f:Le/a/e/b/c/f;

    iget-object v2, p0, Le/a/e/b/c/f$e;->g:Le/a/o5/n1$a;

    iget-object v3, p0, Le/a/e/b/c/f$e;->h:Ls1/z/b/l;

    iget v4, p0, Le/a/e/b/c/f$e;->i:I

    iget v5, p0, Le/a/e/b/c/f$e;->j:I

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/e/b/c/f$e;-><init>(Le/a/e/b/c/f;Le/a/o5/n1$a;Ls1/z/b/l;IILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/e/b/c/f$e;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/e/b/c/f$e;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e/b/c/f$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/e/b/c/f$e;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

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
    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p1, p0, Le/a/e/b/c/f$e;->f:Le/a/e/b/c/f;

    .line 5
    iget-object p1, p1, Le/a/e/b/c/f;->i:Le/a/e/b/c/c;

    .line 6
    iget-object v1, p0, Le/a/e/b/c/f$e;->g:Le/a/o5/n1$a;

    iput v5, p0, Le/a/e/b/c/f$e;->e:I

    .line 7
    sget-object v5, Le/a/o5/n1;->a:Le/a/o5/n1;

    iget-object p1, p1, Le/a/e/b/c/c;->a:Landroid/content/Context;

    invoke-virtual {v5, p1, v1, p0}, Le/a/o5/n1;->a(Landroid/content/Context;Le/a/o5/n1$a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 8
    :cond_4
    :goto_0
    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_6

    .line 9
    iget-object v1, p0, Le/a/e/b/c/f$e;->h:Ls1/z/b/l;

    invoke-interface {v1, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 10
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    iget-object v5, p0, Le/a/e/b/c/f$e;->f:Le/a/e/b/c/f;

    .line 11
    iget-object v5, v5, Le/a/e/b/c/f;->i:Le/a/e/b/c/c;

    .line 12
    iget-object v6, p0, Le/a/e/b/c/f$e;->g:Le/a/o5/n1$a;

    iget v7, p0, Le/a/e/b/c/f$e;->i:I

    invoke-virtual {v5, p1, v6, v7}, Le/a/e/b/c/c;->a(Landroid/net/Uri;Le/a/o5/n1$a;I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Le/a/e/b/c/f$e;->f:Le/a/e/b/c/f;

    .line 14
    iget-object p1, p1, Le/a/e/b/c/f;->e:Ls1/w/f;

    .line 15
    new-instance v5, Le/a/e/b/c/f$e$b;

    invoke-direct {v5, v1, v2, p0}, Le/a/e/b/c/f$e$b;-><init>(Ls1/z/c/c0;Ls1/w/d;Le/a/e/b/c/f$e;)V

    iput v4, p0, Le/a/e/b/c/f$e;->e:I

    invoke-static {p1, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Ls1/s;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 17
    iget-object p1, p0, Le/a/e/b/c/f$e;->f:Le/a/e/b/c/f;

    .line 18
    iget-object p1, p1, Le/a/e/b/c/f;->e:Ls1/w/f;

    .line 19
    new-instance v1, Le/a/e/b/c/f$e$a;

    invoke-direct {v1, p0, v2}, Le/a/e/b/c/f$e$a;-><init>(Le/a/e/b/c/f$e;Ls1/w/d;)V

    iput v3, p0, Le/a/e/b/c/f$e;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 20
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
