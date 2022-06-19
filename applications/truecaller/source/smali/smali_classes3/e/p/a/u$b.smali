.class public Le/p/a/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Le/p/a/s;

.field public b:Le/p/a/r;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Le/p/a/l;

.field public f:Le/p/a/m$b;

.field public g:Le/p/a/v;

.field public h:Le/p/a/u;

.field public i:Le/p/a/u;

.field public j:Le/p/a/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Le/p/a/u$b;->c:I

    .line 3
    new-instance v0, Le/p/a/m$b;

    invoke-direct {v0}, Le/p/a/m$b;-><init>()V

    iput-object v0, p0, Le/p/a/u$b;->f:Le/p/a/m$b;

    return-void
.end method

.method public constructor <init>(Le/p/a/u;Le/p/a/u$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 5
    iput p2, p0, Le/p/a/u$b;->c:I

    .line 6
    iget-object p2, p1, Le/p/a/u;->a:Le/p/a/s;

    .line 7
    iput-object p2, p0, Le/p/a/u$b;->a:Le/p/a/s;

    .line 8
    iget-object p2, p1, Le/p/a/u;->b:Le/p/a/r;

    .line 9
    iput-object p2, p0, Le/p/a/u$b;->b:Le/p/a/r;

    .line 10
    iget p2, p1, Le/p/a/u;->c:I

    .line 11
    iput p2, p0, Le/p/a/u$b;->c:I

    .line 12
    iget-object p2, p1, Le/p/a/u;->d:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Le/p/a/u$b;->d:Ljava/lang/String;

    .line 14
    iget-object p2, p1, Le/p/a/u;->e:Le/p/a/l;

    .line 15
    iput-object p2, p0, Le/p/a/u$b;->e:Le/p/a/l;

    .line 16
    iget-object p2, p1, Le/p/a/u;->f:Le/p/a/m;

    .line 17
    invoke-virtual {p2}, Le/p/a/m;->c()Le/p/a/m$b;

    move-result-object p2

    iput-object p2, p0, Le/p/a/u$b;->f:Le/p/a/m$b;

    .line 18
    iget-object p2, p1, Le/p/a/u;->g:Le/p/a/v;

    .line 19
    iput-object p2, p0, Le/p/a/u$b;->g:Le/p/a/v;

    .line 20
    iget-object p2, p1, Le/p/a/u;->h:Le/p/a/u;

    .line 21
    iput-object p2, p0, Le/p/a/u$b;->h:Le/p/a/u;

    .line 22
    iget-object p2, p1, Le/p/a/u;->i:Le/p/a/u;

    .line 23
    iput-object p2, p0, Le/p/a/u$b;->i:Le/p/a/u;

    .line 24
    iget-object p1, p1, Le/p/a/u;->j:Le/p/a/u;

    .line 25
    iput-object p1, p0, Le/p/a/u$b;->j:Le/p/a/u;

    return-void
.end method


# virtual methods
.method public a()Le/p/a/u;
    .locals 3

    .line 1
    iget-object v0, p0, Le/p/a/u$b;->a:Le/p/a/s;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/p/a/u$b;->b:Le/p/a/r;

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Le/p/a/u$b;->c:I

    if-ltz v0, :cond_0

    .line 4
    new-instance v0, Le/p/a/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/p/a/u;-><init>(Le/p/a/u$b;Le/p/a/u$a;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "code < 0: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Le/p/a/u$b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Le/p/a/u;)Le/p/a/u$b;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/p/a/u$b;->c(Ljava/lang/String;Le/p/a/u;)V

    .line 2
    :cond_0
    iput-object p1, p0, Le/p/a/u$b;->i:Le/p/a/u;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Le/p/a/u;)V
    .locals 1

    .line 1
    iget-object v0, p2, Le/p/a/u;->g:Le/p/a/v;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p2, Le/p/a/u;->h:Le/p/a/u;

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p2, Le/p/a/u;->i:Le/p/a/u;

    if-nez v0, :cond_1

    .line 4
    iget-object p2, p2, Le/p/a/u;->j:Le/p/a/u;

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".priorResponse != null"

    invoke-static {p1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".cacheResponse != null"

    invoke-static {p1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".networkResponse != null"

    invoke-static {p1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".body != null"

    invoke-static {p1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public d(Le/p/a/m;)Le/p/a/u$b;
    .locals 0

    .line 1
    invoke-virtual {p1}, Le/p/a/m;->c()Le/p/a/m$b;

    move-result-object p1

    iput-object p1, p0, Le/p/a/u$b;->f:Le/p/a/m$b;

    return-object p0
.end method

.method public e(Le/p/a/u;)Le/p/a/u$b;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Le/p/a/u;->g:Le/p/a/v;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Le/p/a/u$b;->j:Le/p/a/u;

    return-object p0
.end method
