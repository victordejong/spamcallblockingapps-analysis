.class public final Le/a/a/e/x$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/x$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.inboxcleanup.InboxCleanupPresenter$onCleanupNow$1$1"
    f = "InboxCleanupPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/e/x$a;

.field public final synthetic f:Ls1/z/c/c0;

.field public final synthetic g:Ls1/z/c/c0;

.field public final synthetic h:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/a/e/x$a;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/x$a$a;->e:Le/a/a/e/x$a;

    iput-object p2, p0, Le/a/a/e/x$a$a;->f:Ls1/z/c/c0;

    iput-object p3, p0, Le/a/a/e/x$a$a;->g:Ls1/z/c/c0;

    iput-object p4, p0, Le/a/a/e/x$a$a;->h:Ls1/z/c/c0;

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

    new-instance p1, Le/a/a/e/x$a$a;

    iget-object v1, p0, Le/a/a/e/x$a$a;->e:Le/a/a/e/x$a;

    iget-object v2, p0, Le/a/a/e/x$a$a;->f:Ls1/z/c/c0;

    iget-object v3, p0, Le/a/a/e/x$a$a;->g:Ls1/z/c/c0;

    iget-object v4, p0, Le/a/a/e/x$a$a;->h:Ls1/z/c/c0;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/e/x$a$a;-><init>(Le/a/a/e/x$a;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/e/x$a$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/e/x$a$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/e/x$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/a/e/x$a$a;->e:Le/a/a/e/x$a;

    iget-object p1, p1, Le/a/a/e/x$a;->j:Le/a/a/e/x;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/v;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/a/e/x$a$a;->f:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Le/a/a/e/x$a$a;->g:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Le/a/a/e/x$a$a;->h:Ls1/z/c/c0;

    iget-object v2, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {p1, v0, v1, v2}, Le/a/a/e/v;->Hb(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
