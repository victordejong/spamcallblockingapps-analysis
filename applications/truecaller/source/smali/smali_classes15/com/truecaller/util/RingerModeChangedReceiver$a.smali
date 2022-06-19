.class public final Lcom/truecaller/util/RingerModeChangedReceiver$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/util/RingerModeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
    c = "com.truecaller.util.RingerModeChangedReceiver$onReceive$1"
    f = "RingerModeChangedReceiver.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/j2;


# direct methods
.method public constructor <init>(Le/a/j2;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/util/RingerModeChangedReceiver$a;->e:Le/a/j2;

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

    new-instance p1, Lcom/truecaller/util/RingerModeChangedReceiver$a;

    iget-object v0, p0, Lcom/truecaller/util/RingerModeChangedReceiver$a;->e:Le/a/j2;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/util/RingerModeChangedReceiver$a;-><init>(Le/a/j2;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/util/RingerModeChangedReceiver$a;->e:Le/a/j2;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0}, Le/a/j2;->b1()Le/a/r2/f;

    move-result-object p2

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/l4/h;

    sget-object v0, Lcom/truecaller/presence/AvailabilityTrigger;->USER_ACTION:Lcom/truecaller/presence/AvailabilityTrigger;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Le/a/l4/h;->d(Lcom/truecaller/presence/AvailabilityTrigger;Z)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/util/RingerModeChangedReceiver$a;->e:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->b1()Le/a/r2/f;

    move-result-object p1

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l4/h;

    sget-object v0, Lcom/truecaller/presence/AvailabilityTrigger;->USER_ACTION:Lcom/truecaller/presence/AvailabilityTrigger;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Le/a/l4/h;->d(Lcom/truecaller/presence/AvailabilityTrigger;Z)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
