.class public final Le/a/e/b/c/f$e$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/c/f$e;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.ui.settings.sound.SoundSettingsPresenter$requestToShowSoundPicker$1$1$1"
    f = "SoundSettingsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ls1/z/c/c0;

.field public final synthetic f:Le/a/e/b/c/f$e;


# direct methods
.method public constructor <init>(Ls1/z/c/c0;Ls1/w/d;Le/a/e/b/c/f$e;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/c/f$e$b;->e:Ls1/z/c/c0;

    iput-object p3, p0, Le/a/e/b/c/f$e$b;->f:Le/a/e/b/c/f$e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/e/b/c/f$e$b;

    iget-object v0, p0, Le/a/e/b/c/f$e$b;->e:Ls1/z/c/c0;

    iget-object v1, p0, Le/a/e/b/c/f$e$b;->f:Le/a/e/b/c/f$e;

    invoke-direct {p1, v0, p2, v1}, Le/a/e/b/c/f$e$b;-><init>(Ls1/z/c/c0;Ls1/w/d;Le/a/e/b/c/f$e;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/e/b/c/f$e$b;->e:Ls1/z/c/c0;

    iget-object v1, p0, Le/a/e/b/c/f$e$b;->f:Le/a/e/b/c/f$e;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v1, Le/a/e/b/c/f$e;->f:Le/a/e/b/c/f;

    .line 5
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/e/b/c/e;

    if-eqz p2, :cond_0

    .line 6
    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget v1, v1, Le/a/e/b/c/f$e;->j:I

    invoke-interface {p2, v0, v1}, Le/a/e/b/c/e;->Xn(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/e/b/c/f$e$b;->f:Le/a/e/b/c/f$e;

    iget-object v0, p1, Le/a/e/b/c/f$e;->f:Le/a/e/b/c/f;

    .line 3
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/c/e;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Le/a/e/b/c/f$e$b;->e:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget p1, p1, Le/a/e/b/c/f$e;->j:I

    invoke-interface {v0, v1, p1}, Le/a/e/b/c/e;->Xn(Landroid/content/Intent;I)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
