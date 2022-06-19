.class public final Le/a/d/v/l/e/l$g$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/l/e/l$g;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/d/x/q/i$b;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.groupcall.call.action.HandleInviteImpl$inviteStatus$rtcJoinFlow$1$1"
    f = "HandleInvite.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d/v/l/e/l$g;


# direct methods
.method public constructor <init>(Le/a/d/v/l/e/l$g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/l/e/l$g$a;->f:Le/a/d/v/l/e/l$g;

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

    new-instance v0, Le/a/d/v/l/e/l$g$a;

    iget-object v1, p0, Le/a/d/v/l/e/l$g$a;->f:Le/a/d/v/l/e/l$g;

    invoke-direct {v0, v1, p2}, Le/a/d/v/l/e/l$g$a;-><init>(Le/a/d/v/l/e/l$g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/v/l/e/l$g$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/v/l/e/l$g$a;->f:Le/a/d/v/l/e/l$g;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Le/a/d/x/q/i$b;

    .line 5
    iget-object p1, p1, Le/a/d/x/q/i$b;->a:Ljava/util/Set;

    .line 6
    iget p2, v0, Le/a/d/v/l/e/l$g;->h:I

    .line 7
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/v/l/e/l$g$a;->e:Ljava/lang/Object;

    check-cast p1, Le/a/d/x/q/i$b;

    .line 2
    iget-object p1, p1, Le/a/d/x/q/i$b;->a:Ljava/util/Set;

    .line 3
    iget-object v0, p0, Le/a/d/v/l/e/l$g$a;->f:Le/a/d/v/l/e/l$g;

    iget v0, v0, Le/a/d/v/l/e/l$g;->h:I

    .line 4
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
