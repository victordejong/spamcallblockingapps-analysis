.class public final Le/a/d/b/a/a/j$a$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/a/j$a;->c(ZJ)Lq3/a/p1;
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
    c = "com.truecaller.voip.legacy.incall.ui.LegacyVoipPresenter$binderCallback$1$onStartTimer$1"
    f = "LegacyVoipPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/b/a/a/j$a;

.field public final synthetic f:Z

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Le/a/d/b/a/a/j$a;ZJLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/a/j$a$c;->e:Le/a/d/b/a/a/j$a;

    iput-boolean p2, p0, Le/a/d/b/a/a/j$a$c;->f:Z

    iput-wide p3, p0, Le/a/d/b/a/a/j$a$c;->g:J

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

    new-instance p1, Le/a/d/b/a/a/j$a$c;

    iget-object v1, p0, Le/a/d/b/a/a/j$a$c;->e:Le/a/d/b/a/a/j$a;

    iget-boolean v2, p0, Le/a/d/b/a/a/j$a$c;->f:Z

    iget-wide v3, p0, Le/a/d/b/a/a/j$a$c;->g:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/d/b/a/a/j$a$c;-><init>(Le/a/d/b/a/a/j$a;ZJLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/b/a/a/j$a$c;->e:Le/a/d/b/a/a/j$a;

    iget-boolean v1, p0, Le/a/d/b/a/a/j$a$c;->f:Z

    iget-wide v2, p0, Le/a/d/b/a/a/j$a$c;->g:J

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/d/b/a/a/j$a;->a:Le/a/d/b/a/a/j;

    .line 5
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/b/a/a/i;

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {p2, v1, v2, v3}, Le/a/d/b/a/a/i;->l3(ZJ)V

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/b/a/a/j$a$c;->e:Le/a/d/b/a/a/j$a;

    iget-object p1, p1, Le/a/d/b/a/a/j$a;->a:Le/a/d/b/a/a/j;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/a/i;

    if-eqz p1, :cond_0

    .line 4
    iget-boolean v0, p0, Le/a/d/b/a/a/j$a$c;->f:Z

    iget-wide v1, p0, Le/a/d/b/a/a/j$a$c;->g:J

    invoke-interface {p1, v0, v1, v2}, Le/a/d/b/a/a/i;->l3(ZJ)V

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
