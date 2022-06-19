.class public final Le/a/e/b/j/k;
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
    c = "com.truecaller.ui.settings.callerid.CallerIdSettingsPresenter$onPBContactsEnabledChanged$1"
    f = "CallerIdSettingsPresenter.kt"
    l = {
        0x75
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/e/b/j/l;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Le/a/e/b/j/l;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/j/k;->f:Le/a/e/b/j/l;

    iput-boolean p2, p0, Le/a/e/b/j/k;->g:Z

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

    new-instance p1, Le/a/e/b/j/k;

    iget-object v0, p0, Le/a/e/b/j/k;->f:Le/a/e/b/j/l;

    iget-boolean v1, p0, Le/a/e/b/j/k;->g:Z

    invoke-direct {p1, v0, v1, p2}, Le/a/e/b/j/k;-><init>(Le/a/e/b/j/l;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e/b/j/k;

    iget-object v0, p0, Le/a/e/b/j/k;->f:Le/a/e/b/j/l;

    iget-boolean v1, p0, Le/a/e/b/j/k;->g:Z

    invoke-direct {p1, v0, v1, p2}, Le/a/e/b/j/k;-><init>(Le/a/e/b/j/l;ZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e/b/j/k;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/e/b/j/k;->e:I

    const-string v2, "enabledCallerIDforPB"

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
    iget-boolean p1, p0, Le/a/e/b/j/k;->g:Z

    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Le/a/e/b/j/k;->f:Le/a/e/b/j/l;

    .line 6
    iget-object p1, p1, Le/a/e/b/j/l;->h:Le/a/p5/a0;

    const-string v1, "android.permission.READ_CONTACTS"

    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Le/a/e/b/j/k;->f:Le/a/e/b/j/l;

    .line 9
    iget-object p1, p1, Le/a/e/b/j/l;->f:Lcom/truecaller/settings/CallingSettings;

    .line 10
    invoke-interface {p1, v2, v3}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Le/a/e/b/j/k;->f:Le/a/e/b/j/l;

    .line 12
    iget-object p1, p1, Le/a/e/b/j/l;->i:Le/a/h5/y;

    .line 13
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput v3, p0, Le/a/e/b/j/k;->e:I

    invoke-interface {p1, v1, p0}, Le/a/h5/y;->f([Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Le/a/h5/l;

    .line 14
    iget-boolean p1, p1, Le/a/h5/l;->a:Z

    .line 15
    iget-object v0, p0, Le/a/e/b/j/k;->f:Le/a/e/b/j/l;

    .line 16
    iget-object v0, v0, Le/a/e/b/j/l;->f:Lcom/truecaller/settings/CallingSettings;

    .line 17
    invoke-interface {v0, v2, p1}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 18
    :cond_4
    iget-object p1, p0, Le/a/e/b/j/k;->f:Le/a/e/b/j/l;

    .line 19
    iget-object p1, p1, Le/a/e/b/j/l;->f:Lcom/truecaller/settings/CallingSettings;

    const/4 v0, 0x0

    .line 20
    invoke-interface {p1, v2, v0}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    :goto_1
    iget-object p1, p0, Le/a/e/b/j/k;->f:Le/a/e/b/j/l;

    .line 22
    invoke-virtual {p1}, Le/a/e/b/j/l;->z5()V

    .line 23
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
