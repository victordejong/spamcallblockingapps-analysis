.class public final Lu3/d0;
.super Lu3/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/d0$c;,
        Lu3/d0$a;,
        Lu3/d0$b;
    }
.end annotation


# static fields
.field public static final g:Lu3/c0;

.field public static final h:Lu3/c0;

.field public static final i:[B

.field public static final j:[B

.field public static final k:[B

.field public static final l:Lu3/d0$b;


# instance fields
.field public final b:Lu3/c0;

.field public c:J

.field public final d:Lv3/i;

.field public final e:Lu3/c0;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/d0$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lu3/d0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu3/d0$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lu3/d0;->l:Lu3/d0$b;

    .line 1
    sget-object v0, Lu3/c0;->f:Lu3/c0$a;

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lu3/c0$a;->a(Ljava/lang/String;)Lu3/c0;

    move-result-object v0

    sput-object v0, Lu3/d0;->g:Lu3/c0;

    const-string v0, "multipart/alternative"

    .line 2
    invoke-static {v0}, Lu3/c0$a;->a(Ljava/lang/String;)Lu3/c0;

    const-string v0, "multipart/digest"

    .line 3
    invoke-static {v0}, Lu3/c0$a;->a(Ljava/lang/String;)Lu3/c0;

    const-string v0, "multipart/parallel"

    .line 4
    invoke-static {v0}, Lu3/c0$a;->a(Ljava/lang/String;)Lu3/c0;

    const-string v0, "multipart/form-data"

    .line 5
    invoke-static {v0}, Lu3/c0$a;->a(Ljava/lang/String;)Lu3/c0;

    move-result-object v0

    sput-object v0, Lu3/d0;->h:Lu3/c0;

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/16 v2, 0x3a

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x20

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 6
    sput-object v1, Lu3/d0;->i:[B

    new-array v1, v0, [B

    const/16 v2, 0xd

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 7
    sput-object v1, Lu3/d0;->j:[B

    new-array v0, v0, [B

    const/16 v1, 0x2d

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    aput-byte v1, v0, v4

    .line 8
    sput-object v0, Lu3/d0;->k:[B

    return-void
.end method

.method public constructor <init>(Lv3/i;Lu3/c0;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i;",
            "Lu3/c0;",
            "Ljava/util/List<",
            "Lu3/d0$c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boundaryByteString"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parts"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lu3/j0;-><init>()V

    iput-object p1, p0, Lu3/d0;->d:Lv3/i;

    iput-object p2, p0, Lu3/d0;->e:Lu3/c0;

    iput-object p3, p0, Lu3/d0;->f:Ljava/util/List;

    .line 2
    sget-object p3, Lu3/c0;->f:Lu3/c0$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lv3/i;->r()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu3/c0$a;->a(Ljava/lang/String;)Lu3/c0;

    move-result-object p1

    iput-object p1, p0, Lu3/d0;->b:Lu3/c0;

    const-wide/16 p1, -0x1

    .line 5
    iput-wide p1, p0, Lu3/d0;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lu3/d0;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lu3/d0;->d(Lv3/g;Z)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lu3/d0;->c:J

    :cond_0
    return-wide v0
.end method

.method public b()Lu3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/d0;->b:Lu3/c0;

    return-object v0
.end method

.method public c(Lv3/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lu3/d0;->d(Lv3/g;Z)J

    return-void
.end method

.method public final d(Lv3/g;Z)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Lv3/f;

    invoke-direct {p1}, Lv3/f;-><init>()V

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lu3/d0;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v6, v3

    :goto_1
    if-ge v6, v2, :cond_8

    .line 3
    iget-object v7, p0, Lu3/d0;->f:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lu3/d0$c;

    .line 4
    iget-object v8, v7, Lu3/d0$c;->a:Lu3/z;

    .line 5
    iget-object v7, v7, Lu3/d0$c;->b:Lu3/j0;

    if-eqz p1, :cond_7

    .line 6
    sget-object v9, Lu3/d0;->k:[B

    invoke-interface {p1, v9}, Lv3/g;->write([B)Lv3/g;

    .line 7
    iget-object v9, p0, Lu3/d0;->d:Lv3/i;

    invoke-interface {p1, v9}, Lv3/g;->E0(Lv3/i;)Lv3/g;

    .line 8
    sget-object v9, Lu3/d0;->j:[B

    invoke-interface {p1, v9}, Lv3/g;->write([B)Lv3/g;

    if-eqz v8, :cond_1

    .line 9
    invoke-virtual {v8}, Lu3/z;->size()I

    move-result v9

    move v10, v3

    :goto_2
    if-ge v10, v9, :cond_1

    .line 10
    invoke-virtual {v8, v10}, Lu3/z;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v11}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v11

    .line 11
    sget-object v12, Lu3/d0;->i:[B

    invoke-interface {v11, v12}, Lv3/g;->write([B)Lv3/g;

    move-result-object v11

    .line 12
    invoke-virtual {v8, v10}, Lu3/z;->d(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v11

    .line 13
    sget-object v12, Lu3/d0;->j:[B

    invoke-interface {v11, v12}, Lv3/g;->write([B)Lv3/g;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v7}, Lu3/j0;->b()Lu3/c0;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v9, "Content-Type: "

    .line 15
    invoke-interface {p1, v9}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v9

    .line 16
    iget-object v8, v8, Lu3/c0;->a:Ljava/lang/String;

    .line 17
    invoke-interface {v9, v8}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v8

    .line 18
    sget-object v9, Lu3/d0;->j:[B

    invoke-interface {v8, v9}, Lv3/g;->write([B)Lv3/g;

    .line 19
    :cond_2
    invoke-virtual {v7}, Lu3/j0;->a()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v12, v8, v10

    if-eqz v12, :cond_3

    const-string v10, "Content-Length: "

    .line 20
    invoke-interface {p1, v10}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v10

    .line 21
    invoke-interface {v10, v8, v9}, Lv3/g;->d0(J)Lv3/g;

    move-result-object v10

    .line 22
    sget-object v11, Lu3/d0;->j:[B

    invoke-interface {v10, v11}, Lv3/g;->write([B)Lv3/g;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_5

    if-eqz v1, :cond_4

    .line 23
    iget-wide p1, v1, Lv3/f;->b:J

    .line 24
    invoke-virtual {v1, p1, p2}, Lv3/f;->skip(J)V

    return-wide v10

    .line 25
    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v0

    .line 26
    :cond_5
    :goto_3
    sget-object v10, Lu3/d0;->j:[B

    invoke-interface {p1, v10}, Lv3/g;->write([B)Lv3/g;

    if-eqz p2, :cond_6

    add-long/2addr v4, v8

    goto :goto_4

    .line 27
    :cond_6
    invoke-virtual {v7, p1}, Lu3/j0;->c(Lv3/g;)V

    .line 28
    :goto_4
    invoke-interface {p1, v10}, Lv3/g;->write([B)Lv3/g;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 29
    :cond_7
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v0

    :cond_8
    if-eqz p1, :cond_b

    .line 30
    sget-object v2, Lu3/d0;->k:[B

    invoke-interface {p1, v2}, Lv3/g;->write([B)Lv3/g;

    .line 31
    iget-object v3, p0, Lu3/d0;->d:Lv3/i;

    invoke-interface {p1, v3}, Lv3/g;->E0(Lv3/i;)Lv3/g;

    .line 32
    invoke-interface {p1, v2}, Lv3/g;->write([B)Lv3/g;

    .line 33
    sget-object v2, Lu3/d0;->j:[B

    invoke-interface {p1, v2}, Lv3/g;->write([B)Lv3/g;

    if-eqz p2, :cond_a

    if-eqz v1, :cond_9

    .line 34
    iget-wide p1, v1, Lv3/f;->b:J

    add-long/2addr v4, p1

    .line 35
    invoke-virtual {v1, p1, p2}, Lv3/f;->skip(J)V

    goto :goto_5

    .line 36
    :cond_9
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v0

    :cond_a
    :goto_5
    return-wide v4

    .line 37
    :cond_b
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v0
.end method
