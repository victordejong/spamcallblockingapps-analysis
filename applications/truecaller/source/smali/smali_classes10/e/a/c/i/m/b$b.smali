.class public final Le/a/c/i/m/b$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/m/b;->b(Ljava/util/List;ILs1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.insights.core.sync.InsightsSmsSyncManagerImpl$onMessageCategoryChanged$2"
    f = "InsightsSmsSyncManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/c/i/m/b;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Le/a/c/i/m/b;Ljava/util/List;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/m/b$b;->e:Le/a/c/i/m/b;

    iput-object p2, p0, Le/a/c/i/m/b$b;->f:Ljava/util/List;

    iput p3, p0, Le/a/c/i/m/b$b;->g:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/c/i/m/b$b;

    iget-object v0, p0, Le/a/c/i/m/b$b;->e:Le/a/c/i/m/b;

    iget-object v1, p0, Le/a/c/i/m/b$b;->f:Ljava/util/List;

    iget v2, p0, Le/a/c/i/m/b$b;->g:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/c/i/m/b$b;-><init>(Le/a/c/i/m/b;Ljava/util/List;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/c/i/m/b$b;->e:Le/a/c/i/m/b;

    iget-object v1, p0, Le/a/c/i/m/b$b;->f:Ljava/util/List;

    iget v2, p0, Le/a/c/i/m/b$b;->g:I

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/c/i/m/b;->a:Le/a/c/c/d/d0;

    .line 5
    invoke-virtual {p2, v1}, Le/a/c/c/d/d0;->r(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 6
    iget-object v3, v0, Le/a/c/i/m/b;->a:Le/a/c/c/d/d0;

    .line 7
    invoke-virtual {v3, v1, p2, v2}, Le/a/c/c/d/d0;->n0(Ljava/util/List;Ljava/util/List;I)V

    .line 8
    iget-object p2, v0, Le/a/c/i/m/b;->a:Le/a/c/c/d/d0;

    .line 9
    invoke-virtual {p2, v1, v2}, Le/a/c/c/d/d0;->m0(Ljava/util/List;I)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/c/i/m/b$b;->e:Le/a/c/i/m/b;

    .line 3
    iget-object p1, p1, Le/a/c/i/m/b;->a:Le/a/c/c/d/d0;

    .line 4
    iget-object v0, p0, Le/a/c/i/m/b$b;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Le/a/c/c/d/d0;->r(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/c/i/m/b$b;->e:Le/a/c/i/m/b;

    .line 6
    iget-object v0, v0, Le/a/c/i/m/b;->a:Le/a/c/c/d/d0;

    .line 7
    iget-object v1, p0, Le/a/c/i/m/b$b;->f:Ljava/util/List;

    iget v2, p0, Le/a/c/i/m/b$b;->g:I

    invoke-virtual {v0, v1, p1, v2}, Le/a/c/c/d/d0;->n0(Ljava/util/List;Ljava/util/List;I)V

    .line 8
    iget-object p1, p0, Le/a/c/i/m/b$b;->e:Le/a/c/i/m/b;

    .line 9
    iget-object p1, p1, Le/a/c/i/m/b;->a:Le/a/c/c/d/d0;

    .line 10
    iget-object v0, p0, Le/a/c/i/m/b$b;->f:Ljava/util/List;

    iget v1, p0, Le/a/c/i/m/b$b;->g:I

    invoke-virtual {p1, v0, v1}, Le/a/c/c/d/d0;->m0(Ljava/util/List;I)V

    .line 11
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
