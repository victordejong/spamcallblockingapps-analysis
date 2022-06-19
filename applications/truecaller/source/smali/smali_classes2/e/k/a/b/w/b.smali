.class public Le/k/a/b/w/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Le/k/a/b/d;

.field public final c:Z

.field public final d:Le/k/a/b/a0/a;

.field public e:[B

.field public f:[B

.field public g:[B

.field public h:[C

.field public i:[C

.field public j:[C


# direct methods
.method public constructor <init>(Le/k/a/b/a0/a;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    .line 3
    iput-object p2, p0, Le/k/a/b/w/b;->a:Ljava/lang/Object;

    .line 4
    iput-boolean p3, p0, Le/k/a/b/w/b;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to call same allocXxx() method second time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b([B[B)V
    .locals 0

    if-eq p1, p2, :cond_1

    .line 1
    array-length p1, p1

    array-length p2, p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Trying to release buffer smaller than original"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final c([C[C)V
    .locals 0

    if-eq p1, p2, :cond_1

    .line 1
    array-length p1, p1

    array-length p2, p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Trying to release buffer smaller than original"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public d()[B
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/b/w/b;->g:[B

    invoke-virtual {p0, v0}, Le/k/a/b/w/b;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Le/k/a/b/a0/a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/w/b;->g:[B

    return-object v0
.end method

.method public e([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/b/w/b;->g:[B

    invoke-virtual {p0, p1, v0}, Le/k/a/b/w/b;->b([B[B)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/k/a/b/w/b;->g:[B

    .line 3
    iget-object v0, p0, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    const/4 v1, 0x3

    .line 4
    iget-object v0, v0, Le/k/a/b/a0/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public f([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/b/w/b;->e:[B

    invoke-virtual {p0, p1, v0}, Le/k/a/b/w/b;->b([B[B)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/k/a/b/w/b;->e:[B

    .line 3
    iget-object v0, p0, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    const/4 v1, 0x0

    .line 4
    iget-object v0, v0, Le/k/a/b/a0/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method
