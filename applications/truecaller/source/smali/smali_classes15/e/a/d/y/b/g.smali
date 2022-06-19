.class public final Le/a/d/y/b/g;
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
    c = "com.truecaller.voip.notification.inapp.VoipInAppNotificationPresenter$startOngoingGroupCallStatusJob$1"
    f = "VoipInAppNotificationPresenter.kt"
    l = {
        0x82
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/y/b/h;

.field public final synthetic g:Lq3/a/x2/f;

.field public final synthetic h:J


# direct methods
.method public constructor <init>(Le/a/d/y/b/h;Lq3/a/x2/f;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/y/b/g;->f:Le/a/d/y/b/h;

    iput-object p2, p0, Le/a/d/y/b/g;->g:Lq3/a/x2/f;

    iput-wide p3, p0, Le/a/d/y/b/g;->h:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/d/y/b/g;

    iget-object v1, p0, Le/a/d/y/b/g;->f:Le/a/d/y/b/h;

    iget-object v2, p0, Le/a/d/y/b/g;->g:Lq3/a/x2/f;

    iget-wide v3, p0, Le/a/d/y/b/g;->h:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/d/y/b/g;-><init>(Le/a/d/y/b/h;Lq3/a/x2/f;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/y/b/g;

    iget-object v1, p0, Le/a/d/y/b/g;->f:Le/a/d/y/b/h;

    iget-object v2, p0, Le/a/d/y/b/g;->g:Lq3/a/x2/f;

    iget-wide v3, p0, Le/a/d/y/b/g;->h:J

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/d/y/b/g;-><init>(Le/a/d/y/b/h;Lq3/a/x2/f;JLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/y/b/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/y/b/g;->e:I

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
    iget-object p1, p0, Le/a/d/y/b/g;->g:Lq3/a/x2/f;

    .line 5
    new-instance v1, Le/a/d/y/b/g$a;

    invoke-direct {v1, p0}, Le/a/d/y/b/g$a;-><init>(Le/a/d/y/b/g;)V

    iput v2, p0, Le/a/d/y/b/g;->e:I

    invoke-interface {p1, v1, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
