.class public Le/a/q2/b1/f/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q2/b1/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/q2/b1/f/b$c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public c:I

.field public final synthetic d:Le/a/q2/b1/f/b;


# direct methods
.method public constructor <init>(Le/a/q2/b1/f/b;ILe/a/q2/b1/f/b$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/q2/b1/f/b$d;->d:Le/a/q2/b1/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Le/a/q2/b1/f/b$d;->a:Ljava/util/List;

    const/4 p3, -0x1

    .line 3
    iput p3, p0, Le/a/q2/b1/f/b$d;->c:I

    .line 4
    iget-object p3, p1, Le/a/q2/b1/f/b;->d:Le/a/q2/b1/f/b$c;

    .line 5
    iget p3, p3, Le/a/q2/b1/f/b$c;->a:I

    iput p3, p0, Le/a/q2/b1/f/b$d;->b:I

    .line 6
    iget-object v0, p1, Le/a/q2/b1/f/b;->e:Le/a/q2/b1/f/b$c;

    .line 7
    iget v1, v0, Le/a/q2/b1/f/b$c;->a:I

    iget v0, v0, Le/a/q2/b1/f/b$c;->b:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x8

    .line 8
    iget v0, p1, Le/a/q2/b1/f/b;->b:I

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x10

    sub-int/2addr v1, v0

    :goto_0
    if-eq p3, v1, :cond_4

    .line 9
    :try_start_0
    iget-object v0, p0, Le/a/q2/b1/f/b$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_4

    .line 10
    invoke-virtual {p1, p3}, Le/a/q2/b1/f/b;->b(I)Le/a/q2/b1/f/b$c;

    move-result-object v0

    .line 11
    iget v2, v0, Le/a/q2/b1/f/b$c;->b:I

    if-lez v2, :cond_1

    const v3, 0xffff

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    iget-object v2, p0, Le/a/q2/b1/f/b$d;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget v0, v0, Le/a/q2/b1/f/b$c;->b:I

    add-int/2addr p3, v0

    add-int/lit8 p3, p3, 0x8

    .line 14
    iget v0, p1, Le/a/q2/b1/f/b;->b:I
    :try_end_0
    .catch Le/a/q2/b1/f/b$b; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p3, v0, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, p3, 0x10

    sub-int/2addr p3, v0

    goto :goto_0

    :catch_0
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :catch_0
    :cond_0
    iget v0, p0, Le/a/q2/b1/f/b$d;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Le/a/q2/b1/f/b$d;->c:I

    iget-object v2, p0, Le/a/q2/b1/f/b$d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2
    iget-object v0, p0, Le/a/q2/b1/f/b$d;->a:Ljava/util/List;

    iget v2, p0, Le/a/q2/b1/f/b$d;->c:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/b1/f/b$c;

    .line 3
    iget v2, v0, Le/a/q2/b1/f/b$c;->b:I

    new-array v3, v2, [B

    .line 4
    :try_start_0
    iget-object v4, p0, Le/a/q2/b1/f/b$d;->d:Le/a/q2/b1/f/b;

    iget v5, v0, Le/a/q2/b1/f/b$c;->a:I

    add-int/lit8 v5, v5, 0x8

    const/4 v6, 0x0

    .line 5
    invoke-virtual {v4, v5, v3, v6, v2}, Le/a/q2/b1/f/b;->j(I[BII)V

    .line 6
    iget-object v2, p0, Le/a/q2/b1/f/b$d;->d:Le/a/q2/b1/f/b;

    .line 7
    iget-object v4, v2, Le/a/q2/b1/f/b;->g:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->reset()V

    .line 8
    iget-object v4, v2, Le/a/q2/b1/f/b;->g:Ljava/util/zip/CRC32;

    invoke-virtual {v4, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 9
    iget-object v2, v2, Le/a/q2/b1/f/b;->g:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    iget-wide v7, v0, Le/a/q2/b1/f/b$c;->c:J
    :try_end_0
    .catch Le/a/q2/b1/f/b$b; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v4, v7

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v6

    :goto_0
    if-eqz v1, :cond_0

    return-object v3

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
