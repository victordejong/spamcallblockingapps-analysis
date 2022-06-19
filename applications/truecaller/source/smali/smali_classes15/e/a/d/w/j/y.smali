.class public final Le/a/d/w/j/y;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ls1/s;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.invitation.action.PlayRingtoneAndVibrateImpl$silenceOnPhysicalButtonPress$1"
    f = "PlayRingtoneAndVibrate.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/w/j/z;


# direct methods
.method public constructor <init>(Le/a/d/w/j/z;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/w/j/y;->e:Le/a/d/w/j/z;

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

    new-instance p1, Le/a/d/w/j/y;

    iget-object v0, p0, Le/a/d/w/j/y;->e:Le/a/d/w/j/z;

    invoke-direct {p1, v0, p2}, Le/a/d/w/j/y;-><init>(Le/a/d/w/j/z;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/d/w/j/y;->e:Le/a/d/w/j/z;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p1, Le/a/d/w/j/z;->b:Le/a/d/c0/x1/e;

    .line 6
    invoke-interface {v0}, Le/a/d/c0/x1/e;->c()V

    .line 7
    iget-object p1, p1, Le/a/d/w/j/z;->c:Le/a/d/c0/o;

    .line 8
    invoke-interface {p1}, Le/a/d/c0/o;->a()V

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/w/j/y;->e:Le/a/d/w/j/z;

    .line 3
    iget-object p1, p1, Le/a/d/w/j/z;->b:Le/a/d/c0/x1/e;

    .line 4
    invoke-interface {p1}, Le/a/d/c0/x1/e;->c()V

    .line 5
    iget-object p1, p0, Le/a/d/w/j/y;->e:Le/a/d/w/j/z;

    .line 6
    iget-object p1, p1, Le/a/d/w/j/z;->c:Le/a/d/c0/o;

    .line 7
    invoke-interface {p1}, Le/a/d/c0/o;->a()V

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
