.class public final Le/a/d/w/j/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/w/j/w;


# instance fields
.field public final a:Le/a/d/w/i;

.field public final b:Le/a/d/c0/x1/e;

.field public final c:Le/a/d/c0/o;

.field public final synthetic d:Lq3/a/i0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Le/a/d/w/i;Le/a/d/c0/x1/e;Le/a/d/c0/o;)V
    .locals 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateMachine"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hapticFeedbackUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d/w/j/z;->d:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/w/j/z;->a:Le/a/d/w/i;

    iput-object p3, p0, Le/a/d/w/j/z;->b:Le/a/d/c0/x1/e;

    iput-object p4, p0, Le/a/d/w/j/z;->c:Le/a/d/c0/o;

    .line 3
    invoke-interface {p4}, Le/a/d/c0/o;->f()Lq3/a/x2/f;

    move-result-object p1

    .line 4
    new-instance p2, Le/a/d/w/j/y;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Le/a/d/w/j/y;-><init>(Le/a/d/w/j/z;Ls1/w/d;)V

    .line 5
    new-instance p4, Lq3/a/x2/u0;

    invoke-direct {p4, p1, p2}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 6
    invoke-static {p4, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    .line 7
    new-instance v3, Le/a/d/w/j/x;

    invoke-direct {v3, p0, p3}, Le/a/d/w/j/x;-><init>(Le/a/d/w/j/z;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/w/j/z;->d:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/w/j/z;->b:Le/a/d/c0/x1/e;

    invoke-interface {v0}, Le/a/d/c0/x1/e;->c()V

    .line 2
    iget-object v0, p0, Le/a/d/w/j/z;->c:Le/a/d/c0/o;

    invoke-interface {v0}, Le/a/d/c0/o;->a()V

    return-void
.end method
