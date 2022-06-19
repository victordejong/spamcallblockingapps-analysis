.class public final Le/a/d/c/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c/a/f;
.implements Lq3/a/i0;


# instance fields
.field public a:Lq3/a/y;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Le/a/d/c0/z1/i;

.field public final d:Le/a/d/c0/f0;

.field public final e:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/d/c0/f0;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "voipAnalyticsUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c/a/h;->d:Le/a/d/c0/f0;

    iput-object p2, p0, Le/a/d/c/a/h;->e:Ls1/w/f;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c/a/h;->a:Lq3/a/y;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/d/c/a/h;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Le/a/d/c0/z1/i;)V
    .locals 8

    const-string v0, "callInfoRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/d/c/a/h;->c:Le/a/d/c0/z1/i;

    .line 2
    iget-object v0, p0, Le/a/d/c/a/h;->a:Lq3/a/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    invoke-static {v1, v2, v1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v0

    iput-object v0, p0, Le/a/d/c/a/h;->a:Lq3/a/y;

    .line 4
    new-instance v5, Le/a/d/c/a/h$a;

    invoke-direct {v5, p0, p1, v1}, Le/a/d/c/a/h$a;-><init>(Le/a/d/c/a/h;Le/a/d/c0/z1/i;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/c/a/h;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    iget-object v0, p0, Le/a/d/c/a/h;->a:Lq3/a/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    iput-object v1, p0, Le/a/d/c/a/h;->c:Le/a/d/c0/z1/i;

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/c/a/h;->e:Ls1/w/f;

    iget-object v1, p0, Le/a/d/c/a/h;->a:Lq3/a/y;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
