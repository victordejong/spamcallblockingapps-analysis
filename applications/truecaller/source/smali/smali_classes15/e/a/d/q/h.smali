.class public final Le/a/d/q/h;
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
    c = "com.truecaller.voip.callconnection.LegacyVoipCallConnection$listenServiceStates$1"
    f = "LegacyVoipCallConnection.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d/q/b;


# direct methods
.method public constructor <init>(Le/a/d/q/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/q/h;->f:Le/a/d/q/b;

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

    new-instance v0, Le/a/d/q/h;

    iget-object v1, p0, Le/a/d/q/h;->f:Le/a/d/q/b;

    invoke-direct {v0, v1, p2}, Le/a/d/q/h;-><init>(Le/a/d/q/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/q/h;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/d/q/h;->f:Le/a/d/q/b;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Le/a/d/l;

    const-string p2, "New state is received "

    .line 4
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 5
    iget-object v2, p1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 6
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7
    iget-object p2, p1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v2, 0x4

    if-eq p2, v2, :cond_3

    const/4 v2, 0x6

    if-eq p2, v2, :cond_1

    const/16 v2, 0x9

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Landroid/telecom/Connection;->setActive()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, v1, Le/a/d/q/b;->b:Le/a/d/q/b$a;

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p2, Le/a/d/q/b$a;->a:Z

    .line 12
    :cond_2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-class p2, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;

    .line 14
    new-instance v2, Le/a/d/q/e;

    invoke-direct {v2, v1}, Le/a/d/q/e;-><init>(Le/a/d/q/b;)V

    .line 15
    new-instance v3, Le/a/d/q/f;

    invoke-direct {v3, v1}, Le/a/d/q/f;-><init>(Le/a/d/q/b;)V

    .line 16
    invoke-virtual {v1, p2, v2, v3}, Le/a/d/q/b;->e(Ljava/lang/Class;Ls1/z/b/l;Ls1/z/b/a;)V

    goto :goto_0

    .line 17
    :cond_3
    iget-boolean p2, v1, Le/a/d/q/b;->j:Z

    if-nez p2, :cond_4

    .line 18
    invoke-virtual {v1}, Landroid/telecom/Connection;->setRinging()V

    .line 19
    :cond_4
    :goto_0
    iget-object p1, p1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 20
    sget-object p2, Lcom/truecaller/voip/VoipState;->ONGOING:Lcom/truecaller/voip/VoipState;

    if-ne p1, p2, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x2

    :goto_1
    invoke-virtual {v1, p1}, Landroid/telecom/Connection;->setConnectionCapabilities(I)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/q/h;->e:Ljava/lang/Object;

    check-cast p1, Le/a/d/l;

    const-string v0, "New state is received "

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v1, p1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    iget-object v0, p1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/a/d/q/h;->f:Le/a/d/q/b;

    invoke-virtual {v0}, Landroid/telecom/Connection;->setActive()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/d/q/h;->f:Le/a/d/q/b;

    .line 9
    iget-object v1, v0, Le/a/d/q/b;->b:Le/a/d/q/b$a;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 10
    iput-boolean v2, v1, Le/a/d/q/b$a;->a:Z

    .line 11
    :cond_2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v1, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;

    .line 13
    new-instance v2, Le/a/d/q/e;

    invoke-direct {v2, v0}, Le/a/d/q/e;-><init>(Le/a/d/q/b;)V

    .line 14
    new-instance v3, Le/a/d/q/f;

    invoke-direct {v3, v0}, Le/a/d/q/f;-><init>(Le/a/d/q/b;)V

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Le/a/d/q/b;->e(Ljava/lang/Class;Ls1/z/b/l;Ls1/z/b/a;)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Le/a/d/q/h;->f:Le/a/d/q/b;

    .line 17
    iget-boolean v1, v0, Le/a/d/q/b;->j:Z

    if-nez v1, :cond_4

    .line 18
    invoke-virtual {v0}, Landroid/telecom/Connection;->setRinging()V

    .line 19
    :cond_4
    :goto_0
    iget-object v0, p0, Le/a/d/q/h;->f:Le/a/d/q/b;

    .line 20
    iget-object p1, p1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 21
    sget-object v1, Lcom/truecaller/voip/VoipState;->ONGOING:Lcom/truecaller/voip/VoipState;

    if-ne p1, v1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x2

    :goto_1
    invoke-virtual {v0, p1}, Landroid/telecom/Connection;->setConnectionCapabilities(I)V

    .line 22
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
