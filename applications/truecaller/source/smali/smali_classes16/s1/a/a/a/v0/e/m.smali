.class public final Ls1/a/a/a/v0/e/m;
.super Ls1/a/a/a/v0/h/h$d;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$d<",
        "Ls1/a/a/a/v0/e/m;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final j:Ls1/a/a/a/v0/e/m;

.field public static k:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ls1/a/a/a/v0/h/c;

.field public c:I

.field public d:Ls1/a/a/a/v0/e/p;

.field public e:Ls1/a/a/a/v0/e/o;

.field public f:Ls1/a/a/a/v0/e/l;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/c;",
            ">;"
        }
    .end annotation
.end field

.field public h:B

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/m$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/m$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/m;->k:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/m;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/m;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/m;->j:Ls1/a/a/a/v0/e/m;

    .line 3
    sget-object v1, Ls1/a/a/a/v0/e/p;->e:Ls1/a/a/a/v0/e/p;

    .line 4
    iput-object v1, v0, Ls1/a/a/a/v0/e/m;->d:Ls1/a/a/a/v0/e/p;

    .line 5
    sget-object v1, Ls1/a/a/a/v0/e/o;->e:Ls1/a/a/a/v0/e/o;

    .line 6
    iput-object v1, v0, Ls1/a/a/a/v0/e/m;->e:Ls1/a/a/a/v0/e/o;

    .line 7
    sget-object v1, Ls1/a/a/a/v0/e/l;->k:Ls1/a/a/a/v0/e/l;

    .line 8
    iput-object v1, v0, Ls1/a/a/a/v0/e/m;->f:Ls1/a/a/a/v0/e/l;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$d;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ls1/a/a/a/v0/e/m;->h:B

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/m;->i:I

    .line 9
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/m;->b:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/e/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$d;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Ls1/a/a/a/v0/e/m;->h:B

    .line 12
    iput p3, p0, Ls1/a/a/a/v0/e/m;->i:I

    .line 13
    sget-object p3, Ls1/a/a/a/v0/e/p;->e:Ls1/a/a/a/v0/e/p;

    .line 14
    iput-object p3, p0, Ls1/a/a/a/v0/e/m;->d:Ls1/a/a/a/v0/e/p;

    .line 15
    sget-object p3, Ls1/a/a/a/v0/e/o;->e:Ls1/a/a/a/v0/e/o;

    .line 16
    iput-object p3, p0, Ls1/a/a/a/v0/e/m;->e:Ls1/a/a/a/v0/e/o;

    .line 17
    sget-object p3, Ls1/a/a/a/v0/e/l;->k:Ls1/a/a/a/v0/e/l;

    .line 18
    iput-object p3, p0, Ls1/a/a/a/v0/e/m;->f:Ls1/a/a/a/v0/e/l;

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    .line 20
    invoke-static {}, Ls1/a/a/a/v0/h/c;->j()Ls1/a/a/a/v0/h/c$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 21
    invoke-static {p3, v0}, Ls1/a/a/a/v0/h/e;->k(Ljava/io/OutputStream;I)Ls1/a/a/a/v0/h/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    const/16 v4, 0x8

    if-nez v2, :cond_e

    .line 22
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eq v5, v6, :cond_9

    const/16 v6, 0x12

    if-eq v5, v6, :cond_6

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_3

    const/16 v6, 0x22

    if-eq v5, v6, :cond_1

    .line 23
    invoke-virtual {p0, p1, v1, p2, v5}, Ls1/a/a/a/v0/h/h$d;->j(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/e;Ls1/a/a/a/v0/h/f;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_1
    and-int/lit8 v5, v3, 0x8

    if-eq v5, v4, :cond_2

    .line 24
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 25
    :cond_2
    iget-object v5, p0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    sget-object v6, Ls1/a/a/a/v0/e/c;->z:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v6, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_3
    iget v5, p0, Ls1/a/a/a/v0/e/m;->c:I

    const/4 v6, 0x4

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_4

    .line 27
    iget-object v5, p0, Ls1/a/a/a/v0/e/m;->f:Ls1/a/a/a/v0/e/l;

    .line 28
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v7, Ls1/a/a/a/v0/e/l$b;

    invoke-direct {v7}, Ls1/a/a/a/v0/e/l$b;-><init>()V

    .line 30
    invoke-virtual {v7, v5}, Ls1/a/a/a/v0/e/l$b;->h(Ls1/a/a/a/v0/e/l;)Ls1/a/a/a/v0/e/l$b;

    .line 31
    :cond_4
    sget-object v5, Ls1/a/a/a/v0/e/l;->l:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v5, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/e/l;

    iput-object v5, p0, Ls1/a/a/a/v0/e/m;->f:Ls1/a/a/a/v0/e/l;

    if-eqz v7, :cond_5

    .line 32
    invoke-virtual {v7, v5}, Ls1/a/a/a/v0/e/l$b;->h(Ls1/a/a/a/v0/e/l;)Ls1/a/a/a/v0/e/l$b;

    .line 33
    invoke-virtual {v7}, Ls1/a/a/a/v0/e/l$b;->g()Ls1/a/a/a/v0/e/l;

    move-result-object v5

    iput-object v5, p0, Ls1/a/a/a/v0/e/m;->f:Ls1/a/a/a/v0/e/l;

    .line 34
    :cond_5
    iget v5, p0, Ls1/a/a/a/v0/e/m;->c:I

    or-int/2addr v5, v6

    iput v5, p0, Ls1/a/a/a/v0/e/m;->c:I

    goto :goto_0

    .line 35
    :cond_6
    iget v5, p0, Ls1/a/a/a/v0/e/m;->c:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_7

    .line 36
    iget-object v5, p0, Ls1/a/a/a/v0/e/m;->e:Ls1/a/a/a/v0/e/o;

    .line 37
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v7, Ls1/a/a/a/v0/e/o$b;

    invoke-direct {v7}, Ls1/a/a/a/v0/e/o$b;-><init>()V

    .line 39
    invoke-virtual {v7, v5}, Ls1/a/a/a/v0/e/o$b;->g(Ls1/a/a/a/v0/e/o;)Ls1/a/a/a/v0/e/o$b;

    .line 40
    :cond_7
    sget-object v5, Ls1/a/a/a/v0/e/o;->f:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v5, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/e/o;

    iput-object v5, p0, Ls1/a/a/a/v0/e/m;->e:Ls1/a/a/a/v0/e/o;

    if-eqz v7, :cond_8

    .line 41
    invoke-virtual {v7, v5}, Ls1/a/a/a/v0/e/o$b;->g(Ls1/a/a/a/v0/e/o;)Ls1/a/a/a/v0/e/o$b;

    .line 42
    invoke-virtual {v7}, Ls1/a/a/a/v0/e/o$b;->f()Ls1/a/a/a/v0/e/o;

    move-result-object v5

    iput-object v5, p0, Ls1/a/a/a/v0/e/m;->e:Ls1/a/a/a/v0/e/o;

    .line 43
    :cond_8
    iget v5, p0, Ls1/a/a/a/v0/e/m;->c:I

    or-int/2addr v5, v6

    iput v5, p0, Ls1/a/a/a/v0/e/m;->c:I

    goto/16 :goto_0

    .line 44
    :cond_9
    iget v5, p0, Ls1/a/a/a/v0/e/m;->c:I

    and-int/2addr v5, v0

    if-ne v5, v0, :cond_a

    .line 45
    iget-object v5, p0, Ls1/a/a/a/v0/e/m;->d:Ls1/a/a/a/v0/e/p;

    .line 46
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v7, Ls1/a/a/a/v0/e/p$b;

    invoke-direct {v7}, Ls1/a/a/a/v0/e/p$b;-><init>()V

    .line 48
    invoke-virtual {v7, v5}, Ls1/a/a/a/v0/e/p$b;->g(Ls1/a/a/a/v0/e/p;)Ls1/a/a/a/v0/e/p$b;

    .line 49
    :cond_a
    sget-object v5, Ls1/a/a/a/v0/e/p;->f:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v5, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/e/p;

    iput-object v5, p0, Ls1/a/a/a/v0/e/m;->d:Ls1/a/a/a/v0/e/p;

    if-eqz v7, :cond_b

    .line 50
    invoke-virtual {v7, v5}, Ls1/a/a/a/v0/e/p$b;->g(Ls1/a/a/a/v0/e/p;)Ls1/a/a/a/v0/e/p$b;

    .line 51
    invoke-virtual {v7}, Ls1/a/a/a/v0/e/p$b;->f()Ls1/a/a/a/v0/e/p;

    move-result-object v5

    iput-object v5, p0, Ls1/a/a/a/v0/e/m;->d:Ls1/a/a/a/v0/e/p;

    .line 52
    :cond_b
    iget v5, p0, Ls1/a/a/a/v0/e/m;->c:I

    or-int/2addr v5, v0

    iput v5, p0, Ls1/a/a/a/v0/e/m;->c:I
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    :goto_1
    move v2, v0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 53
    :try_start_1
    new-instance p2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 54
    iput-object p0, p2, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 55
    throw p2

    :catch_1
    move-exception p1

    .line 56
    iput-object p0, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 57
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x8

    if-ne p2, v4, :cond_d

    .line 58
    iget-object p2, p0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    .line 59
    :cond_d
    :try_start_2
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 60
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/m;->b:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/m;->b:Ls1/a/a/a/v0/h/c;

    .line 61
    iget-object p2, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    invoke-virtual {p2}, Ls1/a/a/a/v0/h/g;->i()V

    .line 62
    throw p1

    :cond_e
    and-int/lit8 p1, v3, 0x8

    if-ne p1, v4, :cond_f

    .line 63
    iget-object p1, p0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    .line 64
    :cond_f
    :try_start_3
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 65
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/m;->b:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/m;->b:Ls1/a/a/a/v0/h/c;

    .line 66
    iget-object p1, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    invoke-virtual {p1}, Ls1/a/a/a/v0/h/g;->i()V

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/h$c;Ls1/a/a/a/v0/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/h/h$d;-><init>(Ls1/a/a/a/v0/h/h$c;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Ls1/a/a/a/v0/e/m;->h:B

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/m;->i:I

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 5
    iput-object p1, p0, Ls1/a/a/a/v0/e/m;->b:Ls1/a/a/a/v0/h/c;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/h/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/m;->getSerializedSize()I

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->i()Ls1/a/a/a/v0/h/h$d$a;

    move-result-object v0

    .line 3
    iget v1, p0, Ls1/a/a/a/v0/e/m;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/e/m;->d:Ls1/a/a/a/v0/e/p;

    invoke-virtual {p1, v2, v1}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 5
    :cond_0
    iget v1, p0, Ls1/a/a/a/v0/e/m;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, p0, Ls1/a/a/a/v0/e/m;->e:Ls1/a/a/a/v0/e/o;

    invoke-virtual {p1, v2, v1}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 7
    :cond_1
    iget v1, p0, Ls1/a/a/a/v0/e/m;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 8
    iget-object v3, p0, Ls1/a/a/a/v0/e/m;->f:Ls1/a/a/a/v0/e/l;

    invoke-virtual {p1, v1, v3}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    :cond_2
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 10
    iget-object v3, p0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v2, v3}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0xc8

    .line 11
    invoke-virtual {v0, v1, p1}, Ls1/a/a/a/v0/h/h$d$a;->a(ILs1/a/a/a/v0/h/e;)V

    .line 12
    iget-object v0, p0, Ls1/a/a/a/v0/e/m;->b:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Ls1/a/a/a/v0/h/p;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/m;->j:Ls1/a/a/a/v0/e/m;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/m;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/e/m;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/e/m;->d:Ls1/a/a/a/v0/e/p;

    invoke-static {v1, v0}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4
    :goto_0
    iget v1, p0, Ls1/a/a/a/v0/e/m;->c:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 5
    iget-object v1, p0, Ls1/a/a/a/v0/e/m;->e:Ls1/a/a/a/v0/e/o;

    invoke-static {v3, v1}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Ls1/a/a/a/v0/e/m;->c:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v4, p0, Ls1/a/a/a/v0/e/m;->f:Ls1/a/a/a/v0/e/l;

    invoke-static {v1, v4}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    :goto_1
    iget-object v1, p0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 9
    iget-object v1, p0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/h/p;

    invoke-static {v3, v1}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->e()I

    move-result v1

    add-int/2addr v1, v0

    .line 11
    iget-object v0, p0, Ls1/a/a/a/v0/e/m;->b:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Ls1/a/a/a/v0/e/m;->i:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/m;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/m;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/e/m;->e:Ls1/a/a/a/v0/e/o;

    .line 4
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/o;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iput-byte v2, p0, Ls1/a/a/a/v0/e/m;->h:B

    return v2

    .line 6
    :cond_3
    iget v0, p0, Ls1/a/a/a/v0/e/m;->c:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    .line 7
    iget-object v0, p0, Ls1/a/a/a/v0/e/m;->f:Ls1/a/a/a/v0/e/l;

    .line 8
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/l;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    iput-byte v2, p0, Ls1/a/a/a/v0/e/m;->h:B

    return v2

    :cond_5
    move v0, v2

    .line 10
    :goto_2
    iget-object v3, p0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 11
    iget-object v3, p0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/c;

    .line 12
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/c;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 13
    iput-byte v2, p0, Ls1/a/a/a/v0/e/m;->h:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 14
    :cond_7
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->d()Z

    move-result v0

    if-nez v0, :cond_8

    .line 15
    iput-byte v2, p0, Ls1/a/a/a/v0/e/m;->h:B

    return v2

    .line 16
    :cond_8
    iput-byte v1, p0, Ls1/a/a/a/v0/e/m;->h:B

    return v1
.end method

.method public newBuilderForType()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/m$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/m$b;-><init>()V

    return-object v0
.end method

.method public toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/m$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/m$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/m$b;->h(Ls1/a/a/a/v0/e/m;)Ls1/a/a/a/v0/e/m$b;

    return-object v0
.end method
