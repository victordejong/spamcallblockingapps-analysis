.class public final Le/a/d/y/b/f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/d/l;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.notification.inapp.VoipInAppNotificationPresenter$onVoipServiceConnected$2"
    f = "VoipInAppNotificationPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d/y/b/h;


# direct methods
.method public constructor <init>(Le/a/d/y/b/h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/y/b/f;->f:Le/a/d/y/b/h;

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/y/b/f;

    iget-object v1, p0, Le/a/d/y/b/f;->f:Le/a/d/y/b/h;

    invoke-direct {v0, v1, p2}, Le/a/d/y/b/f;-><init>(Le/a/d/y/b/h;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/y/b/f;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/d/y/b/f;->f:Le/a/d/y/b/h;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Le/a/d/l;

    .line 4
    iget-object p1, p1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    .line 6
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/y/b/c;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Le/a/d/y/b/c;->F0()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v1}, Le/a/d/y/b/h;->Ij(Le/a/d/y/b/h;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/y/b/f;->e:Ljava/lang/Object;

    check-cast p1, Le/a/d/l;

    .line 2
    iget-object p1, p1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Le/a/d/y/b/f;->f:Le/a/d/y/b/h;

    .line 5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/y/b/c;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Le/a/d/y/b/c;->F0()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Le/a/d/y/b/f;->f:Le/a/d/y/b/h;

    invoke-static {p1}, Le/a/d/y/b/h;->Ij(Le/a/d/y/b/h;)V

    .line 8
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
