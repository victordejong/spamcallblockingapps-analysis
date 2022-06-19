.class public final Le/a/e/b/b/f$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/b/f;->Q8()V
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
    c = "com.truecaller.ui.settings.dataStorage.DataStorageSettingsPresenter$loadLanguages$1"
    f = "DataStorageSettingsPresenter.kt"
    l = {
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/e/b/b/f;


# direct methods
.method public constructor <init>(Le/a/e/b/b/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/b/f$a;->g:Le/a/e/b/b/f;

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

    new-instance p1, Le/a/e/b/b/f$a;

    iget-object v0, p0, Le/a/e/b/b/f$a;->g:Le/a/e/b/b/f;

    invoke-direct {p1, v0, p2}, Le/a/e/b/b/f$a;-><init>(Le/a/e/b/b/f;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e/b/b/f$a;

    iget-object v0, p0, Le/a/e/b/b/f$a;->g:Le/a/e/b/b/f;

    invoke-direct {p1, v0, p2}, Le/a/e/b/b/f$a;-><init>(Le/a/e/b/b/f;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e/b/b/f$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/e/b/b/f$a;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/e/b/b/f$a;->e:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/b/f;

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
    iget-object p1, p0, Le/a/e/b/b/f$a;->g:Le/a/e/b/b/f;

    .line 5
    iget-object v1, p1, Le/a/e/b/b/f;->h:Ls1/w/f;

    .line 6
    new-instance v3, Le/a/e/b/b/f$a$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Le/a/e/b/b/f$a$a;-><init>(Le/a/e/b/b/f$a;Ls1/w/d;)V

    iput-object p1, p0, Le/a/e/b/b/f$a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/e/b/b/f$a;->f:I

    invoke-static {v1, v3, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/util/List;

    .line 7
    iput-object p1, v0, Le/a/e/b/b/f;->d:Ljava/util/List;

    .line 8
    iget-object p1, p0, Le/a/e/b/b/f$a;->g:Le/a/e/b/b/f;

    .line 9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/b/d;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Le/a/e/b/b/d;->A9()V

    .line 11
    :cond_3
    iget-object p1, p0, Le/a/e/b/b/f$a;->g:Le/a/e/b/b/f;

    .line 12
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/b/d;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p1}, Le/a/e/b/b/f;->Ij()Ljava/util/List;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-interface {v0, p1}, Le/a/e/b/b/d;->ks(Z)V

    .line 15
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
