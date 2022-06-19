.class public final Ls1/a/a/a/v0/e/l;
.super Ls1/a/a/a/v0/h/h$d;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$d<",
        "Ls1/a/a/a/v0/e/l;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final k:Ls1/a/a/a/v0/e/l;

.field public static l:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ls1/a/a/a/v0/h/c;

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/i;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/n;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/r;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ls1/a/a/a/v0/e/t;

.field public h:Ls1/a/a/a/v0/e/w;

.field public i:B

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/l$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/l$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/l;->l:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/l;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/l;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/l;->k:Ls1/a/a/a/v0/e/l;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/l;->l()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$d;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ls1/a/a/a/v0/e/l;->i:B

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/l;->j:I

    .line 9
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/l;->b:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/e/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$d;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Ls1/a/a/a/v0/e/l;->i:B

    .line 12
    iput p3, p0, Ls1/a/a/a/v0/e/l;->j:I

    .line 13
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/l;->l()V

    .line 14
    invoke-static {}, Ls1/a/a/a/v0/h/c;->j()Ls1/a/a/a/v0/h/c$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 15
    invoke-static {p3, v0}, Ls1/a/a/a/v0/h/e;->k(Ljava/io/OutputStream;I)Ls1/a/a/a/v0/h/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x4

    if-nez v2, :cond_11

    .line 16
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v6

    if-eqz v6, :cond_d

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_b

    const/16 v7, 0x22

    if-eq v6, v7, :cond_9

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_7

    const/16 v7, 0xf2

    const/4 v8, 0x0

    if-eq v6, v7, :cond_4

    const/16 v7, 0x102

    if-eq v6, v7, :cond_1

    .line 17
    invoke-virtual {p0, p1, v1, p2, v6}, Ls1/a/a/a/v0/h/h$d;->j(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/e;Ls1/a/a/a/v0/h/f;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 18
    :cond_1
    iget v6, p0, Ls1/a/a/a/v0/e/l;->c:I

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_2

    .line 19
    iget-object v6, p0, Ls1/a/a/a/v0/e/l;->h:Ls1/a/a/a/v0/e/w;

    .line 20
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v6}, Ls1/a/a/a/v0/e/w;->d(Ls1/a/a/a/v0/e/w;)Ls1/a/a/a/v0/e/w$b;

    move-result-object v8

    .line 22
    :cond_2
    sget-object v6, Ls1/a/a/a/v0/e/w;->f:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v6, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/e/w;

    iput-object v6, p0, Ls1/a/a/a/v0/e/l;->h:Ls1/a/a/a/v0/e/w;

    if-eqz v8, :cond_3

    .line 23
    invoke-virtual {v8, v6}, Ls1/a/a/a/v0/e/w$b;->g(Ls1/a/a/a/v0/e/w;)Ls1/a/a/a/v0/e/w$b;

    .line 24
    invoke-virtual {v8}, Ls1/a/a/a/v0/e/w$b;->f()Ls1/a/a/a/v0/e/w;

    move-result-object v6

    iput-object v6, p0, Ls1/a/a/a/v0/e/l;->h:Ls1/a/a/a/v0/e/w;

    .line 25
    :cond_3
    iget v6, p0, Ls1/a/a/a/v0/e/l;->c:I

    or-int/2addr v6, v4

    iput v6, p0, Ls1/a/a/a/v0/e/l;->c:I

    goto :goto_0

    .line 26
    :cond_4
    iget v6, p0, Ls1/a/a/a/v0/e/l;->c:I

    and-int/2addr v6, v0

    if-ne v6, v0, :cond_5

    .line 27
    iget-object v6, p0, Ls1/a/a/a/v0/e/l;->g:Ls1/a/a/a/v0/e/t;

    .line 28
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v6}, Ls1/a/a/a/v0/e/t;->d(Ls1/a/a/a/v0/e/t;)Ls1/a/a/a/v0/e/t$b;

    move-result-object v8

    .line 30
    :cond_5
    sget-object v6, Ls1/a/a/a/v0/e/t;->h:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v6, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/e/t;

    iput-object v6, p0, Ls1/a/a/a/v0/e/l;->g:Ls1/a/a/a/v0/e/t;

    if-eqz v8, :cond_6

    .line 31
    invoke-virtual {v8, v6}, Ls1/a/a/a/v0/e/t$b;->g(Ls1/a/a/a/v0/e/t;)Ls1/a/a/a/v0/e/t$b;

    .line 32
    invoke-virtual {v8}, Ls1/a/a/a/v0/e/t$b;->f()Ls1/a/a/a/v0/e/t;

    move-result-object v6

    iput-object v6, p0, Ls1/a/a/a/v0/e/l;->g:Ls1/a/a/a/v0/e/t;

    .line 33
    :cond_6
    iget v6, p0, Ls1/a/a/a/v0/e/l;->c:I

    or-int/2addr v6, v0

    iput v6, p0, Ls1/a/a/a/v0/e/l;->c:I

    goto :goto_0

    :cond_7
    and-int/lit8 v6, v3, 0x4

    if-eq v6, v5, :cond_8

    .line 34
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 35
    :cond_8
    iget-object v6, p0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    sget-object v7, Ls1/a/a/a/v0/e/r;->p:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v7, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v6, v3, 0x2

    if-eq v6, v4, :cond_a

    .line 36
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 37
    :cond_a
    iget-object v6, p0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    sget-object v7, Ls1/a/a/a/v0/e/n;->s:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v7, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    and-int/lit8 v6, v3, 0x1

    if-eq v6, v0, :cond_c

    .line 38
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 39
    :cond_c
    iget-object v6, p0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    sget-object v7, Ls1/a/a/a/v0/e/i;->s:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v7, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_1
    move v2, v0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 40
    :try_start_1
    new-instance p2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p0, p2, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 42
    throw p2

    :catch_1
    move-exception p1

    .line 43
    iput-object p0, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 44
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v0, :cond_e

    .line 45
    iget-object p2, p0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v3, 0x2

    if-ne p2, v4, :cond_f

    .line 46
    iget-object p2, p0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v3, 0x4

    if-ne p2, v5, :cond_10

    .line 47
    iget-object p2, p0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    .line 48
    :cond_10
    :try_start_2
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 49
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/l;->b:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/l;->b:Ls1/a/a/a/v0/h/c;

    .line 50
    iget-object p2, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    invoke-virtual {p2}, Ls1/a/a/a/v0/h/g;->i()V

    .line 51
    throw p1

    :cond_11
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v0, :cond_12

    .line 52
    iget-object p1, p0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    :cond_12
    and-int/lit8 p1, v3, 0x2

    if-ne p1, v4, :cond_13

    .line 53
    iget-object p1, p0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v3, 0x4

    if-ne p1, v5, :cond_14

    .line 54
    iget-object p1, p0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    .line 55
    :cond_14
    :try_start_3
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 56
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/l;->b:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/l;->b:Ls1/a/a/a/v0/h/c;

    .line 57
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
    iput-byte p2, p0, Ls1/a/a/a/v0/e/l;->i:B

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/l;->j:I

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 5
    iput-object p1, p0, Ls1/a/a/a/v0/e/l;->b:Ls1/a/a/a/v0/h/c;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/h/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/l;->getSerializedSize()I

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->i()Ls1/a/a/a/v0/h/h$d$a;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v3, 0x3

    .line 4
    iget-object v4, p0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v3, v4}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 5
    :goto_1
    iget-object v3, p0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x4

    .line 6
    iget-object v4, p0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v3, v4}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_1
    :goto_2
    iget-object v2, p0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x5

    .line 8
    iget-object v3, p0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v2, v3}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9
    :cond_2
    iget v1, p0, Ls1/a/a/a/v0/e/l;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/16 v1, 0x1e

    .line 10
    iget-object v2, p0, Ls1/a/a/a/v0/e/l;->g:Ls1/a/a/a/v0/e/t;

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 11
    :cond_3
    iget v1, p0, Ls1/a/a/a/v0/e/l;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/16 v1, 0x20

    .line 12
    iget-object v2, p0, Ls1/a/a/a/v0/e/l;->h:Ls1/a/a/a/v0/e/w;

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    :cond_4
    const/16 v1, 0xc8

    .line 13
    invoke-virtual {v0, v1, p1}, Ls1/a/a/a/v0/h/h$d$a;->a(ILs1/a/a/a/v0/h/e;)V

    .line 14
    iget-object v0, p0, Ls1/a/a/a/v0/e/l;->b:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Ls1/a/a/a/v0/h/p;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/l;->k:Ls1/a/a/a/v0/e/l;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/l;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v3, 0x3

    .line 3
    iget-object v4, p0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/h/p;

    invoke-static {v3, v4}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 4
    :goto_1
    iget-object v3, p0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    const/4 v3, 0x4

    .line 5
    iget-object v4, p0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/h/p;

    invoke-static {v3, v4}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_2
    :goto_2
    iget-object v1, p0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x5

    .line 7
    iget-object v3, p0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/h/p;

    invoke-static {v1, v3}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8
    :cond_3
    iget v0, p0, Ls1/a/a/a/v0/e/l;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/16 v0, 0x1e

    .line 9
    iget-object v1, p0, Ls1/a/a/a/v0/e/l;->g:Ls1/a/a/a/v0/e/t;

    invoke-static {v0, v1}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v0

    add-int/2addr v2, v0

    .line 10
    :cond_4
    iget v0, p0, Ls1/a/a/a/v0/e/l;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/16 v0, 0x20

    .line 11
    iget-object v1, p0, Ls1/a/a/a/v0/e/l;->h:Ls1/a/a/a/v0/e/w;

    invoke-static {v0, v1}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v0

    add-int/2addr v2, v0

    .line 12
    :cond_5
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->e()I

    move-result v0

    add-int/2addr v0, v2

    .line 13
    iget-object v1, p0, Ls1/a/a/a/v0/e/l;->b:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Ls1/a/a/a/v0/e/l;->j:I

    return v1
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/l;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    .line 2
    :goto_0
    iget-object v3, p0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3
    iget-object v3, p0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/i;

    .line 4
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/i;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    iput-byte v2, p0, Ls1/a/a/a/v0/e/l;->i:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 6
    :goto_1
    iget-object v3, p0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 7
    iget-object v3, p0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/n;

    .line 8
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/n;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 9
    iput-byte v2, p0, Ls1/a/a/a/v0/e/l;->i:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 10
    :goto_2
    iget-object v3, p0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 11
    iget-object v3, p0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/r;

    .line 12
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/r;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 13
    iput-byte v2, p0, Ls1/a/a/a/v0/e/l;->i:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 14
    :cond_7
    iget v0, p0, Ls1/a/a/a/v0/e/l;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v2

    :goto_3
    if-eqz v0, :cond_9

    .line 15
    iget-object v0, p0, Ls1/a/a/a/v0/e/l;->g:Ls1/a/a/a/v0/e/t;

    .line 16
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/t;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 17
    iput-byte v2, p0, Ls1/a/a/a/v0/e/l;->i:B

    return v2

    .line 18
    :cond_9
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->d()Z

    move-result v0

    if-nez v0, :cond_a

    .line 19
    iput-byte v2, p0, Ls1/a/a/a/v0/e/l;->i:B

    return v2

    .line 20
    :cond_a
    iput-byte v1, p0, Ls1/a/a/a/v0/e/l;->i:B

    return v1
.end method

.method public final l()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    .line 4
    sget-object v0, Ls1/a/a/a/v0/e/t;->g:Ls1/a/a/a/v0/e/t;

    .line 5
    iput-object v0, p0, Ls1/a/a/a/v0/e/l;->g:Ls1/a/a/a/v0/e/t;

    .line 6
    sget-object v0, Ls1/a/a/a/v0/e/w;->e:Ls1/a/a/a/v0/e/w;

    .line 7
    iput-object v0, p0, Ls1/a/a/a/v0/e/l;->h:Ls1/a/a/a/v0/e/w;

    return-void
.end method

.method public newBuilderForType()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/l$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/l$b;-><init>()V

    return-object v0
.end method

.method public toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/l$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/l$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/l$b;->h(Ls1/a/a/a/v0/e/l;)Ls1/a/a/a/v0/e/l$b;

    return-object v0
.end method
