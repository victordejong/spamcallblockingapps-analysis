.class public final Le/a/d/w/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/w/j/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/d/c0/z1/i;

.field public final c:Le/a/d/x/r/h;

.field public final d:Le/a/d/v/d;

.field public final e:Le/a/d/w/j/m;

.field public final synthetic f:Lq3/a/i0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Ljava/lang/String;Le/a/d/c0/z1/i;Le/a/d/x/r/h;Le/a/d/v/d;Le/a/d/w/j/m;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmChannel"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCallManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endInvitation"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d/w/j/b;->f:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/w/j/b;->a:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/w/j/b;->b:Le/a/d/c0/z1/i;

    iput-object p4, p0, Le/a/d/w/j/b;->c:Le/a/d/x/r/h;

    iput-object p5, p0, Le/a/d/w/j/b;->d:Le/a/d/v/d;

    iput-object p6, p0, Le/a/d/w/j/b;->e:Le/a/d/w/j/m;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/w/j/b$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/w/j/b$b;-><init>(Le/a/d/w/j/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public b()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/w/j/b$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/w/j/b$a;-><init>(Le/a/d/w/j/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/w/j/b;->f:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
