.class public final Le/a/q2/w0/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/w0/c;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.analytics.call.CallAnalyticsImpl$listenAndLogCalls$1$1$1"
    f = "CallAnalytics.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/f/y/x;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/f/y/x;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/w0/c$a;->e:Le/a/f/y/x;

    iput-object p2, p0, Le/a/q2/w0/c$a;->f:Ls1/z/c/c0;

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

    new-instance p1, Le/a/q2/w0/c$a;

    iget-object v0, p0, Le/a/q2/w0/c$a;->e:Le/a/f/y/x;

    iget-object v1, p0, Le/a/q2/w0/c$a;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/q2/w0/c$a;-><init>(Le/a/f/y/x;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/q2/w0/c$a;->e:Le/a/f/y/x;

    iget-object v1, p0, Le/a/q2/w0/c$a;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-static {v0}, Le/a/m0/a1$k;->c0(Le/a/f/y/x;)Ljava/lang/String;

    .line 5
    iget-object p2, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 6
    invoke-virtual {p2}, Landroid/telecom/Call;->getState()I

    .line 7
    iget-object p2, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p2, Le/a/q2/w0/h/j;

    invoke-interface {p2}, Le/a/q2/w0/h/j;->j()V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/q2/w0/c$a;->e:Le/a/f/y/x;

    invoke-static {p1}, Le/a/m0/a1$k;->c0(Le/a/f/y/x;)Ljava/lang/String;

    iget-object p1, p0, Le/a/q2/w0/c$a;->e:Le/a/f/y/x;

    .line 3
    iget-object p1, p1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 4
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    .line 5
    iget-object p1, p0, Le/a/q2/w0/c$a;->f:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Le/a/q2/w0/h/j;

    invoke-interface {p1}, Le/a/q2/w0/h/j;->j()V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
