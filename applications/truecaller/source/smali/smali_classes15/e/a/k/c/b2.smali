.class public final Le/a/k/c/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/a2;
.implements Lq3/a/i0;


# instance fields
.field public final a:Le/a/k/c/r0;

.field public final b:Le/a/k/c/h0;

.field public final c:Le/a/k/c/k1;

.field public final d:Le/a/k/c/u0;

.field public final e:Le/a/k/j;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/k/c/r0;Le/a/k/c/h0;Le/a/k/c/k1;Le/a/k/c/u0;Le/a/k/j;Ls1/w/f;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "availability"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiveVideoSettingsManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdStubManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadWorkerLauncher"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdSupport"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/b2;->a:Le/a/k/c/r0;

    iput-object p2, p0, Le/a/k/c/b2;->b:Le/a/k/c/h0;

    iput-object p3, p0, Le/a/k/c/b2;->c:Le/a/k/c/k1;

    iput-object p4, p0, Le/a/k/c/b2;->d:Le/a/k/c/u0;

    iput-object p5, p0, Le/a/k/c/b2;->e:Le/a/k/j;

    iput-object p6, p0, Le/a/k/c/b2;->f:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v3, Le/a/k/c/b2$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/k/c/b2$a;-><init>(Le/a/k/c/b2;Ljava/lang/String;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/c/b2;->f:Ls1/w/f;

    return-object v0
.end method
