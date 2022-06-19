.class public final Le/a/d/b/a/a/j$a$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/a/j$a;->b(IIZ)Lq3/a/p1;
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
    c = "com.truecaller.voip.legacy.incall.ui.LegacyVoipPresenter$binderCallback$1$onStatusChanged$1"
    f = "LegacyVoipPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/b/a/a/j$a;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Le/a/d/b/a/a/j$a;IIZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/a/j$a$d;->e:Le/a/d/b/a/a/j$a;

    iput p2, p0, Le/a/d/b/a/a/j$a$d;->f:I

    iput p3, p0, Le/a/d/b/a/a/j$a$d;->g:I

    iput-boolean p4, p0, Le/a/d/b/a/a/j$a$d;->h:Z

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

    new-instance p1, Le/a/d/b/a/a/j$a$d;

    iget-object v1, p0, Le/a/d/b/a/a/j$a$d;->e:Le/a/d/b/a/a/j$a;

    iget v2, p0, Le/a/d/b/a/a/j$a$d;->f:I

    iget v3, p0, Le/a/d/b/a/a/j$a$d;->g:I

    iget-boolean v4, p0, Le/a/d/b/a/a/j$a$d;->h:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/d/b/a/a/j$a$d;-><init>(Le/a/d/b/a/a/j$a;IIZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d/b/a/a/j$a$d;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d/b/a/a/j$a$d;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/b/a/a/j$a$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/b/a/a/j$a$d;->e:Le/a/d/b/a/a/j$a;

    iget-object p1, p1, Le/a/d/b/a/a/j$a;->a:Le/a/d/b/a/a/j;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/a/i;

    if-eqz p1, :cond_0

    .line 4
    iget v0, p0, Le/a/d/b/a/a/j$a$d;->f:I

    iget v1, p0, Le/a/d/b/a/a/j$a$d;->g:I

    iget-boolean v2, p0, Le/a/d/b/a/a/j$a$d;->h:Z

    invoke-interface {p1, v0, v1, v2}, Le/a/d/b/a/a/i;->ke(IIZ)V

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
