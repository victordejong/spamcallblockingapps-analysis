.class public Lp3/a/o1/e$b;
.super Lp3/a/n1/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/o1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public A:Lv3/f;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:I

.field public F:I

.field public final G:Lp3/a/o1/b;

.field public final H:Lp3/a/o1/m;

.field public final I:Lp3/a/o1/f;

.field public J:Z

.field public final K:Lp3/c/d;

.field public final synthetic L:Lp3/a/o1/e;

.field public final x:I

.field public final y:Ljava/lang/Object;

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp3/a/o1/o/m/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/a/o1/e;ILp3/a/n1/r2;Ljava/lang/Object;Lp3/a/o1/b;Lp3/a/o1/m;Lp3/a/o1/f;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 2
    iget-object p1, p1, Lp3/a/n1/a;->a:Lp3/a/n1/x2;

    .line 3
    invoke-direct {p0, p2, p3, p1}, Lp3/a/n1/u0;-><init>(ILp3/a/n1/r2;Lp3/a/n1/x2;)V

    .line 4
    new-instance p1, Lv3/f;

    invoke-direct {p1}, Lv3/f;-><init>()V

    iput-object p1, p0, Lp3/a/o1/e$b;->A:Lv3/f;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lp3/a/o1/e$b;->B:Z

    .line 6
    iput-boolean p1, p0, Lp3/a/o1/e$b;->C:Z

    .line 7
    iput-boolean p1, p0, Lp3/a/o1/e$b;->D:Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lp3/a/o1/e$b;->J:Z

    const-string p1, "lock"

    .line 9
    invoke-static {p4, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lp3/a/o1/e$b;->y:Ljava/lang/Object;

    .line 10
    iput-object p5, p0, Lp3/a/o1/e$b;->G:Lp3/a/o1/b;

    .line 11
    iput-object p6, p0, Lp3/a/o1/e$b;->H:Lp3/a/o1/m;

    .line 12
    iput-object p7, p0, Lp3/a/o1/e$b;->I:Lp3/a/o1/f;

    .line 13
    iput p8, p0, Lp3/a/o1/e$b;->E:I

    .line 14
    iput p8, p0, Lp3/a/o1/e$b;->F:I

    .line 15
    iput p8, p0, Lp3/a/o1/e$b;->x:I

    .line 16
    sget-object p1, Lp3/c/c;->a:Lp3/c/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lp3/c/a;->a:Lp3/c/d;

    .line 17
    iput-object p1, p0, Lp3/a/o1/e$b;->K:Lp3/c/d;

    return-void
.end method

.method public static l(Lp3/a/o1/e$b;Lp3/a/o0;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 2
    iget-object v1, v0, Lp3/a/o1/e;->j:Ljava/lang/String;

    .line 3
    iget-object v2, v0, Lp3/a/o1/e;->h:Ljava/lang/String;

    .line 4
    iget-boolean v0, v0, Lp3/a/o1/e;->p:Z

    .line 5
    iget-object v3, p0, Lp3/a/o1/e$b;->I:Lp3/a/o1/f;

    .line 6
    iget-object v3, v3, Lp3/a/o1/f;->z:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 7
    :goto_0
    sget-object v6, Lp3/a/o1/c;->a:Lp3/a/o1/o/m/d;

    const-string v6, "headers"

    .line 8
    invoke-static {p1, v6}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "defaultPath"

    .line 9
    invoke-static {p2, v6}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "authority"

    .line 10
    invoke-static {v1, v6}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v6, Lp3/a/n1/r0;->g:Lp3/a/o0$f;

    invoke-virtual {p1, v6}, Lp3/a/o0;->b(Lp3/a/o0$f;)V

    .line 12
    sget-object v6, Lp3/a/n1/r0;->h:Lp3/a/o0$f;

    invoke-virtual {p1, v6}, Lp3/a/o0;->b(Lp3/a/o0$f;)V

    .line 13
    sget-object v6, Lp3/a/n1/r0;->i:Lp3/a/o0$f;

    invoke-virtual {p1, v6}, Lp3/a/o0;->b(Lp3/a/o0$f;)V

    .line 14
    new-instance v7, Ljava/util/ArrayList;

    .line 15
    iget v8, p1, Lp3/a/o0;->b:I

    add-int/lit8 v8, v8, 0x7

    .line 16
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v3, :cond_1

    .line 17
    sget-object v3, Lp3/a/o1/c;->b:Lp3/a/o1/o/m/d;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_1
    sget-object v3, Lp3/a/o1/c;->a:Lp3/a/o1/o/m/d;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v0, :cond_2

    .line 19
    sget-object v0, Lp3/a/o1/c;->d:Lp3/a/o1/o/m/d;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_2
    sget-object v0, Lp3/a/o1/c;->c:Lp3/a/o1/o/m/d;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_2
    new-instance v0, Lp3/a/o1/o/m/d;

    sget-object v3, Lp3/a/o1/o/m/d;->h:Lv3/i;

    invoke-direct {v0, v3, v1}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v0, Lp3/a/o1/o/m/d;

    sget-object v1, Lp3/a/o1/o/m/d;->f:Lv3/i;

    invoke-direct {v0, v1, p2}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance p2, Lp3/a/o1/o/m/d;

    .line 24
    iget-object v0, v6, Lp3/a/o0$f;->b:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v0

    invoke-static {v2}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    .line 26
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object p2, Lp3/a/o1/c;->e:Lp3/a/o1/o/m/d;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object p2, Lp3/a/o1/c;->f:Lp3/a/o1/o/m/d;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object p2, Lp3/a/n1/v2;->a:Ljava/util/logging/Logger;

    .line 30
    sget-object p2, Lp3/a/f0;->a:Ljava/nio/charset/Charset;

    .line 31
    iget p2, p1, Lp3/a/o0;->b:I

    mul-int/lit8 p2, p2, 0x2

    .line 32
    new-array v0, p2, [[B

    .line 33
    iget-object v1, p1, Lp3/a/o0;->a:[Ljava/lang/Object;

    instance-of v2, v1, [[B

    if-eqz v2, :cond_3

    .line 34
    invoke-static {v1, v4, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_3
    move v1, v4

    .line 35
    :goto_3
    iget v2, p1, Lp3/a/o0;->b:I

    if-ge v1, v2, :cond_4

    mul-int/lit8 v2, v1, 0x2

    .line 36
    invoke-virtual {p1, v1}, Lp3/a/o0;->g(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    add-int/2addr v2, v5

    .line 37
    invoke-virtual {p1, v1}, Lp3/a/o0;->k(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    move p1, v4

    move v1, p1

    :goto_5
    if-ge p1, p2, :cond_a

    .line 38
    aget-object v2, v0, p1

    add-int/lit8 v3, p1, 0x1

    .line 39
    aget-object v3, v0, v3

    .line 40
    sget-object v6, Lp3/a/n1/v2;->b:[B

    invoke-static {v2, v6}, Lp3/a/n1/v2;->a([B[B)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 41
    aput-object v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    .line 42
    sget-object v6, Lp3/a/f0;->b:Lcom/google/common/io/BaseEncoding;

    .line 43
    invoke-virtual {v6, v3}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_9

    .line 44
    :cond_5
    array-length v6, v3

    move v8, v4

    :goto_6
    if-ge v8, v6, :cond_8

    aget-byte v9, v3, v8

    const/16 v10, 0x20

    if-lt v9, v10, :cond_7

    const/16 v10, 0x7e

    if-le v9, v10, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    move v6, v4

    goto :goto_8

    :cond_8
    move v6, v5

    :goto_8
    if-eqz v6, :cond_9

    .line 45
    aput-object v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    .line 46
    aput-object v3, v0, v2

    :goto_9
    add-int/lit8 v1, v1, 0x2

    goto :goto_a

    .line 47
    :cond_9
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 48
    sget-object v2, Lp3/a/n1/v2;->a:Ljava/util/logging/Logger;

    const-string v8, "Metadata key="

    const-string v9, ", value="

    invoke-static {v8, v6, v9}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contains invalid ASCII characters"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_a
    add-int/lit8 p1, p1, 0x2

    goto :goto_5

    :cond_a
    if-ne v1, p2, :cond_b

    goto :goto_b

    .line 49
    :cond_b
    invoke-static {v0, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [[B

    :goto_b
    move p1, v4

    .line 50
    :goto_c
    array-length p2, v0

    if-ge p1, p2, :cond_e

    .line 51
    aget-object p2, v0, p1

    invoke-static {p2}, Lv3/i;->j([B)Lv3/i;

    move-result-object p2

    .line 52
    invoke-virtual {p2}, Lv3/i;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lp3/a/n1/r0;->g:Lp3/a/o0$f;

    .line 54
    iget-object v2, v2, Lp3/a/o0$f;->b:Ljava/lang/String;

    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lp3/a/n1/r0;->i:Lp3/a/o0$f;

    .line 56
    iget-object v2, v2, Lp3/a/o0$f;->b:Ljava/lang/String;

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v5

    goto :goto_d

    :cond_c
    move v1, v4

    :goto_d
    if-eqz v1, :cond_d

    add-int/lit8 v1, p1, 0x1

    .line 58
    aget-object v1, v0, v1

    invoke-static {v1}, Lv3/i;->j([B)Lv3/i;

    move-result-object v1

    .line 59
    new-instance v2, Lp3/a/o1/o/m/d;

    invoke-direct {v2, p2, v1}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 p1, p1, 0x2

    goto :goto_c

    .line 60
    :cond_e
    iput-object v7, p0, Lp3/a/o1/e$b;->z:Ljava/util/List;

    .line 61
    iget-object p1, p0, Lp3/a/o1/e$b;->I:Lp3/a/o1/f;

    iget-object p0, p0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 62
    iget-object p2, p1, Lp3/a/o1/f;->t:Lp3/a/g1;

    if-eqz p2, :cond_f

    .line 63
    iget-object p0, p0, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 64
    sget-object p1, Lp3/a/n1/t$a;->b:Lp3/a/n1/t$a;

    new-instance v0, Lp3/a/o0;

    invoke-direct {v0}, Lp3/a/o0;-><init>()V

    invoke-virtual {p0, p2, p1, v5, v0}, Lp3/a/n1/a$c;->i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V

    goto :goto_e

    .line 65
    :cond_f
    iget-object p2, p1, Lp3/a/o1/f;->m:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    iget v0, p1, Lp3/a/o1/f;->B:I

    if-lt p2, v0, :cond_10

    .line 66
    iget-object p2, p1, Lp3/a/o1/f;->C:Ljava/util/Deque;

    invoke-interface {p2, p0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p1, p0}, Lp3/a/o1/f;->u(Lp3/a/o1/e;)V

    goto :goto_e

    .line 68
    :cond_10
    invoke-virtual {p1, p0}, Lp3/a/o1/f;->x(Lp3/a/o1/e;)V

    :goto_e
    return-void
.end method

.method public static m(Lp3/a/o1/e$b;Lv3/f;ZZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lp3/a/o1/e$b;->D:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lp3/a/o1/e$b;->J:Z

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p1, Lv3/f;->b:J

    long-to-int v0, v0

    .line 4
    iget-object v1, p0, Lp3/a/o1/e$b;->A:Lv3/f;

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Lv3/f;->h1(Lv3/f;J)V

    .line 5
    iget-boolean p1, p0, Lp3/a/o1/e$b;->B:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lp3/a/o1/e$b;->B:Z

    .line 6
    iget-boolean p1, p0, Lp3/a/o1/e$b;->C:Z

    or-int/2addr p1, p3

    iput-boolean p1, p0, Lp3/a/o1/e$b;->C:Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 8
    iget v0, v0, Lp3/a/o1/e;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "streamId should be set"

    .line 9
    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lp3/a/o1/e$b;->H:Lp3/a/o1/m;

    iget-object p0, p0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 11
    iget p0, p0, Lp3/a/o1/e;->l:I

    .line 12
    invoke-virtual {v0, p2, p0, p1, p3}, Lp3/a/o1/m;->a(ZILv3/f;Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 4

    .line 1
    iget v0, p0, Lp3/a/o1/e$b;->F:I

    sub-int/2addr v0, p1

    iput v0, p0, Lp3/a/o1/e$b;->F:I

    int-to-float p1, v0

    .line 2
    iget v1, p0, Lp3/a/o1/e$b;->x:I

    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    sub-int/2addr v1, v0

    .line 3
    iget p1, p0, Lp3/a/o1/e$b;->E:I

    add-int/2addr p1, v1

    iput p1, p0, Lp3/a/o1/e$b;->E:I

    add-int/2addr v0, v1

    .line 4
    iput v0, p0, Lp3/a/o1/e$b;->F:I

    .line 5
    iget-object p1, p0, Lp3/a/o1/e$b;->G:Lp3/a/o1/b;

    iget-object v0, p0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 6
    iget v0, v0, Lp3/a/o1/e;->l:I

    int-to-long v1, v1

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lp3/a/o1/b;->c(IJ)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 8

    .line 1
    sget-object v7, Lp3/a/n1/t$a;->a:Lp3/a/n1/t$a;

    iget-boolean v0, p0, Lp3/a/n1/a$c;->o:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lp3/a/o1/e$b;->I:Lp3/a/o1/f;

    iget-object v1, p0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 3
    iget v1, v1, Lp3/a/o1/e;->l:I

    .line 4
    iget-object v2, v0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v3, v0, Lp3/a/o1/f;->m:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/a/o1/e;

    if-eqz v3, :cond_0

    .line 6
    iget-object v4, v0, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    sget-object v5, Lp3/a/o1/o/m/a;->m:Lp3/a/o1/o/m/a;

    invoke-virtual {v4, v1, v5}, Lp3/a/o1/b;->m2(ILp3/a/o1/o/m/a;)V

    .line 7
    invoke-virtual {v0}, Lp3/a/o1/f;->w()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lp3/a/o1/f;->y()V

    .line 9
    invoke-virtual {v0, v3}, Lp3/a/o1/f;->r(Lp3/a/o1/e;)V

    .line 10
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 11
    :cond_1
    iget-object v0, p0, Lp3/a/o1/e$b;->I:Lp3/a/o1/f;

    iget-object v1, p0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 12
    iget v1, v1, Lp3/a/o1/e;->l:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v7

    .line 13
    invoke-virtual/range {v0 .. v6}, Lp3/a/o1/f;->k(ILp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o1/o/m/a;Lp3/a/o0;)V

    .line 14
    :goto_0
    iget-boolean v0, p0, Lp3/a/n1/a$c;->p:Z

    const-string v1, "status should have been reported on deframer closed"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lp3/a/n1/a$c;->m:Z

    .line 16
    iget-boolean v1, p0, Lp3/a/n1/a$c;->q:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 17
    sget-object p1, Lp3/a/g1;->o:Lp3/a/g1;

    const-string v1, "Encountered end-of-stream mid-frame"

    .line 18
    invoke-virtual {p1, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    new-instance v1, Lp3/a/o0;

    invoke-direct {v1}, Lp3/a/o0;-><init>()V

    .line 19
    invoke-virtual {p0, p1, v7, v0, v1}, Lp3/a/n1/a$c;->i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V

    .line 20
    :cond_2
    iget-object p1, p0, Lp3/a/n1/a$c;->n:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 21
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lp3/a/n1/a$c;->n:Ljava/lang/Runnable;

    :cond_3
    return-void
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o1/e$b;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lp3/a/g1;->e(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    new-instance v0, Lp3/a/o0;

    invoke-direct {v0}, Lp3/a/o0;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, p1, v1, v0}, Lp3/a/o1/e$b;->n(Lp3/a/g1;ZLp3/a/o0;)V

    return-void
.end method

.method public final n(Lp3/a/g1;ZLp3/a/o0;)V
    .locals 7

    .line 1
    sget-object v0, Lp3/a/n1/t$a;->a:Lp3/a/n1/t$a;

    iget-boolean v1, p0, Lp3/a/o1/e$b;->D:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lp3/a/o1/e$b;->D:Z

    .line 3
    iget-boolean v2, p0, Lp3/a/o1/e$b;->J:Z

    if-eqz v2, :cond_2

    .line 4
    iget-object p2, p0, Lp3/a/o1/e$b;->I:Lp3/a/o1/f;

    iget-object v2, p0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 5
    iget-object v3, p2, Lp3/a/o1/f;->C:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p2, v2}, Lp3/a/o1/f;->r(Lp3/a/o1/e;)V

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lp3/a/o1/e$b;->z:Ljava/util/List;

    .line 8
    iget-object p2, p0, Lp3/a/o1/e$b;->A:Lv3/f;

    .line 9
    iget-wide v2, p2, Lv3/f;->b:J

    .line 10
    invoke-virtual {p2, v2, v3}, Lv3/f;->skip(J)V

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lp3/a/o1/e$b;->J:Z

    if-eqz p3, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p3, Lp3/a/o0;

    invoke-direct {p3}, Lp3/a/o0;-><init>()V

    .line 13
    :goto_0
    invoke-virtual {p0, p1, v0, v1, p3}, Lp3/a/n1/a$c;->i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V

    goto :goto_2

    .line 14
    :cond_2
    iget-object v1, p0, Lp3/a/o1/e$b;->I:Lp3/a/o1/f;

    iget-object v2, p0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 15
    iget v2, v2, Lp3/a/o1/e;->l:I

    .line 16
    iget-object v3, v1, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter v3

    .line 17
    :try_start_0
    iget-object v4, v1, Lp3/a/o1/f;->m:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp3/a/o1/e;

    if-eqz v4, :cond_5

    .line 18
    iget-object v5, v1, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    sget-object v6, Lp3/a/o1/o/m/a;->m:Lp3/a/o1/o/m/a;

    invoke-virtual {v5, v2, v6}, Lp3/a/o1/b;->m2(ILp3/a/o1/o/m/a;)V

    if-eqz p1, :cond_4

    .line 19
    iget-object v2, v4, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    if-eqz p3, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    new-instance p3, Lp3/a/o0;

    invoke-direct {p3}, Lp3/a/o0;-><init>()V

    .line 21
    :goto_1
    invoke-virtual {v2, p1, v0, p2, p3}, Lp3/a/n1/a$c;->i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V

    .line 22
    :cond_4
    invoke-virtual {v1}, Lp3/a/o1/f;->w()Z

    move-result p1

    if-nez p1, :cond_5

    .line 23
    invoke-virtual {v1}, Lp3/a/o1/f;->y()V

    .line 24
    invoke-virtual {v1, v4}, Lp3/a/o1/f;->r(Lp3/a/o1/e;)V

    .line 25
    :cond_5
    monitor-exit v3

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o(Lv3/f;Z)V
    .locals 7

    .line 1
    sget-object v3, Lp3/a/n1/t$a;->a:Lp3/a/n1/t$a;

    iget-wide v0, p1, Lv3/f;->b:J

    long-to-int v0, v0

    .line 2
    iget v1, p0, Lp3/a/o1/e$b;->E:I

    sub-int/2addr v1, v0

    iput v1, p0, Lp3/a/o1/e$b;->E:I

    if-gez v1, :cond_0

    .line 3
    iget-object p1, p0, Lp3/a/o1/e$b;->G:Lp3/a/o1/b;

    iget-object p2, p0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 4
    iget p2, p2, Lp3/a/o1/e;->l:I

    .line 5
    sget-object v0, Lp3/a/o1/o/m/a;->i:Lp3/a/o1/o/m/a;

    invoke-virtual {p1, p2, v0}, Lp3/a/o1/b;->m2(ILp3/a/o1/o/m/a;)V

    .line 6
    iget-object v0, p0, Lp3/a/o1/e$b;->I:Lp3/a/o1/f;

    iget-object p1, p0, Lp3/a/o1/e$b;->L:Lp3/a/o1/e;

    .line 7
    iget v1, p1, Lp3/a/o1/e;->l:I

    .line 8
    sget-object p1, Lp3/a/g1;->o:Lp3/a/g1;

    const-string p2, "Received data size exceeded our receiving window size"

    .line 9
    invoke-virtual {p1, p2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 10
    invoke-virtual/range {v0 .. v6}, Lp3/a/o1/f;->k(ILp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o1/o/m/a;Lp3/a/o0;)V

    return-void

    .line 11
    :cond_0
    new-instance v0, Lp3/a/o1/i;

    invoke-direct {v0, p1}, Lp3/a/o1/i;-><init>(Lv3/f;)V

    .line 12
    iget-object p1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, "DATA-----------------------------\n"

    .line 13
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lp3/a/n1/u0;->t:Ljava/nio/charset/Charset;

    .line 14
    sget-object v4, Lp3/a/n1/f2;->a:Lp3/a/n1/e2;

    const-string v4, "charset"

    .line 15
    invoke-static {v3, v4}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "buffer"

    .line 16
    invoke-static {v0, v4}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v0}, Lp3/a/o1/i;->f()I

    move-result v4

    .line 18
    new-array v5, v4, [B

    .line 19
    invoke-virtual {v0, v5, v1, v4}, Lp3/a/o1/i;->r0([BII)V

    .line 20
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {p1, v2}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    .line 23
    invoke-virtual {v0}, Lp3/a/o1/i;->close()V

    .line 24
    iget-object p1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    .line 25
    iget-object p1, p1, Lp3/a/g1;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_1

    if-eqz p2, :cond_6

    .line 27
    :cond_1
    iget-object p1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    iget-object p2, p0, Lp3/a/n1/u0;->s:Lp3/a/o0;

    .line 28
    invoke-virtual {p0, p1, v1, p2}, Lp3/a/o1/e$b;->n(Lp3/a/g1;ZLp3/a/o0;)V

    goto :goto_2

    .line 29
    :cond_2
    iget-boolean p1, p0, Lp3/a/n1/u0;->u:Z

    if-nez p1, :cond_3

    .line 30
    sget-object p1, Lp3/a/g1;->o:Lp3/a/g1;

    const-string p2, "headers not received before payload"

    .line 31
    invoke-virtual {p1, p2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    new-instance p2, Lp3/a/o0;

    invoke-direct {p2}, Lp3/a/o0;-><init>()V

    .line 32
    invoke-virtual {p0, p1, v1, p2}, Lp3/a/o1/e$b;->n(Lp3/a/g1;ZLp3/a/o0;)V

    goto :goto_2

    .line 33
    :cond_3
    invoke-virtual {v0}, Lp3/a/o1/i;->f()I

    move-result p1

    const-string v2, "frame"

    .line 34
    invoke-static {v0, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 35
    :try_start_0
    iget-boolean v4, p0, Lp3/a/n1/a$c;->p:Z

    if-eqz v4, :cond_4

    .line 36
    sget-object v4, Lp3/a/n1/a;->f:Ljava/util/logging/Logger;

    .line 37
    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v6, "Received data on closed stream"

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 38
    invoke-virtual {v0}, Lp3/a/o1/i;->close()V

    goto :goto_0

    .line 39
    :cond_4
    :try_start_1
    iget-object v2, p0, Lp3/a/n1/e$a;->a:Lp3/a/n1/a0;

    invoke-interface {v2, v0}, Lp3/a/n1/a0;->k(Lp3/a/n1/e2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 40
    :try_start_2
    invoke-virtual {p0, v2}, Lp3/a/o1/e$b;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-eqz p2, :cond_6

    if-lez p1, :cond_5

    .line 41
    sget-object p1, Lp3/a/g1;->o:Lp3/a/g1;

    const-string p2, "Received unexpected EOS on non-empty DATA frame from server"

    .line 42
    invoke-virtual {p1, p2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    goto :goto_1

    .line 43
    :cond_5
    sget-object p1, Lp3/a/g1;->o:Lp3/a/g1;

    const-string p2, "Received unexpected EOS on empty DATA frame from server"

    .line 44
    invoke-virtual {p1, p2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    .line 45
    :goto_1
    new-instance p1, Lp3/a/o0;

    invoke-direct {p1}, Lp3/a/o0;-><init>()V

    iput-object p1, p0, Lp3/a/n1/u0;->s:Lp3/a/o0;

    .line 46
    iget-object p2, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    .line 47
    invoke-virtual {p0, p2, v3, v1, p1}, Lp3/a/n1/a$c;->i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V

    :cond_6
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :catchall_2
    move-exception p1

    move v1, v2

    :goto_3
    if-eqz v1, :cond_7

    .line 48
    invoke-virtual {v0}, Lp3/a/o1/i;->close()V

    :cond_7
    throw p1
.end method

.method public p(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp3/a/o1/o/m/d;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_7

    .line 1
    invoke-static {p1}, Lp3/a/o1/n;->a(Ljava/util/List;)[[B

    move-result-object p1

    .line 2
    sget-object p2, Lp3/a/f0;->a:Ljava/nio/charset/Charset;

    .line 3
    new-instance p2, Lp3/a/o0;

    invoke-direct {p2, p1}, Lp3/a/o0;-><init>([[B)V

    const-string p1, "trailers"

    .line 4
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lp3/a/n1/u0;->u:Z

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lp3/a/n1/u0;->k(Lp3/a/o0;)Lp3/a/g1;

    move-result-object v1

    iput-object v1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    if-eqz v1, :cond_0

    .line 7
    iput-object p2, p0, Lp3/a/n1/u0;->s:Lp3/a/o0;

    .line 8
    :cond_0
    iget-object v1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trailers: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    .line 10
    iget-object p2, p0, Lp3/a/n1/u0;->s:Lp3/a/o0;

    .line 11
    invoke-virtual {p0, p1, v2, p2}, Lp3/a/o1/e$b;->n(Lp3/a/g1;ZLp3/a/o0;)V

    goto/16 :goto_5

    .line 12
    :cond_1
    sget-object v1, Lp3/a/g0;->b:Lp3/a/o0$f;

    invoke-virtual {p2, v1}, Lp3/a/o0;->d(Lp3/a/o0$f;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/a/g1;

    if-eqz v3, :cond_2

    .line 13
    sget-object v4, Lp3/a/g0;->a:Lp3/a/o0$f;

    invoke-virtual {p2, v4}, Lp3/a/o0;->d(Lp3/a/o0$f;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v3

    goto :goto_1

    .line 14
    :cond_2
    iget-boolean v3, p0, Lp3/a/n1/u0;->u:Z

    if-eqz v3, :cond_3

    .line 15
    sget-object v3, Lp3/a/g1;->h:Lp3/a/g1;

    const-string v4, "missing GRPC status in response"

    invoke-virtual {v3, v4}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v3

    goto :goto_1

    .line 16
    :cond_3
    sget-object v3, Lp3/a/n1/u0;->w:Lp3/a/o0$f;

    invoke-virtual {p2, v3}, Lp3/a/o0;->d(Lp3/a/o0$f;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lp3/a/n1/r0;->g(I)Lp3/a/g1;

    move-result-object v3

    goto :goto_0

    .line 18
    :cond_4
    sget-object v3, Lp3/a/g1;->o:Lp3/a/g1;

    const-string v4, "missing HTTP status code"

    invoke-virtual {v3, v4}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v3

    :goto_0
    const-string v4, "missing GRPC status, inferred error from HTTP status code"

    .line 19
    invoke-virtual {v3, v4}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v3

    .line 20
    :goto_1
    sget-object v4, Lp3/a/n1/u0;->w:Lp3/a/o0$f;

    invoke-virtual {p2, v4}, Lp3/a/o0;->b(Lp3/a/o0$f;)V

    .line 21
    invoke-virtual {p2, v1}, Lp3/a/o0;->b(Lp3/a/o0$f;)V

    .line 22
    sget-object v1, Lp3/a/g0;->a:Lp3/a/o0$f;

    invoke-virtual {p2, v1}, Lp3/a/o0;->b(Lp3/a/o0$f;)V

    const-string v1, "status"

    .line 23
    invoke-static {v3, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-boolean p1, p0, Lp3/a/n1/a$c;->p:Z

    if-eqz p1, :cond_5

    .line 26
    sget-object p1, Lp3/a/n1/a;->f:Ljava/util/logging/Logger;

    .line 27
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object p2, v4, v0

    const-string p2, "Received trailers on closed stream:\n {1}\n {2}"

    invoke-virtual {p1, v1, p2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 28
    :cond_5
    iget-object p1, p0, Lp3/a/n1/a$c;->h:Lp3/a/n1/r2;

    .line 29
    iget-object p1, p1, Lp3/a/n1/r2;->a:[Lp3/a/j1;

    array-length v0, p1

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_6

    aget-object v4, p1, v1

    .line 30
    check-cast v4, Lp3/a/j;

    .line 31
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 32
    :cond_6
    sget-object p1, Lp3/a/n1/t$a;->a:Lp3/a/n1/t$a;

    invoke-virtual {p0, v3, p1, v2, p2}, Lp3/a/n1/a$c;->i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V

    goto/16 :goto_5

    .line 33
    :cond_7
    invoke-static {p1}, Lp3/a/o1/n;->a(Ljava/util/List;)[[B

    move-result-object p1

    .line 34
    sget-object p2, Lp3/a/f0;->a:Ljava/nio/charset/Charset;

    .line 35
    new-instance p2, Lp3/a/o0;

    invoke-direct {p2, p1}, Lp3/a/o0;-><init>([[B)V

    const-string p1, "headers"

    .line 36
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    const-string v1, "headers: "

    if-eqz p1, :cond_8

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    goto/16 :goto_5

    .line 39
    :cond_8
    :try_start_0
    iget-boolean p1, p0, Lp3/a/n1/u0;->u:Z

    if-eqz p1, :cond_9

    .line 40
    sget-object p1, Lp3/a/g1;->o:Lp3/a/g1;

    const-string v0, "Received headers twice"

    invoke-virtual {p1, v0}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    :goto_4
    iput-object p1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    .line 42
    iput-object p2, p0, Lp3/a/n1/u0;->s:Lp3/a/o0;

    .line 43
    invoke-static {p2}, Lp3/a/n1/u0;->j(Lp3/a/o0;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/u0;->t:Ljava/nio/charset/Charset;

    goto :goto_5

    .line 44
    :cond_9
    :try_start_1
    sget-object p1, Lp3/a/n1/u0;->w:Lp3/a/o0$f;

    invoke-virtual {p2, p1}, Lp3/a/o0;->d(Lp3/a/o0$f;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_a

    .line 45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_a

    .line 46
    iget-object p1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    if-eqz p1, :cond_c

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 48
    :cond_a
    :try_start_2
    iput-boolean v0, p0, Lp3/a/n1/u0;->u:Z

    .line 49
    invoke-virtual {p0, p2}, Lp3/a/n1/u0;->k(Lp3/a/o0;)Lp3/a/g1;

    move-result-object v0

    iput-object v0, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_b

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    goto :goto_4

    .line 51
    :cond_b
    :try_start_3
    invoke-virtual {p2, p1}, Lp3/a/o0;->b(Lp3/a/o0$f;)V

    .line 52
    sget-object p1, Lp3/a/g0;->b:Lp3/a/o0$f;

    invoke-virtual {p2, p1}, Lp3/a/o0;->b(Lp3/a/o0$f;)V

    .line 53
    sget-object p1, Lp3/a/g0;->a:Lp3/a/o0$f;

    invoke-virtual {p2, p1}, Lp3/a/o0;->b(Lp3/a/o0$f;)V

    .line 54
    invoke-virtual {p0, p2}, Lp3/a/n1/a$c;->h(Lp3/a/o0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    iget-object p1, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    if-eqz p1, :cond_c

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_c
    :goto_5
    return-void

    :catchall_0
    move-exception p1

    .line 57
    iget-object v0, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    if-eqz v0, :cond_d

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    iput-object v0, p0, Lp3/a/n1/u0;->r:Lp3/a/g1;

    .line 59
    iput-object p2, p0, Lp3/a/n1/u0;->s:Lp3/a/o0;

    .line 60
    invoke-static {p2}, Lp3/a/n1/u0;->j(Lp3/a/o0;)Ljava/nio/charset/Charset;

    move-result-object p2

    iput-object p2, p0, Lp3/a/n1/u0;->t:Ljava/nio/charset/Charset;

    :cond_d
    throw p1
.end method
