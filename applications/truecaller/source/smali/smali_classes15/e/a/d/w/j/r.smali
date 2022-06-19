.class public final Le/a/d/w/j/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/w/j/o;


# instance fields
.field public final a:Le/a/d/c0/z1/i;

.field public final b:Le/a/d/w/j/m;

.field public final synthetic c:Lq3/a/i0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Le/a/d/c0/z1/i;Le/a/d/w/j/m;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d/w/j/r;->c:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/w/j/r;->a:Le/a/d/c0/z1/i;

    iput-object p3, p0, Le/a/d/w/j/r;->b:Le/a/d/w/j/m;

    .line 3
    invoke-interface {p2}, Le/a/d/c0/z1/i;->g()Lq3/a/x2/f;

    move-result-object p1

    .line 4
    new-instance p2, Le/a/d/w/j/p;

    invoke-direct {p2, p1}, Le/a/d/w/j/p;-><init>(Lq3/a/x2/f;)V

    .line 5
    new-instance p1, Le/a/d/w/j/q;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Le/a/d/w/j/q;-><init>(Le/a/d/w/j/r;Ls1/w/d;)V

    .line 6
    new-instance p3, Lq3/a/x2/u0;

    invoke-direct {p3, p2, p1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 7
    invoke-static {p3, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/w/j/r;->c:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
