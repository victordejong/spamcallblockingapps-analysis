.class public final Le/a/d/v/k/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/k/m;


# instance fields
.field public final a:Lq3/a/b3/c;

.field public final b:Le/a/d/v/g;

.field public final c:Le/a/d/c0/z1/i;

.field public final synthetic d:Lq3/a/i0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Lq3/a/b3/c;Le/a/d/v/g;Le/a/d/c0/z1/i;)V
    .locals 7
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotePeersMutex"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peers"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d/v/k/o;->d:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/v/k/o;->a:Lq3/a/b3/c;

    iput-object p3, p0, Le/a/d/v/k/o;->b:Le/a/d/v/g;

    iput-object p4, p0, Le/a/d/v/k/o;->c:Le/a/d/c0/z1/i;

    .line 3
    new-instance v4, Le/a/d/v/k/n;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/d/v/k/n;-><init>(Le/a/d/v/k/o;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/k/o;->d:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
