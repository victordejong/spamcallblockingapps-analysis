.class public final Le/a/a3/b$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a3/b;->a(Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
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
        "Lcom/truecaller/blocking/FilterMatch;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.blocking.BlockManagerImpl$findFilterActionForNumber$2"
    f = "BlockManagerImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a3/b;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Le/a/a3/b;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a3/b$e;->e:Le/a/a3/b;

    iput-object p2, p0, Le/a/a3/b$e;->f:Ljava/lang/String;

    iput-object p3, p0, Le/a/a3/b$e;->g:Ljava/lang/String;

    iput-boolean p4, p0, Le/a/a3/b$e;->h:Z

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

    new-instance p1, Le/a/a3/b$e;

    iget-object v1, p0, Le/a/a3/b$e;->e:Le/a/a3/b;

    iget-object v2, p0, Le/a/a3/b$e;->f:Ljava/lang/String;

    iget-object v3, p0, Le/a/a3/b$e;->g:Ljava/lang/String;

    iget-boolean v4, p0, Le/a/a3/b$e;->h:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/a3/b$e;-><init>(Le/a/a3/b;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a3/b$e;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a3/b$e;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a3/b$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a3/b$e;->e:Le/a/a3/b;

    .line 3
    iget-object p1, p1, Le/a/a3/b;->a:Lo3/a;

    .line 4
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/h0/j;

    iget-object v1, p0, Le/a/a3/b$e;->f:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Le/a/a3/b$e;->g:Ljava/lang/String;

    const/4 v5, 0x0

    iget-boolean v6, p0, Le/a/a3/b$e;->h:Z

    invoke-interface/range {v0 .. v6}, Le/a/h0/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p1

    return-object p1
.end method
