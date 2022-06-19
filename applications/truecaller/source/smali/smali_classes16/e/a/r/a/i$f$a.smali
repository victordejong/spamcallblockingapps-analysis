.class public final Le/a/r/a/i$f$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a/i$f;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.wizard.backup.WizardRestoreBackupPresenter$onRestoreClicked$1$1"
    f = "WizardRestoreBackupPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/r/a/i$f;


# direct methods
.method public constructor <init>(Le/a/r/a/i$f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a/i$f$a;->e:Le/a/r/a/i$f;

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

    new-instance p1, Le/a/r/a/i$f$a;

    iget-object v0, p0, Le/a/r/a/i$f$a;->e:Le/a/r/a/i$f;

    invoke-direct {p1, v0, p2}, Le/a/r/a/i$f$a;-><init>(Le/a/r/a/i$f;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/r/a/i$f$a;->e:Le/a/r/a/i$f;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p2, v0, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    .line 4
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/r/a/h;

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2}, Le/a/r/a/h;->p()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/r/a/i$f$a;->e:Le/a/r/a/i$f;

    iget-object p1, p1, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a/h;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/r/a/h;->p()V

    sget-object p1, Ls1/s;->a:Ls1/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
