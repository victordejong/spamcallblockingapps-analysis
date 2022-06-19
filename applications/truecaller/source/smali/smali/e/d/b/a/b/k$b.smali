.class public Le/d/b/a/b/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/d/b/a/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Le/d/b/a/b/k$c;

.field public b:Le/d/b/a/b/k$c;

.field public c:I

.field public final synthetic d:Le/d/b/a/b/k;


# direct methods
.method public constructor <init>(Le/d/b/a/b/k;Le/d/b/a/b/k$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/d/b/a/b/k$b;->d:Le/d/b/a/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/d/b/a/b/k$b;->a:Le/d/b/a/b/k$c;

    .line 3
    iput-object p1, p0, Le/d/b/a/b/k$b;->b:Le/d/b/a/b/k$c;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Le/d/b/a/b/k$b;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/d/b/a/b/k$b;->d:Le/d/b/a/b/k;

    iget-object v1, p0, Le/d/b/a/b/k$b;->b:Le/d/b/a/b/k$c;

    iget-object v1, v1, Le/d/b/a/b/k$c;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Le/d/b/a/b/k$b;->b:Le/d/b/a/b/k$c;

    iget v2, v2, Le/d/b/a/b/k$c;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Le/d/b/a/b/k;->l([BII)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/d/b/a/b/k$b;->b:Le/d/b/a/b/k$c;

    return-void
.end method

.method public b()Le/d/b/a/b/k$d;
    .locals 3

    .line 1
    new-instance v0, Le/d/b/a/b/k$d;

    iget-object v1, p0, Le/d/b/a/b/k$b;->d:Le/d/b/a/b/k;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/d/b/a/b/k$d;-><init>(Le/d/b/a/b/k;Le/d/b/a/b/k$a;)V

    .line 2
    iget v1, v1, Le/d/b/a/b/k;->c:I

    .line 3
    iput v1, v0, Le/d/b/a/b/k$d;->a:I

    .line 4
    iget v1, p0, Le/d/b/a/b/k$b;->c:I

    .line 5
    iput v1, v0, Le/d/b/a/b/k$d;->b:I

    return-object v0
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/d/b/a/b/k$b;->b:Le/d/b/a/b/k$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/d/b/a/b/k$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/d/b/a/b/k$c;-><init>(Le/d/b/a/b/k$a;)V

    .line 3
    iget-object v1, p0, Le/d/b/a/b/k$b;->d:Le/d/b/a/b/k;

    iget-object v2, v1, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    iput-object v2, v0, Le/d/b/a/b/k$c;->a:Ljava/io/ByteArrayOutputStream;

    .line 4
    iget v2, v1, Le/d/b/a/b/k;->c:I

    iput v2, v0, Le/d/b/a/b/k$c;->b:I

    .line 5
    iget-object v2, p0, Le/d/b/a/b/k$b;->a:Le/d/b/a/b/k$c;

    iput-object v2, v0, Le/d/b/a/b/k$c;->c:Le/d/b/a/b/k$c;

    .line 6
    iput-object v0, p0, Le/d/b/a/b/k$b;->a:Le/d/b/a/b/k$c;

    .line 7
    iget v0, p0, Le/d/b/a/b/k$b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/d/b/a/b/k$b;->c:I

    .line 8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, v1, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    .line 9
    iget-object v0, p0, Le/d/b/a/b/k$b;->d:Le/d/b/a/b/k;

    const/4 v1, 0x0

    iput v1, v0, Le/d/b/a/b/k;->c:I

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Invalid newbuf() before copy()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/d/b/a/b/k$b;->d:Le/d/b/a/b/k;

    iget-object v1, v0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    .line 2
    iget v2, v0, Le/d/b/a/b/k;->c:I

    .line 3
    iget-object v3, p0, Le/d/b/a/b/k$b;->a:Le/d/b/a/b/k$c;

    iget-object v4, v3, Le/d/b/a/b/k$c;->a:Ljava/io/ByteArrayOutputStream;

    iput-object v4, v0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    .line 4
    iget v4, v3, Le/d/b/a/b/k$c;->b:I

    iput v4, v0, Le/d/b/a/b/k;->c:I

    .line 5
    iput-object v3, p0, Le/d/b/a/b/k$b;->b:Le/d/b/a/b/k$c;

    .line 6
    iget-object v0, v3, Le/d/b/a/b/k$c;->c:Le/d/b/a/b/k$c;

    iput-object v0, p0, Le/d/b/a/b/k$b;->a:Le/d/b/a/b/k$c;

    .line 7
    iget v0, p0, Le/d/b/a/b/k$b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Le/d/b/a/b/k$b;->c:I

    .line 8
    iput-object v1, v3, Le/d/b/a/b/k$c;->a:Ljava/io/ByteArrayOutputStream;

    .line 9
    iput v2, v3, Le/d/b/a/b/k$c;->b:I

    return-void
.end method
