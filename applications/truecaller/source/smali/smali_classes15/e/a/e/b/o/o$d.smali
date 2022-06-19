.class public final Le/a/e/b/o/o$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/o/o;->L8(Ljava/lang/String;)V
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
    c = "com.truecaller.ui.settings.privacy.PrivacySettingsPresenter$onWhoCanSeeProfileChanged$1"
    f = "PrivacySettingsPresenter.kt"
    l = {
        0x73
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/e/b/o/o;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/e/b/o/o;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/o/o$d;->f:Le/a/e/b/o/o;

    iput-object p2, p0, Le/a/e/b/o/o$d;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/e/b/o/o$d;

    iget-object v0, p0, Le/a/e/b/o/o$d;->f:Le/a/e/b/o/o;

    iget-object v1, p0, Le/a/e/b/o/o$d;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/e/b/o/o$d;-><init>(Le/a/e/b/o/o;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e/b/o/o$d;

    iget-object v0, p0, Le/a/e/b/o/o$d;->f:Le/a/e/b/o/o;

    iget-object v1, p0, Le/a/e/b/o/o$d;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/e/b/o/o$d;-><init>(Le/a/e/b/o/o;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e/b/o/o$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/e/b/o/o$d;->e:I

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
    iget-object p1, p0, Le/a/e/b/o/o$d;->f:Le/a/e/b/o/o;

    .line 5
    iget-object v3, p1, Le/a/e/b/o/o;->o:Le/a/b0/n/g;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6
    iget-object p1, p0, Le/a/e/b/o/o$d;->g:Ljava/lang/String;

    .line 7
    new-instance v1, Ls1/k;

    const-string v7, "auto_accept"

    invoke-direct {v1, v7, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-static {v1}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v10, 0x17

    const/4 v11, 0x0

    iput v2, p0, Le/a/e/b/o/o$d;->e:I

    move-object v9, p0

    invoke-static/range {v3 .. v11}, Le/a/n/g0;->q0(Le/a/b0/n/g;Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
