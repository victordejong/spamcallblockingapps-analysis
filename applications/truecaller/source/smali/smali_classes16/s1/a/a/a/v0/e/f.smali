.class public final Ls1/a/a/a/v0/e/f;
.super Ls1/a/a/a/v0/h/h;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/f$b;,
        Ls1/a/a/a/v0/e/f$d;,
        Ls1/a/a/a/v0/e/f$c;
    }
.end annotation


# static fields
.field public static final i:Ls1/a/a/a/v0/e/f;

.field public static j:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ls1/a/a/a/v0/h/c;

.field public b:I

.field public c:Ls1/a/a/a/v0/e/f$c;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ls1/a/a/a/v0/e/h;

.field public f:Ls1/a/a/a/v0/e/f$d;

.field public g:B

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/f$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/f$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/f;->j:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/f;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/f;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/f;->i:Ls1/a/a/a/v0/e/f;

    .line 3
    sget-object v1, Ls1/a/a/a/v0/e/f$c;->b:Ls1/a/a/a/v0/e/f$c;

    iput-object v1, v0, Ls1/a/a/a/v0/e/f;->c:Ls1/a/a/a/v0/e/f$c;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    .line 5
    sget-object v1, Ls1/a/a/a/v0/e/h;->l:Ls1/a/a/a/v0/e/h;

    .line 6
    iput-object v1, v0, Ls1/a/a/a/v0/e/f;->e:Ls1/a/a/a/v0/e/h;

    .line 7
    sget-object v1, Ls1/a/a/a/v0/e/f$d;->b:Ls1/a/a/a/v0/e/f$d;

    iput-object v1, v0, Ls1/a/a/a/v0/e/f;->f:Ls1/a/a/a/v0/e/f$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ls1/a/a/a/v0/e/f;->g:B

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/f;->h:I

    .line 9
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/f;->a:Ls1/a/a/a/v0/h/c;

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
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Ls1/a/a/a/v0/e/f;->g:B

    .line 12
    iput p3, p0, Ls1/a/a/a/v0/e/f;->h:I

    .line 13
    sget-object p3, Ls1/a/a/a/v0/e/f$c;->b:Ls1/a/a/a/v0/e/f$c;

    iput-object p3, p0, Ls1/a/a/a/v0/e/f;->c:Ls1/a/a/a/v0/e/f$c;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    .line 15
    sget-object p3, Ls1/a/a/a/v0/e/h;->l:Ls1/a/a/a/v0/e/h;

    .line 16
    iput-object p3, p0, Ls1/a/a/a/v0/e/f;->e:Ls1/a/a/a/v0/e/h;

    .line 17
    sget-object p3, Ls1/a/a/a/v0/e/f$d;->b:Ls1/a/a/a/v0/e/f$d;

    iput-object p3, p0, Ls1/a/a/a/v0/e/f;->f:Ls1/a/a/a/v0/e/f$d;

    .line 18
    invoke-static {}, Ls1/a/a/a/v0/h/c;->j()Ls1/a/a/a/v0/h/c$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 19
    invoke-static {p3, v0}, Ls1/a/a/a/v0/h/e;->k(Ljava/io/OutputStream;I)Ls1/a/a/a/v0/h/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, 0x2

    if-nez v2, :cond_c

    .line 20
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v5

    if-eqz v5, :cond_a

    const/16 v6, 0x8

    if-eq v5, v6, :cond_8

    const/16 v6, 0x12

    if-eq v5, v6, :cond_6

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_3

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    .line 21
    invoke-virtual {p1, v5, v1}, Ls1/a/a/a/v0/h/d;->r(ILs1/a/a/a/v0/h/e;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 22
    :cond_1
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v6

    .line 23
    invoke-static {v6}, Ls1/a/a/a/v0/e/f$d;->a(I)Ls1/a/a/a/v0/e/f$d;

    move-result-object v7

    if-nez v7, :cond_2

    .line 24
    invoke-virtual {v1, v5}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 25
    invoke-virtual {v1, v6}, Ls1/a/a/a/v0/h/e;->y(I)V

    goto :goto_0

    .line 26
    :cond_2
    iget v5, p0, Ls1/a/a/a/v0/e/f;->b:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Ls1/a/a/a/v0/e/f;->b:I

    .line 27
    iput-object v7, p0, Ls1/a/a/a/v0/e/f;->f:Ls1/a/a/a/v0/e/f$d;

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 28
    iget v6, p0, Ls1/a/a/a/v0/e/f;->b:I

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_4

    .line 29
    iget-object v5, p0, Ls1/a/a/a/v0/e/f;->e:Ls1/a/a/a/v0/e/h;

    .line 30
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v6, Ls1/a/a/a/v0/e/h$b;

    invoke-direct {v6}, Ls1/a/a/a/v0/e/h$b;-><init>()V

    .line 32
    invoke-virtual {v6, v5}, Ls1/a/a/a/v0/e/h$b;->g(Ls1/a/a/a/v0/e/h;)Ls1/a/a/a/v0/e/h$b;

    move-object v5, v6

    .line 33
    :cond_4
    sget-object v6, Ls1/a/a/a/v0/e/h;->m:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v6, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/e/h;

    iput-object v6, p0, Ls1/a/a/a/v0/e/f;->e:Ls1/a/a/a/v0/e/h;

    if-eqz v5, :cond_5

    .line 34
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/e/h$b;->g(Ls1/a/a/a/v0/e/h;)Ls1/a/a/a/v0/e/h$b;

    .line 35
    invoke-virtual {v5}, Ls1/a/a/a/v0/e/h$b;->f()Ls1/a/a/a/v0/e/h;

    move-result-object v5

    iput-object v5, p0, Ls1/a/a/a/v0/e/f;->e:Ls1/a/a/a/v0/e/h;

    .line 36
    :cond_5
    iget v5, p0, Ls1/a/a/a/v0/e/f;->b:I

    or-int/2addr v5, v4

    iput v5, p0, Ls1/a/a/a/v0/e/f;->b:I

    goto :goto_0

    :cond_6
    and-int/lit8 v5, v3, 0x2

    if-eq v5, v4, :cond_7

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 38
    :cond_7
    iget-object v5, p0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    sget-object v6, Ls1/a/a/a/v0/e/h;->m:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v6, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 39
    :cond_8
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v6

    .line 40
    invoke-static {v6}, Ls1/a/a/a/v0/e/f$c;->a(I)Ls1/a/a/a/v0/e/f$c;

    move-result-object v7

    if-nez v7, :cond_9

    .line 41
    invoke-virtual {v1, v5}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 42
    invoke-virtual {v1, v6}, Ls1/a/a/a/v0/h/e;->y(I)V

    goto/16 :goto_0

    .line 43
    :cond_9
    iget v5, p0, Ls1/a/a/a/v0/e/f;->b:I

    or-int/2addr v5, v0

    iput v5, p0, Ls1/a/a/a/v0/e/f;->b:I

    .line 44
    iput-object v7, p0, Ls1/a/a/a/v0/e/f;->c:Ls1/a/a/a/v0/e/f$c;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
    :goto_1
    move v2, v0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 45
    :try_start_1
    new-instance p2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object p0, p2, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 47
    throw p2

    :catch_1
    move-exception p1

    .line 48
    iput-object p0, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 49
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x2

    if-ne p2, v4, :cond_b

    .line 50
    iget-object p2, p0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    .line 51
    :cond_b
    :try_start_2
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 52
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/f;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/f;->a:Ls1/a/a/a/v0/h/c;

    .line 53
    throw p1

    :cond_c
    and-int/lit8 p1, v3, 0x2

    if-ne p1, v4, :cond_d

    .line 54
    iget-object p1, p0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    .line 55
    :cond_d
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

    iput-object p2, p0, Ls1/a/a/a/v0/e/f;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/f;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/h/h;-><init>(Ls1/a/a/a/v0/h/h$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Ls1/a/a/a/v0/e/f;->g:B

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/f;->h:I

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 5
    iput-object p1, p0, Ls1/a/a/a/v0/e/f;->a:Ls1/a/a/a/v0/h/c;

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
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/f;->getSerializedSize()I

    .line 2
    iget v0, p0, Ls1/a/a/a/v0/e/f;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/e/f;->c:Ls1/a/a/a/v0/e/f$c;

    .line 4
    iget v0, v0, Ls1/a/a/a/v0/e/f$c;->a:I

    .line 5
    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->n(II)V

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v2, v1}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/f;->b:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    .line 9
    iget-object v1, p0, Ls1/a/a/a/v0/e/f;->e:Ls1/a/a/a/v0/e/h;

    invoke-virtual {p1, v0, v1}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 10
    :cond_2
    iget v0, p0, Ls1/a/a/a/v0/e/f;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Ls1/a/a/a/v0/e/f;->f:Ls1/a/a/a/v0/e/f$d;

    .line 12
    iget v0, v0, Ls1/a/a/a/v0/e/f$d;->a:I

    .line 13
    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->n(II)V

    .line 14
    :cond_3
    iget-object v0, p0, Ls1/a/a/a/v0/e/f;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/f;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/e/f;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/e/f;->c:Ls1/a/a/a/v0/e/f$c;

    .line 4
    iget v0, v0, Ls1/a/a/a/v0/e/f$c;->a:I

    .line 5
    invoke-static {v1, v0}, Ls1/a/a/a/v0/h/e;->b(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 6
    :goto_0
    iget-object v1, p0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v2, v1, :cond_2

    .line 7
    iget-object v1, p0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/h/p;

    invoke-static {v3, v1}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget v1, p0, Ls1/a/a/a/v0/e/f;->b:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 9
    iget-object v2, p0, Ls1/a/a/a/v0/e/f;->e:Ls1/a/a/a/v0/e/h;

    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget v1, p0, Ls1/a/a/a/v0/e/f;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 11
    iget-object v1, p0, Ls1/a/a/a/v0/e/f;->f:Ls1/a/a/a/v0/e/f$d;

    .line 12
    iget v1, v1, Ls1/a/a/a/v0/e/f$d;->a:I

    .line 13
    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_4
    iget-object v1, p0, Ls1/a/a/a/v0/e/f;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 15
    iput v1, p0, Ls1/a/a/a/v0/e/f;->h:I

    return v1
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/f;->g:B

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
    iget-object v3, p0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3
    iget-object v3, p0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/h;

    .line 4
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/h;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    iput-byte v2, p0, Ls1/a/a/a/v0/e/f;->g:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_3
    iget v0, p0, Ls1/a/a/a/v0/e/f;->b:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    .line 7
    iget-object v0, p0, Ls1/a/a/a/v0/e/f;->e:Ls1/a/a/a/v0/e/h;

    .line 8
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/h;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    iput-byte v2, p0, Ls1/a/a/a/v0/e/f;->g:B

    return v2

    .line 10
    :cond_5
    iput-byte v1, p0, Ls1/a/a/a/v0/e/f;->g:B

    return v1
.end method

.method public newBuilderForType()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/f$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/f$b;-><init>()V

    return-object v0
.end method

.method public toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/f$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/f$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/f$b;->g(Ls1/a/a/a/v0/e/f;)Ls1/a/a/a/v0/e/f$b;

    return-object v0
.end method
