.class public final Ls1/a/a/a/v0/e/a0/a$e$c;
.super Ls1/a/a/a/v0/h/h;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/a0/a$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/a0/a$e$c$b;,
        Ls1/a/a/a/v0/e/a0/a$e$c$c;
    }
.end annotation


# static fields
.field public static final m:Ls1/a/a/a/v0/e/a0/a$e$c;

.field public static n:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/a0/a$e$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ls1/a/a/a/v0/h/c;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/Object;

.field public f:Ls1/a/a/a/v0/e/a0/a$e$c$c;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public k:B

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$e$c$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/a0/a$e$c$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/a0/a$e$c;->n:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$e$c;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/a0/a$e$c;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/a0/a$e$c;->m:Ls1/a/a/a/v0/e/a0/a$e$c;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/a0/a$e$c;->d()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->h:I

    .line 10
    iput v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->j:I

    .line 11
    iput-byte v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->k:B

    .line 12
    iput v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->l:I

    .line 13
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/e/a0/a$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    const/4 p2, -0x1

    .line 15
    iput p2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->h:I

    .line 16
    iput p2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->j:I

    .line 17
    iput-byte p2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->k:B

    .line 18
    iput p2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->l:I

    .line 19
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/a0/a$e$c;->d()V

    .line 20
    invoke-static {}, Ls1/a/a/a/v0/h/c;->j()Ls1/a/a/a/v0/h/c$b;

    move-result-object p2

    const/4 p3, 0x1

    .line 21
    invoke-static {p2, p3}, Ls1/a/a/a/v0/h/e;->k(Ljava/io/OutputStream;I)Ls1/a/a/a/v0/h/e;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/16 v3, 0x10

    const/16 v4, 0x20

    if-nez v1, :cond_13

    .line 22
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v5

    if-eqz v5, :cond_10

    const/16 v6, 0x8

    if-eq v5, v6, :cond_f

    if-eq v5, v3, :cond_e

    const/16 v7, 0x18

    if-eq v5, v7, :cond_c

    if-eq v5, v4, :cond_a

    const/16 v6, 0x22

    if-eq v5, v6, :cond_7

    const/16 v6, 0x28

    if-eq v5, v6, :cond_5

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_2

    const/16 v6, 0x32

    if-eq v5, v6, :cond_1

    .line 23
    invoke-virtual {p1, v5, v0}, Ls1/a/a/a/v0/h/d;->r(ILs1/a/a/a/v0/h/e;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 24
    :cond_1
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->f()Ls1/a/a/a/v0/h/c;

    move-result-object v5

    .line 25
    iget v6, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    .line 26
    iput-object v5, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->e:Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v5

    .line 28
    invoke-virtual {p1, v5}, Ls1/a/a/a/v0/h/d;->d(I)I

    move-result v5

    and-int/lit8 v6, v2, 0x20

    if-eq v6, v4, :cond_3

    .line 29
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result v6

    if-lez v6, :cond_3

    .line 30
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 31
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result v6

    if-lez v6, :cond_4

    .line 32
    iget-object v6, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v7

    .line 34
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_4
    iput v5, p1, Ls1/a/a/a/v0/h/d;->i:I

    .line 36
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->p()V

    goto :goto_0

    :cond_5
    and-int/lit8 v5, v2, 0x20

    if-eq v5, v4, :cond_6

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 38
    :cond_6
    iget-object v5, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    .line 39
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v6

    .line 40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 41
    :cond_7
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v5

    .line 42
    invoke-virtual {p1, v5}, Ls1/a/a/a/v0/h/d;->d(I)I

    move-result v5

    and-int/lit8 v6, v2, 0x10

    if-eq v6, v3, :cond_8

    .line 43
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result v6

    if-lez v6, :cond_8

    .line 44
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 45
    :cond_8
    :goto_2
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result v6

    if-lez v6, :cond_9

    .line 46
    iget-object v6, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    .line 47
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v7

    .line 48
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 49
    :cond_9
    iput v5, p1, Ls1/a/a/a/v0/h/d;->i:I

    .line 50
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->p()V

    goto/16 :goto_0

    :cond_a
    and-int/lit8 v5, v2, 0x10

    if-eq v5, v3, :cond_b

    .line 51
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 52
    :cond_b
    iget-object v5, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    .line 53
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v6

    .line 54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 55
    :cond_c
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v7

    .line 56
    invoke-static {v7}, Ls1/a/a/a/v0/e/a0/a$e$c$c;->a(I)Ls1/a/a/a/v0/e/a0/a$e$c$c;

    move-result-object v8

    if-nez v8, :cond_d

    .line 57
    invoke-virtual {v0, v5}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 58
    invoke-virtual {v0, v7}, Ls1/a/a/a/v0/h/e;->y(I)V

    goto/16 :goto_0

    .line 59
    :cond_d
    iget v5, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    or-int/2addr v5, v6

    iput v5, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    .line 60
    iput-object v8, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->f:Ls1/a/a/a/v0/e/a0/a$e$c$c;

    goto/16 :goto_0

    .line 61
    :cond_e
    iget v5, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    .line 62
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v5

    .line 63
    iput v5, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->d:I

    goto/16 :goto_0

    .line 64
    :cond_f
    iget v5, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    or-int/2addr v5, p3

    iput v5, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    .line 65
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v5

    .line 66
    iput v5, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->c:I
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_10
    :goto_3
    move v1, p3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 67
    :try_start_1
    new-instance p3, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p0, p3, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 69
    throw p3

    :catch_1
    move-exception p1

    .line 70
    iput-object p0, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 71
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p3, v2, 0x10

    if-ne p3, v3, :cond_11

    .line 72
    iget-object p3, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    :cond_11
    and-int/lit8 p3, v2, 0x20

    if-ne p3, v4, :cond_12

    .line 73
    iget-object p3, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    .line 74
    :cond_12
    :try_start_2
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 75
    invoke-virtual {p2}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_2
    :goto_5
    invoke-virtual {p2}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->a:Ls1/a/a/a/v0/h/c;

    .line 76
    throw p1

    :cond_13
    and-int/lit8 p1, v2, 0x10

    if-ne p1, v3, :cond_14

    .line 77
    iget-object p1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    :cond_14
    and-int/lit8 p1, v2, 0x20

    if-ne p1, v4, :cond_15

    .line 78
    iget-object p1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    .line 79
    :cond_15
    :try_start_3
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 80
    invoke-virtual {p2}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_3
    :goto_6
    invoke-virtual {p2}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a0/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/h/h;-><init>(Ls1/a/a/a/v0/h/h$b;)V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->h:I

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->j:I

    .line 4
    iput-byte p2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->k:B

    .line 5
    iput p2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->l:I

    .line 6
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 7
    iput-object p1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/h/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/a0/a$e$c;->getSerializedSize()I

    .line 2
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->c:I

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 4
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->d:I

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 6
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->f:Ls1/a/a/a/v0/e/a0/a$e$c$c;

    .line 8
    iget v1, v1, Ls1/a/a/a/v0/e/a0/a$e$c$c;->a:I

    .line 9
    invoke-virtual {p1, v0, v1}, Ls1/a/a/a/v0/h/e;->n(II)V

    .line 10
    :cond_2
    iget-object v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0x22

    .line 12
    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 13
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->h:I

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->y(I)V

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 14
    :goto_0
    iget-object v2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 15
    iget-object v2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/h/e;->q(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_4
    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x2a

    .line 18
    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 19
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->j:I

    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 20
    :cond_5
    :goto_1
    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 21
    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/h/e;->q(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_6
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    .line 23
    iget-object v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->e:Ljava/lang/Object;

    .line 24
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 25
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ls1/a/a/a/v0/h/c;->c(Ljava/lang/String;)Ls1/a/a/a/v0/h/c;

    move-result-object v0

    .line 26
    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->e:Ljava/lang/Object;

    goto :goto_2

    .line 27
    :cond_7
    check-cast v0, Ls1/a/a/a/v0/h/c;

    :goto_2
    const/16 v1, 0x32

    .line 28
    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 29
    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->m(Ls1/a/a/a/v0/h/c;)V

    .line 30
    :cond_8
    iget-object v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->c:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->d:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->e:Ljava/lang/Object;

    .line 4
    sget-object v0, Ls1/a/a/a/v0/e/a0/a$e$c$c;->b:Ls1/a/a/a/v0/e/a0/a$e$c$c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->f:Ls1/a/a/a/v0/e/a0/a$e$c$c;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    return-void
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->c:I

    invoke-static {v1, v0}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4
    :goto_0
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 5
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->d:I

    invoke-static {v3, v1}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v3, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->f:Ls1/a/a/a/v0/e/a0/a$e$c$c;

    .line 8
    iget v3, v3, Ls1/a/a/a/v0/e/a0/a$e$c$c;->a:I

    .line 9
    invoke-static {v1, v3}, Ls1/a/a/a/v0/h/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    move v1, v2

    move v3, v1

    .line 10
    :goto_1
    iget-object v4, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 11
    iget-object v4, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ls1/a/a/a/v0/h/e;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, v3

    .line 12
    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->g:Ljava/util/List;

    .line 13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 14
    invoke-static {v3}, Ls1/a/a/a/v0/h/e;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_5
    iput v3, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->h:I

    move v1, v2

    .line 16
    :goto_2
    iget-object v3, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 17
    iget-object v3, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ls1/a/a/a/v0/h/e;->d(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    add-int/2addr v0, v1

    .line 18
    iget-object v2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->i:Ljava/util/List;

    .line 19
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 20
    invoke-static {v1}, Ls1/a/a/a/v0/h/e;->d(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 21
    :cond_7
    iput v1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->j:I

    .line 22
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/4 v1, 0x6

    .line 23
    iget-object v2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->e:Ljava/lang/Object;

    .line 24
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 25
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ls1/a/a/a/v0/h/c;->c(Ljava/lang/String;)Ls1/a/a/a/v0/h/c;

    move-result-object v2

    .line 26
    iput-object v2, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->e:Ljava/lang/Object;

    goto :goto_3

    .line 27
    :cond_8
    check-cast v2, Ls1/a/a/a/v0/h/c;

    .line 28
    :goto_3
    invoke-static {v1}, Ls1/a/a/a/v0/h/e;->i(I)I

    move-result v1

    invoke-static {v2}, Ls1/a/a/a/v0/h/e;->a(Ls1/a/a/a/v0/h/c;)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 29
    :cond_9
    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 30
    iput v1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->l:I

    return v1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->k:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Ls1/a/a/a/v0/e/a0/a$e$c;->k:B

    return v1
.end method

.method public newBuilderForType()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$e$c$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/a0/a$e$c$b;-><init>()V

    return-object v0
.end method

.method public toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$e$c$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/a0/a$e$c$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/a0/a$e$c$b;->g(Ls1/a/a/a/v0/e/a0/a$e$c;)Ls1/a/a/a/v0/e/a0/a$e$c$b;

    return-object v0
.end method
