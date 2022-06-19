.class public final Le/a/b/o/b/b;
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
        "Lq3/a/n0<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.governmentServices.config.GovernmentServicesConfigManagerImpl$checkVersionAndUpdateDBAsync$2"
    f = "GovernmentServicesConfigManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/b/o/b/d;


# direct methods
.method public constructor <init>(Le/a/b/o/b/d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/o/b/b;->f:Le/a/b/o/b/d;

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

    new-instance v0, Le/a/b/o/b/b;

    iget-object v1, p0, Le/a/b/o/b/b;->f:Le/a/b/o/b/d;

    invoke-direct {v0, v1, p2}, Le/a/b/o/b/b;-><init>(Le/a/b/o/b/d;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/o/b/b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/o/b/b;

    iget-object v1, p0, Le/a/b/o/b/b;->f:Le/a/b/o/b/d;

    invoke-direct {v0, v1, p2}, Le/a/b/o/b/b;-><init>(Le/a/b/o/b/d;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/o/b/b;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/b/o/b/b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/b/o/b/b;->e:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lq3/a/i0;

    .line 2
    new-instance v3, Le/a/b/o/b/b$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/b/o/b/b$a;-><init>(Le/a/b/o/b/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method
