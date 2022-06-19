.class public final Ls1/a/a/a/v0/e/h;
.super Ls1/a/a/a/v0/h/h;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/h$b;,
        Ls1/a/a/a/v0/e/h$c;
    }
.end annotation


# static fields
.field public static final l:Ls1/a/a/a/v0/e/h;

.field public static m:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ls1/a/a/a/v0/h/c;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ls1/a/a/a/v0/e/h$c;

.field public f:Ls1/a/a/a/v0/e/q;

.field public g:I

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public j:B

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/h$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/h$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/h;->m:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/h;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/h;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/h;->l:Ls1/a/a/a/v0/e/h;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/h;->d()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ls1/a/a/a/v0/e/h;->j:B

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/h;->k:I

    .line 9
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/h;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/e/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Ls1/a/a/a/v0/e/h;->j:B

    .line 12
    iput p3, p0, Ls1/a/a/a/v0/e/h;->k:I

    .line 13
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/h;->d()V

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
    const/16 v4, 0x20

    const/16 v5, 0x40

    if-nez v2, :cond_10

    .line 16
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v6

    if-eqz v6, :cond_d

    const/16 v7, 0x8

    if-eq v6, v7, :cond_c

    const/16 v8, 0x10

    if-eq v6, v8, :cond_b

    const/16 v9, 0x18

    if-eq v6, v9, :cond_9

    const/16 v9, 0x22

    if-eq v6, v9, :cond_6

    const/16 v7, 0x28

    if-eq v6, v7, :cond_5

    const/16 v7, 0x32

    if-eq v6, v7, :cond_3

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_1

    .line 17
    invoke-virtual {p1, v6, v1}, Ls1/a/a/a/v0/h/d;->r(ILs1/a/a/a/v0/h/e;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_1
    and-int/lit8 v6, v3, 0x40

    if-eq v6, v5, :cond_2

    .line 18
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    .line 19
    :cond_2
    iget-object v6, p0, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    sget-object v7, Ls1/a/a/a/v0/e/h;->m:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v7, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    and-int/lit8 v6, v3, 0x20

    if-eq v6, v4, :cond_4

    .line 20
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 21
    :cond_4
    iget-object v6, p0, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    sget-object v7, Ls1/a/a/a/v0/e/h;->m:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v7, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_5
    iget v6, p0, Ls1/a/a/a/v0/e/h;->b:I

    or-int/2addr v6, v8

    iput v6, p0, Ls1/a/a/a/v0/e/h;->b:I

    .line 23
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v6

    .line 24
    iput v6, p0, Ls1/a/a/a/v0/e/h;->g:I

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    .line 25
    iget v8, p0, Ls1/a/a/a/v0/e/h;->b:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_7

    .line 26
    iget-object v6, p0, Ls1/a/a/a/v0/e/h;->f:Ls1/a/a/a/v0/e/q;

    invoke-virtual {v6}, Ls1/a/a/a/v0/e/q;->s()Ls1/a/a/a/v0/e/q$c;

    move-result-object v6

    .line 27
    :cond_7
    sget-object v8, Ls1/a/a/a/v0/e/q;->u:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v8, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/e/q;

    iput-object v8, p0, Ls1/a/a/a/v0/e/h;->f:Ls1/a/a/a/v0/e/q;

    if-eqz v6, :cond_8

    .line 28
    invoke-virtual {v6, v8}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

    .line 29
    invoke-virtual {v6}, Ls1/a/a/a/v0/e/q$c;->g()Ls1/a/a/a/v0/e/q;

    move-result-object v6

    iput-object v6, p0, Ls1/a/a/a/v0/e/h;->f:Ls1/a/a/a/v0/e/q;

    .line 30
    :cond_8
    iget v6, p0, Ls1/a/a/a/v0/e/h;->b:I

    or-int/2addr v6, v7

    iput v6, p0, Ls1/a/a/a/v0/e/h;->b:I

    goto/16 :goto_0

    .line 31
    :cond_9
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v7

    .line 32
    invoke-static {v7}, Ls1/a/a/a/v0/e/h$c;->a(I)Ls1/a/a/a/v0/e/h$c;

    move-result-object v8

    if-nez v8, :cond_a

    .line 33
    invoke-virtual {v1, v6}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 34
    invoke-virtual {v1, v7}, Ls1/a/a/a/v0/h/e;->y(I)V

    goto/16 :goto_0

    .line 35
    :cond_a
    iget v6, p0, Ls1/a/a/a/v0/e/h;->b:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Ls1/a/a/a/v0/e/h;->b:I

    .line 36
    iput-object v8, p0, Ls1/a/a/a/v0/e/h;->e:Ls1/a/a/a/v0/e/h$c;

    goto/16 :goto_0

    .line 37
    :cond_b
    iget v6, p0, Ls1/a/a/a/v0/e/h;->b:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Ls1/a/a/a/v0/e/h;->b:I

    .line 38
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v6

    .line 39
    iput v6, p0, Ls1/a/a/a/v0/e/h;->d:I

    goto/16 :goto_0

    .line 40
    :cond_c
    iget v6, p0, Ls1/a/a/a/v0/e/h;->b:I

    or-int/2addr v6, v0

    iput v6, p0, Ls1/a/a/a/v0/e/h;->b:I

    .line 41
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v6

    .line 42
    iput v6, p0, Ls1/a/a/a/v0/e/h;->c:I
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

    .line 43
    :try_start_1
    new-instance p2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p0, p2, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 45
    throw p2

    :catch_1
    move-exception p1

    .line 46
    iput-object p0, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 47
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x20

    if-ne p2, v4, :cond_e

    .line 48
    iget-object p2, p0, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v3, 0x40

    if-ne p2, v5, :cond_f

    .line 49
    iget-object p2, p0, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    .line 50
    :cond_f
    :try_start_2
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 51
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/h;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/h;->a:Ls1/a/a/a/v0/h/c;

    .line 52
    throw p1

    :cond_10
    and-int/lit8 p1, v3, 0x20

    if-ne p1, v4, :cond_11

    .line 53
    iget-object p1, p0, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    :cond_11
    and-int/lit8 p1, v3, 0x40

    if-ne p1, v5, :cond_12

    .line 54
    iget-object p1, p0, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    .line 55
    :cond_12
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

    iput-object p2, p0, Ls1/a/a/a/v0/e/h;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/h;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/h/h;-><init>(Ls1/a/a/a/v0/h/h$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Ls1/a/a/a/v0/e/h;->j:B

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/h;->k:I

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 5
    iput-object p1, p0, Ls1/a/a/a/v0/e/h;->a:Ls1/a/a/a/v0/h/c;

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
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/h;->getSerializedSize()I

    .line 2
    iget v0, p0, Ls1/a/a/a/v0/e/h;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Ls1/a/a/a/v0/e/h;->c:I

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 4
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/e/h;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Ls1/a/a/a/v0/e/h;->d:I

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 6
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/h;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    iget-object v2, p0, Ls1/a/a/a/v0/e/h;->e:Ls1/a/a/a/v0/e/h$c;

    .line 8
    iget v2, v2, Ls1/a/a/a/v0/e/h$c;->a:I

    .line 9
    invoke-virtual {p1, v0, v2}, Ls1/a/a/a/v0/h/e;->n(II)V

    .line 10
    :cond_2
    iget v0, p0, Ls1/a/a/a/v0/e/h;->b:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 11
    iget-object v0, p0, Ls1/a/a/a/v0/e/h;->f:Ls1/a/a/a/v0/e/q;

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 12
    :cond_3
    iget v0, p0, Ls1/a/a/a/v0/e/h;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 13
    iget v1, p0, Ls1/a/a/a/v0/e/h;->g:I

    invoke-virtual {p1, v0, v1}, Ls1/a/a/a/v0/h/e;->p(II)V

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    .line 14
    :goto_0
    iget-object v2, p0, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 15
    iget-object v3, p0, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v2, v3}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_5
    :goto_1
    iget-object v1, p0, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x7

    .line 17
    iget-object v2, p0, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    :cond_6
    iget-object v0, p0, Ls1/a/a/a/v0/e/h;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ls1/a/a/a/v0/e/h;->c:I

    .line 2
    iput v0, p0, Ls1/a/a/a/v0/e/h;->d:I

    .line 3
    sget-object v1, Ls1/a/a/a/v0/e/h$c;->b:Ls1/a/a/a/v0/e/h$c;

    iput-object v1, p0, Ls1/a/a/a/v0/e/h;->e:Ls1/a/a/a/v0/e/h$c;

    .line 4
    sget-object v1, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    .line 5
    iput-object v1, p0, Ls1/a/a/a/v0/e/h;->f:Ls1/a/a/a/v0/e/q;

    .line 6
    iput v0, p0, Ls1/a/a/a/v0/e/h;->g:I

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    return-void
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/h;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/e/h;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Ls1/a/a/a/v0/e/h;->c:I

    invoke-static {v1, v0}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4
    :goto_0
    iget v1, p0, Ls1/a/a/a/v0/e/h;->b:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 5
    iget v1, p0, Ls1/a/a/a/v0/e/h;->d:I

    invoke-static {v3, v1}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Ls1/a/a/a/v0/e/h;->b:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v4, p0, Ls1/a/a/a/v0/e/h;->e:Ls1/a/a/a/v0/e/h$c;

    .line 8
    iget v4, v4, Ls1/a/a/a/v0/e/h$c;->a:I

    .line 9
    invoke-static {v1, v4}, Ls1/a/a/a/v0/h/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget v1, p0, Ls1/a/a/a/v0/e/h;->b:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 11
    iget-object v1, p0, Ls1/a/a/a/v0/e/h;->f:Ls1/a/a/a/v0/e/q;

    invoke-static {v3, v1}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget v1, p0, Ls1/a/a/a/v0/e/h;->b:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    .line 13
    iget v3, p0, Ls1/a/a/a/v0/e/h;->g:I

    invoke-static {v1, v3}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    move v1, v2

    .line 14
    :goto_1
    iget-object v3, p0, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    const/4 v3, 0x6

    .line 15
    iget-object v4, p0, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/h/p;

    invoke-static {v3, v4}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16
    :cond_6
    :goto_2
    iget-object v1, p0, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    const/4 v1, 0x7

    .line 17
    iget-object v3, p0, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/h/p;

    invoke-static {v1, v3}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 18
    :cond_7
    iget-object v1, p0, Ls1/a/a/a/v0/e/h;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    iput v1, p0, Ls1/a/a/a/v0/e/h;->k:I

    return v1
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/h;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/h;->b:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/e/h;->f:Ls1/a/a/a/v0/e/q;

    .line 4
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iput-byte v2, p0, Ls1/a/a/a/v0/e/h;->j:B

    return v2

    :cond_3
    move v0, v2

    .line 6
    :goto_1
    iget-object v3, p0, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 7
    iget-object v3, p0, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/h;

    .line 8
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/h;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 9
    iput-byte v2, p0, Ls1/a/a/a/v0/e/h;->j:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 10
    :goto_2
    iget-object v3, p0, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 11
    iget-object v3, p0, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/h;

    .line 12
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/h;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 13
    iput-byte v2, p0, Ls1/a/a/a/v0/e/h;->j:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 14
    :cond_7
    iput-byte v1, p0, Ls1/a/a/a/v0/e/h;->j:B

    return v1
.end method

.method public newBuilderForType()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/h$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/h$b;-><init>()V

    return-object v0
.end method

.method public toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/h$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/h$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/h$b;->g(Ls1/a/a/a/v0/e/h;)Ls1/a/a/a/v0/e/h$b;

    return-object v0
.end method
