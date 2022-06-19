.class public final Le/a/d/q/q;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ls1/k<",
        "+",
        "Le/a/d/v/h;",
        "+",
        "Le/a/d/v/a;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.callconnection.VoipCallConnectionImpl$setStateFromGroupCall$2"
    f = "VoipCallConnection.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d/q/u;


# direct methods
.method public constructor <init>(Le/a/d/q/u;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/q/q;->f:Le/a/d/q/u;

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

    new-instance v0, Le/a/d/q/q;

    iget-object v1, p0, Le/a/d/q/q;->f:Le/a/d/q/u;

    invoke-direct {v0, v1, p2}, Le/a/d/q/q;-><init>(Le/a/d/q/u;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/q/q;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/d/q/q;->f:Le/a/d/q/u;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Ls1/k;

    .line 4
    iget-object p2, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast p2, Le/a/d/v/h;

    .line 6
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 7
    check-cast p1, Le/a/d/v/a;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Group call state or setting changed. State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", setting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    instance-of p2, p2, Le/a/d/v/h$c;

    if-eqz p2, :cond_1

    .line 10
    iget-boolean p1, p1, Le/a/d/v/a;->b:Z

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {v1}, Landroid/telecom/Connection;->setOnHold()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Landroid/telecom/Connection;->setActive()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/q/q;->e:Ljava/lang/Object;

    check-cast p1, Ls1/k;

    .line 2
    iget-object v0, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Le/a/d/v/h;

    .line 4
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 5
    check-cast p1, Le/a/d/v/a;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group call state or setting changed. State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7
    instance-of v0, v0, Le/a/d/v/h$c;

    if-eqz v0, :cond_1

    .line 8
    iget-boolean p1, p1, Le/a/d/v/a;->b:Z

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Le/a/d/q/q;->f:Le/a/d/q/u;

    invoke-virtual {p1}, Landroid/telecom/Connection;->setOnHold()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Le/a/d/q/q;->f:Le/a/d/q/u;

    invoke-virtual {p1}, Landroid/telecom/Connection;->setActive()V

    .line 11
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
