.class public final Lm/b0;
.super Lm/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/b0$b;,
        Lm/b0$a;
    }
.end annotation


# static fields
.field public static final f:Lm/a0;

.field public static final g:Lm/a0;

.field private static final h:[B

.field private static final i:[B

.field private static final j:[B


# instance fields
.field private final a:Lm/a0;

.field private b:J

.field private final c:Ln/i;

.field private final d:Lm/a0;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/b0$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lm/a0;->g:Lm/a0$a;

    const-string v1, "multipart/mixed"

    invoke-virtual {v0, v1}, Lm/a0$a;->a(Ljava/lang/String;)Lm/a0;

    move-result-object v1

    sput-object v1, Lm/b0;->f:Lm/a0;

    const-string v1, "multipart/alternative"

    .line 2
    invoke-virtual {v0, v1}, Lm/a0$a;->a(Ljava/lang/String;)Lm/a0;

    const-string v1, "multipart/digest"

    .line 3
    invoke-virtual {v0, v1}, Lm/a0$a;->a(Ljava/lang/String;)Lm/a0;

    const-string v1, "multipart/parallel"

    .line 4
    invoke-virtual {v0, v1}, Lm/a0$a;->a(Ljava/lang/String;)Lm/a0;

    const-string v1, "multipart/form-data"

    .line 5
    invoke-virtual {v0, v1}, Lm/a0$a;->a(Ljava/lang/String;)Lm/a0;

    move-result-object v0

    sput-object v0, Lm/b0;->g:Lm/a0;

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
    sput-object v1, Lm/b0;->h:[B

    new-array v1, v0, [B

    const/16 v2, 0xd

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 7
    sput-object v1, Lm/b0;->i:[B

    new-array v0, v0, [B

    const/16 v1, 0x2d

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    aput-byte v1, v0, v4

    .line 8
    sput-object v0, Lm/b0;->j:[B

    return-void
.end method

.method public constructor <init>(Ln/i;Lm/a0;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/i;",
            "Lm/a0;",
            "Ljava/util/List<",
            "Lm/b0$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boundaryByteString"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parts"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lm/f0;-><init>()V

    iput-object p1, p0, Lm/b0;->c:Ln/i;

    iput-object p2, p0, Lm/b0;->d:Lm/a0;

    iput-object p3, p0, Lm/b0;->e:Ljava/util/List;

    .line 2
    sget-object p1, Lm/a0;->g:Lm/a0$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm/b0;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lm/a0$a;->a(Ljava/lang/String;)Lm/a0;

    move-result-object p1

    iput-object p1, p0, Lm/b0;->a:Lm/a0;

    const-wide/16 p1, -0x1

    .line 3
    iput-wide p1, p0, Lm/b0;->b:J

    return-void
.end method

.method private final b(Ln/g;Z)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Ln/f;

    invoke-direct {p1}, Ln/f;-><init>()V

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lm/b0;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_8

    .line 3
    iget-object v7, p0, Lm/b0;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm/b0$b;

    .line 4
    invoke-virtual {v7}, Lm/b0$b;->b()Lm/x;

    move-result-object v8

    .line 5
    invoke-virtual {v7}, Lm/b0$b;->a()Lm/f0;

    move-result-object v7

    if-eqz p1, :cond_7

    .line 6
    sget-object v9, Lm/b0;->j:[B

    invoke-interface {p1, v9}, Ln/g;->W0([B)Ln/g;

    .line 7
    iget-object v9, p0, Lm/b0;->c:Ln/i;

    invoke-interface {p1, v9}, Ln/g;->Y0(Ln/i;)Ln/g;

    .line 8
    sget-object v9, Lm/b0;->i:[B

    invoke-interface {p1, v9}, Ln/g;->W0([B)Ln/g;

    if-eqz v8, :cond_1

    .line 9
    invoke-virtual {v8}, Lm/x;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_1

    .line 10
    invoke-virtual {v8, v10}, Lm/x;->g(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v11}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v11

    .line 11
    sget-object v12, Lm/b0;->h:[B

    invoke-interface {v11, v12}, Ln/g;->W0([B)Ln/g;

    move-result-object v11

    .line 12
    invoke-virtual {v8, v10}, Lm/x;->j(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v11

    .line 13
    sget-object v12, Lm/b0;->i:[B

    invoke-interface {v11, v12}, Ln/g;->W0([B)Ln/g;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v7}, Lm/f0;->contentType()Lm/a0;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v9, "Content-Type: "

    .line 15
    invoke-interface {p1, v9}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v9

    .line 16
    invoke-virtual {v8}, Lm/a0;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v8

    .line 17
    sget-object v9, Lm/b0;->i:[B

    invoke-interface {v8, v9}, Ln/g;->W0([B)Ln/g;

    .line 18
    :cond_2
    invoke-virtual {v7}, Lm/f0;->contentLength()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v12, v8, v10

    if-eqz v12, :cond_3

    const-string v10, "Content-Length: "

    .line 19
    invoke-interface {p1, v10}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v10

    .line 20
    invoke-interface {v10, v8, v9}, Ln/g;->p1(J)Ln/g;

    move-result-object v10

    .line 21
    sget-object v11, Lm/b0;->i:[B

    invoke-interface {v10, v11}, Ln/g;->W0([B)Ln/g;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_5

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {v1}, Ln/f;->a()V

    return-wide v10

    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 23
    :cond_5
    :goto_3
    sget-object v10, Lm/b0;->i:[B

    invoke-interface {p1, v10}, Ln/g;->W0([B)Ln/g;

    if-eqz p2, :cond_6

    add-long/2addr v4, v8

    goto :goto_4

    .line 24
    :cond_6
    invoke-virtual {v7, p1}, Lm/f0;->writeTo(Ln/g;)V

    .line 25
    :goto_4
    invoke-interface {p1, v10}, Ln/g;->W0([B)Ln/g;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 26
    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_8
    if-eqz p1, :cond_b

    .line 27
    sget-object v2, Lm/b0;->j:[B

    invoke-interface {p1, v2}, Ln/g;->W0([B)Ln/g;

    .line 28
    iget-object v3, p0, Lm/b0;->c:Ln/i;

    invoke-interface {p1, v3}, Ln/g;->Y0(Ln/i;)Ln/g;

    .line 29
    invoke-interface {p1, v2}, Ln/g;->W0([B)Ln/g;

    .line 30
    sget-object v2, Lm/b0;->i:[B

    invoke-interface {p1, v2}, Ln/g;->W0([B)Ln/g;

    if-eqz p2, :cond_a

    if-eqz v1, :cond_9

    .line 31
    invoke-virtual {v1}, Ln/f;->p0()J

    move-result-wide p1

    add-long/2addr v4, p1

    .line 32
    invoke-virtual {v1}, Ln/f;->a()V

    goto :goto_5

    .line 33
    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_a
    :goto_5
    return-wide v4

    .line 34
    :cond_b
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/b0;->c:Ln/i;

    invoke-virtual {v0}, Ln/i;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lm/b0;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v0, v1}, Lm/b0;->b(Ln/g;Z)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lm/b0;->b:J

    :cond_0
    return-wide v0
.end method

.method public contentType()Lm/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/b0;->a:Lm/a0;

    return-object v0
.end method

.method public writeTo(Ln/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lm/b0;->b(Ln/g;Z)J

    return-void
.end method
