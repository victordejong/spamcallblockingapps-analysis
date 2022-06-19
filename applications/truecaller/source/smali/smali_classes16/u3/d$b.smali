.class public final Lu3/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lu3/z;

.field public final c:Ljava/lang/String;

.field public final d:Lu3/f0;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Lu3/z;

.field public final h:Lu3/y;

.field public final i:J

.field public final j:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lu3/p0/l/h;->c:Lu3/p0/l/h$a;

    .line 2
    sget-object v0, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OkHttp-Sent-Millis"

    sput-object v0, Lu3/d$b;->k:Ljava/lang/String;

    .line 4
    sget-object v0, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OkHttp-Received-Millis"

    sput-object v0, Lu3/d$b;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu3/k0;)V
    .locals 7

    const-string v0, "response"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v0, p1, Lu3/k0;->b:Lu3/g0;

    .line 54
    iget-object v0, v0, Lu3/g0;->b:Lu3/a0;

    .line 55
    iget-object v0, v0, Lu3/a0;->j:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lu3/d$b;->a:Ljava/lang/String;

    const-string v0, "$this$varyHeaders"

    .line 57
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p1, Lu3/k0;->i:Lu3/k0;

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, v0, Lu3/k0;->b:Lu3/g0;

    .line 60
    iget-object v0, v0, Lu3/g0;->d:Lu3/z;

    .line 61
    iget-object v1, p1, Lu3/k0;->g:Lu3/z;

    .line 62
    invoke-static {v1}, Lu3/d;->j(Lu3/z;)Ljava/util/Set;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lu3/p0/c;->b:Lu3/z;

    goto :goto_1

    .line 64
    :cond_0
    new-instance v2, Lu3/z$a;

    invoke-direct {v2}, Lu3/z$a;-><init>()V

    const/4 v3, 0x0

    .line 65
    invoke-virtual {v0}, Lu3/z;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_2

    .line 66
    invoke-virtual {v0, v3}, Lu3/z;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    invoke-virtual {v0, v3}, Lu3/z;->d(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v2}, Lu3/z$a;->d()Lu3/z;

    move-result-object v0

    .line 70
    :goto_1
    iput-object v0, p0, Lu3/d$b;->b:Lu3/z;

    .line 71
    iget-object v0, p1, Lu3/k0;->b:Lu3/g0;

    .line 72
    iget-object v0, v0, Lu3/g0;->c:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lu3/d$b;->c:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lu3/k0;->c:Lu3/f0;

    .line 75
    iput-object v0, p0, Lu3/d$b;->d:Lu3/f0;

    .line 76
    iget v0, p1, Lu3/k0;->e:I

    .line 77
    iput v0, p0, Lu3/d$b;->e:I

    .line 78
    iget-object v0, p1, Lu3/k0;->d:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lu3/d$b;->f:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lu3/k0;->g:Lu3/z;

    .line 81
    iput-object v0, p0, Lu3/d$b;->g:Lu3/z;

    .line 82
    iget-object v0, p1, Lu3/k0;->f:Lu3/y;

    .line 83
    iput-object v0, p0, Lu3/d$b;->h:Lu3/y;

    .line 84
    iget-wide v0, p1, Lu3/k0;->l:J

    .line 85
    iput-wide v0, p0, Lu3/d$b;->i:J

    .line 86
    iget-wide v0, p1, Lu3/k0;->m:J

    .line 87
    iput-wide v0, p0, Lu3/d$b;->j:J

    return-void

    .line 88
    :cond_3
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Lv3/b0;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "source"

    const-string v3, "rawSource"

    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v3, "$this$buffer"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Lv3/v;

    invoke-direct {v3, v2}, Lv3/v;-><init>(Lv3/b0;)V

    .line 4
    invoke-virtual {v3}, Lv3/v;->o1()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lu3/d$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v3}, Lv3/v;->o1()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lu3/d$b;->c:Ljava/lang/String;

    .line 6
    new-instance v4, Lu3/z$a;

    invoke-direct {v4}, Lu3/z$a;-><init>()V

    .line 7
    invoke-static {v3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-virtual {v3}, Lv3/v;->j()J

    move-result-wide v5

    .line 9
    invoke-virtual {v3}, Lv3/v;->o1()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    const-string v11, "expected an int but was \""

    const/16 v12, 0x22

    if-ltz v10, :cond_b

    const v10, 0x7fffffff

    int-to-long v13, v10

    cmp-long v10, v5, v13

    if-gtz v10, :cond_b

    .line 10
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-lez v10, :cond_0

    move/from16 v10, v16

    goto :goto_0

    :cond_0
    move v10, v15

    :goto_0
    if-nez v10, :cond_b

    long-to-int v5, v5

    move v6, v15

    :goto_1
    if-ge v6, v5, :cond_1

    .line 11
    :try_start_3
    invoke-virtual {v3}, Lv3/v;->o1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lu3/z$a;->b(Ljava/lang/String;)Lu3/z$a;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v4}, Lu3/z$a;->d()Lu3/z;

    move-result-object v4

    iput-object v4, v1, Lu3/d$b;->b:Lu3/z;

    .line 13
    invoke-virtual {v3}, Lv3/v;->o1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lu3/p0/h/j;->a(Ljava/lang/String;)Lu3/p0/h/j;

    move-result-object v4

    .line 14
    iget-object v5, v4, Lu3/p0/h/j;->a:Lu3/f0;

    iput-object v5, v1, Lu3/d$b;->d:Lu3/f0;

    .line 15
    iget v5, v4, Lu3/p0/h/j;->b:I

    iput v5, v1, Lu3/d$b;->e:I

    .line 16
    iget-object v4, v4, Lu3/p0/h/j;->c:Ljava/lang/String;

    iput-object v4, v1, Lu3/d$b;->f:Ljava/lang/String;

    .line 17
    new-instance v4, Lu3/z$a;

    invoke-direct {v4}, Lu3/z$a;-><init>()V

    .line 18
    invoke-static {v3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :try_start_4
    invoke-virtual {v3}, Lv3/v;->j()J

    move-result-wide v5

    .line 20
    invoke-virtual {v3}, Lv3/v;->o1()Ljava/lang/String;

    move-result-object v0

    cmp-long v7, v5, v8

    if-ltz v7, :cond_a

    cmp-long v7, v5, v13

    if-gtz v7, :cond_a

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lez v7, :cond_2

    move/from16 v7, v16

    goto :goto_2

    :cond_2
    move v7, v15

    :goto_2
    if-nez v7, :cond_a

    long-to-int v0, v5

    move v5, v15

    :goto_3
    if-ge v5, v0, :cond_3

    .line 22
    :try_start_5
    invoke-virtual {v3}, Lv3/v;->o1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lu3/z$a;->b(Ljava/lang/String;)Lu3/z$a;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 23
    :cond_3
    sget-object v0, Lu3/d$b;->k:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lu3/z$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 24
    sget-object v6, Lu3/d$b;->l:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lu3/z$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {v4, v0}, Lu3/z$a;->f(Ljava/lang/String;)Lu3/z$a;

    .line 26
    invoke-virtual {v4, v6}, Lu3/z$a;->f(Ljava/lang/String;)Lu3/z$a;

    if-eqz v5, :cond_4

    .line 27
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_4

    :cond_4
    move-wide v5, v8

    :goto_4
    iput-wide v5, v1, Lu3/d$b;->i:J

    if-eqz v7, :cond_5

    .line 28
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    :cond_5
    iput-wide v8, v1, Lu3/d$b;->j:J

    .line 29
    invoke-virtual {v4}, Lu3/z$a;->d()Lu3/z;

    move-result-object v0

    iput-object v0, v1, Lu3/d$b;->g:Lu3/z;

    .line 30
    iget-object v0, v1, Lu3/d$b;->a:Ljava/lang/String;

    const-string v4, "https://"

    const/4 v5, 0x2

    invoke-static {v0, v4, v15, v5}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {v3}, Lv3/v;->o1()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    move/from16 v15, v16

    :cond_6
    if-nez v15, :cond_8

    .line 33
    invoke-virtual {v3}, Lv3/v;->o1()Ljava/lang/String;

    move-result-object v0

    .line 34
    sget-object v4, Lu3/k;->t:Lu3/k$b;

    invoke-virtual {v4, v0}, Lu3/k$b;->b(Ljava/lang/String;)Lu3/k;

    move-result-object v0

    .line 35
    invoke-virtual {v1, v3}, Lu3/d$b;->a(Lv3/h;)Ljava/util/List;

    move-result-object v4

    .line 36
    invoke-virtual {v1, v3}, Lu3/d$b;->a(Lv3/h;)Ljava/util/List;

    move-result-object v5

    .line 37
    invoke-virtual {v3}, Lv3/v;->N1()Z

    move-result v6

    if-nez v6, :cond_7

    .line 38
    sget-object v6, Lu3/o0;->h:Lu3/o0$a;

    invoke-virtual {v3}, Lv3/v;->o1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lu3/o0$a;->a(Ljava/lang/String;)Lu3/o0;

    move-result-object v3

    goto :goto_5

    .line 39
    :cond_7
    sget-object v3, Lu3/o0;->f:Lu3/o0;

    :goto_5
    const-string v6, "tlsVersion"

    .line 40
    invoke-static {v3, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "cipherSuite"

    invoke-static {v0, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "peerCertificates"

    invoke-static {v4, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "localCertificates"

    invoke-static {v5, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {v4}, Lu3/p0/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 42
    new-instance v6, Lu3/y;

    invoke-static {v5}, Lu3/p0/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    new-instance v7, Lu3/w;

    invoke-direct {v7, v4}, Lu3/w;-><init>(Ljava/util/List;)V

    invoke-direct {v6, v3, v0, v5, v7}, Lu3/y;-><init>(Lu3/o0;Lu3/k;Ljava/util/List;Ls1/z/b/a;)V

    .line 43
    iput-object v6, v1, Lu3/d$b;->h:Lu3/y;

    goto :goto_6

    .line 44
    :cond_8
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected \"\" but was \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    const/4 v0, 0x0

    .line 45
    iput-object v0, v1, Lu3/d$b;->h:Lu3/y;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 46
    :goto_6
    invoke-interface/range {p1 .. p1}, Lv3/b0;->close()V

    return-void

    .line 47
    :cond_a
    :try_start_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_0
    move-exception v0

    .line 48
    :try_start_7
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 49
    :cond_b
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_1
    move-exception v0

    .line 50
    :try_start_9
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v0

    .line 51
    invoke-interface/range {p1 .. p1}, Lv3/b0;->close()V

    throw v0
.end method


# virtual methods
.method public final a(Lv3/h;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/h;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lv3/v;

    :try_start_0
    invoke-virtual {p1}, Lv3/v;->j()J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Lv3/v;->o1()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_4

    const v3, 0x7fffffff

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gtz v3, :cond_4

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-nez v3, :cond_4

    long-to-int v0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 5
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1

    :cond_1
    :try_start_1
    const-string v1, "X.509"

    .line 6
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v4, v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lv3/v;->o1()Ljava/lang/String;

    move-result-object v3

    .line 9
    new-instance v5, Lv3/f;

    invoke-direct {v5}, Lv3/f;-><init>()V

    .line 10
    sget-object v6, Lv3/i;->e:Lv3/i$a;

    invoke-virtual {v6, v3}, Lv3/i$a;->a(Ljava/lang/String;)Lv3/i;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v5, v3}, Lv3/f;->p0(Lv3/i;)Lv3/f;

    .line 11
    new-instance v3, Lv3/f$a;

    invoke-direct {v3, v5}, Lv3/f$a;-><init>(Lv3/f;)V

    .line 12
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    throw p1

    :cond_3
    return-object v2

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_4
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 16
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lv3/g;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/g;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    check-cast p1, Lv3/u;

    :try_start_1
    invoke-virtual {p1, v0, v1}, Lv3/u;->d0(J)Lv3/g;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lv3/g;->j0(I)Lv3/g;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    .line 4
    sget-object v5, Lv3/i;->e:Lv3/i$a;

    const-string v6, "bytes"

    invoke-static {v4, v6}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-static {v5, v4, v2, v2, v6}, Lv3/i$a;->d(Lv3/i$a;[BIII)Lv3/i;

    move-result-object v4

    invoke-virtual {v4}, Lv3/i;->a()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1, v4}, Lv3/u;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v4

    invoke-interface {v4, v0}, Lv3/g;->j0(I)Lv3/g;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final c(Lu3/p0/e/e$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "editor"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lu3/p0/e/e$a;->d(I)Lv3/z;

    move-result-object p1

    const-string v1, "$this$buffer"

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lv3/u;

    invoke-direct {v1, p1}, Lv3/u;-><init>(Lv3/z;)V

    .line 4
    :try_start_0
    iget-object p1, p0, Lu3/d$b;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lv3/u;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p1

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Lv3/g;->j0(I)Lv3/g;

    .line 5
    iget-object p1, p0, Lu3/d$b;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lv3/u;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p1

    invoke-interface {p1, v2}, Lv3/g;->j0(I)Lv3/g;

    .line 6
    iget-object p1, p0, Lu3/d$b;->b:Lu3/z;

    invoke-virtual {p1}, Lu3/z;->size()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Lv3/u;->d0(J)Lv3/g;

    invoke-virtual {v1, v2}, Lv3/u;->j0(I)Lv3/g;

    .line 7
    iget-object p1, p0, Lu3/d$b;->b:Lu3/z;

    invoke-virtual {p1}, Lu3/z;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v0

    :goto_0
    const-string v4, ": "

    if-ge v3, p1, :cond_0

    .line 8
    :try_start_1
    iget-object v5, p0, Lu3/d$b;->b:Lu3/z;

    invoke-virtual {v5, v3}, Lu3/z;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lv3/u;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v5

    .line 9
    invoke-interface {v5, v4}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v4

    .line 10
    iget-object v5, p0, Lu3/d$b;->b:Lu3/z;

    invoke-virtual {v5, v3}, Lu3/z;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v4

    .line 11
    invoke-interface {v4, v2}, Lv3/g;->j0(I)Lv3/g;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lu3/p0/h/j;

    iget-object v3, p0, Lu3/d$b;->d:Lu3/f0;

    iget v5, p0, Lu3/d$b;->e:I

    iget-object v6, p0, Lu3/d$b;->f:Ljava/lang/String;

    invoke-direct {p1, v3, v5, v6}, Lu3/p0/h/j;-><init>(Lu3/f0;ILjava/lang/String;)V

    invoke-virtual {p1}, Lu3/p0/h/j;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lv3/u;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p1

    invoke-interface {p1, v2}, Lv3/g;->j0(I)Lv3/g;

    .line 13
    iget-object p1, p0, Lu3/d$b;->g:Lu3/z;

    invoke-virtual {p1}, Lu3/z;->size()I

    move-result p1

    const/4 v3, 0x2

    add-int/2addr p1, v3

    int-to-long v5, p1

    invoke-virtual {v1, v5, v6}, Lv3/u;->d0(J)Lv3/g;

    invoke-virtual {v1, v2}, Lv3/u;->j0(I)Lv3/g;

    .line 14
    iget-object p1, p0, Lu3/d$b;->g:Lu3/z;

    invoke-virtual {p1}, Lu3/z;->size()I

    move-result p1

    move v5, v0

    :goto_1
    if-ge v5, p1, :cond_1

    .line 15
    iget-object v6, p0, Lu3/d$b;->g:Lu3/z;

    invoke-virtual {v6, v5}, Lu3/z;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lv3/u;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v6

    .line 16
    invoke-interface {v6, v4}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v6

    .line 17
    iget-object v7, p0, Lu3/d$b;->g:Lu3/z;

    invoke-virtual {v7, v5}, Lu3/z;->d(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v6

    .line 18
    invoke-interface {v6, v2}, Lv3/g;->j0(I)Lv3/g;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 19
    :cond_1
    sget-object p1, Lu3/d$b;->k:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lv3/u;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p1

    .line 20
    invoke-interface {p1, v4}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p1

    .line 21
    iget-wide v5, p0, Lu3/d$b;->i:J

    invoke-interface {p1, v5, v6}, Lv3/g;->d0(J)Lv3/g;

    move-result-object p1

    .line 22
    invoke-interface {p1, v2}, Lv3/g;->j0(I)Lv3/g;

    .line 23
    sget-object p1, Lu3/d$b;->l:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lv3/u;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p1

    .line 24
    invoke-interface {p1, v4}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p1

    .line 25
    iget-wide v4, p0, Lu3/d$b;->j:J

    invoke-interface {p1, v4, v5}, Lv3/g;->d0(J)Lv3/g;

    move-result-object p1

    .line 26
    invoke-interface {p1, v2}, Lv3/g;->j0(I)Lv3/g;

    .line 27
    iget-object p1, p0, Lu3/d$b;->a:Ljava/lang/String;

    const-string v4, "https://"

    invoke-static {p1, v4, v0, v3}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {v1, v2}, Lv3/u;->j0(I)Lv3/g;

    .line 29
    iget-object p1, p0, Lu3/d$b;->h:Lu3/y;

    if-eqz p1, :cond_2

    .line 30
    iget-object p1, p1, Lu3/y;->c:Lu3/k;

    .line 31
    iget-object p1, p1, Lu3/k;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, p1}, Lv3/u;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p1

    invoke-interface {p1, v2}, Lv3/g;->j0(I)Lv3/g;

    .line 33
    iget-object p1, p0, Lu3/d$b;->h:Lu3/y;

    invoke-virtual {p1}, Lu3/y;->c()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lu3/d$b;->b(Lv3/g;Ljava/util/List;)V

    .line 34
    iget-object p1, p0, Lu3/d$b;->h:Lu3/y;

    .line 35
    iget-object p1, p1, Lu3/y;->d:Ljava/util/List;

    .line 36
    invoke-virtual {p0, v1, p1}, Lu3/d$b;->b(Lv3/g;Ljava/util/List;)V

    .line 37
    iget-object p1, p0, Lu3/d$b;->h:Lu3/y;

    .line 38
    iget-object p1, p1, Lu3/y;->b:Lu3/o0;

    .line 39
    iget-object p1, p1, Lu3/o0;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {v1, p1}, Lv3/u;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p1

    invoke-interface {p1, v2}, Lv3/g;->j0(I)Lv3/g;

    goto :goto_2

    .line 41
    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 42
    :cond_3
    :goto_2
    invoke-static {v1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
