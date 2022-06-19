.class public final Le/p/c/e$c;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Le/p/c/e;


# direct methods
.method public constructor <init>(Le/p/c/e;Le/p/c/e$b;Le/p/c/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/c/e$c;->c:Le/p/c/e;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    iget p3, p2, Le/p/c/e$b;->a:I

    add-int/lit8 p3, p3, 0x4

    .line 3
    iget p1, p1, Le/p/c/e;->b:I

    if-ge p3, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, 0x10

    sub-int/2addr p3, p1

    .line 4
    :goto_0
    iput p3, p0, Le/p/c/e$c;->a:I

    .line 5
    iget p1, p2, Le/p/c/e$b;->b:I

    iput p1, p0, Le/p/c/e$c;->b:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget v0, p0, Le/p/c/e$c;->b:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Le/p/c/e$c;->c:Le/p/c/e;

    iget-object v0, v0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    iget v1, p0, Le/p/c/e$c;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 12
    iget-object v0, p0, Le/p/c/e$c;->c:Le/p/c/e;

    iget-object v0, v0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 13
    iget-object v1, p0, Le/p/c/e$c;->c:Le/p/c/e;

    iget v2, p0, Le/p/c/e$c;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Le/p/c/e;->a(Le/p/c/e;I)I

    move-result v1

    iput v1, p0, Le/p/c/e$c;->a:I

    .line 14
    iget v1, p0, Le/p/c/e$c;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Le/p/c/e$c;->b:I

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/p/c/e;->g:Ljava/util/logging/Logger;

    const-string v0, "buffer"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    if-ltz v0, :cond_2

    .line 3
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_2

    .line 4
    iget v0, p0, Le/p/c/e$c;->b:I

    if-lez v0, :cond_1

    if-le p3, v0, :cond_0

    move p3, v0

    .line 5
    :cond_0
    iget-object v0, p0, Le/p/c/e$c;->c:Le/p/c/e;

    iget v1, p0, Le/p/c/e$c;->a:I

    .line 6
    invoke-virtual {v0, v1, p1, p2, p3}, Le/p/c/e;->k(I[BII)V

    .line 7
    iget-object p1, p0, Le/p/c/e$c;->c:Le/p/c/e;

    iget p2, p0, Le/p/c/e$c;->a:I

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Le/p/c/e;->a(Le/p/c/e;I)I

    move-result p1

    iput p1, p0, Le/p/c/e$c;->a:I

    .line 8
    iget p1, p0, Le/p/c/e$c;->b:I

    sub-int/2addr p1, p3

    iput p1, p0, Le/p/c/e$c;->b:I

    return p3

    :cond_1
    const/4 p1, -0x1

    return p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method
