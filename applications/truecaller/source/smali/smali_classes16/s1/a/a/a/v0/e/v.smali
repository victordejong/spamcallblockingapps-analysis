.class public final Ls1/a/a/a/v0/e/v;
.super Ls1/a/a/a/v0/h/h;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/v$b;,
        Ls1/a/a/a/v0/e/v$d;,
        Ls1/a/a/a/v0/e/v$c;
    }
.end annotation


# static fields
.field public static final k:Ls1/a/a/a/v0/e/v;

.field public static l:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ls1/a/a/a/v0/h/c;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ls1/a/a/a/v0/e/v$c;

.field public f:I

.field public g:I

.field public h:Ls1/a/a/a/v0/e/v$d;

.field public i:B

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/v$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/v$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/v;->l:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/v;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/v;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/v;->k:Ls1/a/a/a/v0/e/v;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Ls1/a/a/a/v0/e/v;->c:I

    .line 4
    iput v1, v0, Ls1/a/a/a/v0/e/v;->d:I

    .line 5
    sget-object v2, Ls1/a/a/a/v0/e/v$c;->c:Ls1/a/a/a/v0/e/v$c;

    iput-object v2, v0, Ls1/a/a/a/v0/e/v;->e:Ls1/a/a/a/v0/e/v$c;

    .line 6
    iput v1, v0, Ls1/a/a/a/v0/e/v;->f:I

    .line 7
    iput v1, v0, Ls1/a/a/a/v0/e/v;->g:I

    .line 8
    sget-object v1, Ls1/a/a/a/v0/e/v$d;->b:Ls1/a/a/a/v0/e/v$d;

    iput-object v1, v0, Ls1/a/a/a/v0/e/v;->h:Ls1/a/a/a/v0/e/v$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ls1/a/a/a/v0/e/v;->i:B

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/v;->j:I

    .line 9
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/v;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/e/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    const/4 p2, -0x1

    .line 11
    iput-byte p2, p0, Ls1/a/a/a/v0/e/v;->i:B

    .line 12
    iput p2, p0, Ls1/a/a/a/v0/e/v;->j:I

    const/4 p2, 0x0

    .line 13
    iput p2, p0, Ls1/a/a/a/v0/e/v;->c:I

    .line 14
    iput p2, p0, Ls1/a/a/a/v0/e/v;->d:I

    .line 15
    sget-object p3, Ls1/a/a/a/v0/e/v$c;->c:Ls1/a/a/a/v0/e/v$c;

    iput-object p3, p0, Ls1/a/a/a/v0/e/v;->e:Ls1/a/a/a/v0/e/v$c;

    .line 16
    iput p2, p0, Ls1/a/a/a/v0/e/v;->f:I

    .line 17
    iput p2, p0, Ls1/a/a/a/v0/e/v;->g:I

    .line 18
    sget-object p3, Ls1/a/a/a/v0/e/v$d;->b:Ls1/a/a/a/v0/e/v$d;

    iput-object p3, p0, Ls1/a/a/a/v0/e/v;->h:Ls1/a/a/a/v0/e/v$d;

    .line 19
    invoke-static {}, Ls1/a/a/a/v0/h/c;->j()Ls1/a/a/a/v0/h/c$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 20
    invoke-static {p3, v0}, Ls1/a/a/a/v0/h/e;->k(Ljava/io/OutputStream;I)Ls1/a/a/a/v0/h/e;

    move-result-object v1

    :cond_0
    :goto_0
    if-nez p2, :cond_a

    .line 21
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v2

    if-eqz v2, :cond_9

    const/16 v3, 0x8

    if-eq v2, v3, :cond_8

    const/16 v4, 0x10

    if-eq v2, v4, :cond_7

    const/16 v5, 0x18

    if-eq v2, v5, :cond_5

    const/16 v5, 0x20

    if-eq v2, v5, :cond_4

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    .line 22
    invoke-virtual {p1, v2, v1}, Ls1/a/a/a/v0/h/d;->r(ILs1/a/a/a/v0/h/e;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v3

    .line 24
    invoke-static {v3}, Ls1/a/a/a/v0/e/v$d;->a(I)Ls1/a/a/a/v0/e/v$d;

    move-result-object v4

    if-nez v4, :cond_2

    .line 25
    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 26
    invoke-virtual {v1, v3}, Ls1/a/a/a/v0/h/e;->y(I)V

    goto :goto_0

    .line 27
    :cond_2
    iget v2, p0, Ls1/a/a/a/v0/e/v;->b:I

    or-int/2addr v2, v5

    iput v2, p0, Ls1/a/a/a/v0/e/v;->b:I

    .line 28
    iput-object v4, p0, Ls1/a/a/a/v0/e/v;->h:Ls1/a/a/a/v0/e/v$d;

    goto :goto_0

    .line 29
    :cond_3
    iget v2, p0, Ls1/a/a/a/v0/e/v;->b:I

    or-int/2addr v2, v4

    iput v2, p0, Ls1/a/a/a/v0/e/v;->b:I

    .line 30
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v2

    .line 31
    iput v2, p0, Ls1/a/a/a/v0/e/v;->g:I

    goto :goto_0

    .line 32
    :cond_4
    iget v2, p0, Ls1/a/a/a/v0/e/v;->b:I

    or-int/2addr v2, v3

    iput v2, p0, Ls1/a/a/a/v0/e/v;->b:I

    .line 33
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v2

    .line 34
    iput v2, p0, Ls1/a/a/a/v0/e/v;->f:I

    goto :goto_0

    .line 35
    :cond_5
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v3

    .line 36
    invoke-static {v3}, Ls1/a/a/a/v0/e/v$c;->a(I)Ls1/a/a/a/v0/e/v$c;

    move-result-object v4

    if-nez v4, :cond_6

    .line 37
    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 38
    invoke-virtual {v1, v3}, Ls1/a/a/a/v0/h/e;->y(I)V

    goto :goto_0

    .line 39
    :cond_6
    iget v2, p0, Ls1/a/a/a/v0/e/v;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Ls1/a/a/a/v0/e/v;->b:I

    .line 40
    iput-object v4, p0, Ls1/a/a/a/v0/e/v;->e:Ls1/a/a/a/v0/e/v$c;

    goto :goto_0

    .line 41
    :cond_7
    iget v2, p0, Ls1/a/a/a/v0/e/v;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Ls1/a/a/a/v0/e/v;->b:I

    .line 42
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v2

    .line 43
    iput v2, p0, Ls1/a/a/a/v0/e/v;->d:I

    goto :goto_0

    .line 44
    :cond_8
    iget v2, p0, Ls1/a/a/a/v0/e/v;->b:I

    or-int/2addr v2, v0

    iput v2, p0, Ls1/a/a/a/v0/e/v;->b:I

    .line 45
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v2

    .line 46
    iput v2, p0, Ls1/a/a/a/v0/e/v;->c:I
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    move p2, v0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 47
    :try_start_1
    new-instance p2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p0, p2, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 49
    throw p2

    :catch_1
    move-exception p1

    .line 50
    iput-object p0, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 51
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 53
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/v;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/v;->a:Ls1/a/a/a/v0/h/c;

    .line 54
    throw p1

    .line 55
    :cond_a
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

    iput-object p2, p0, Ls1/a/a/a/v0/e/v;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/v;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/h/h;-><init>(Ls1/a/a/a/v0/h/h$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Ls1/a/a/a/v0/e/v;->i:B

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/v;->j:I

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 5
    iput-object p1, p0, Ls1/a/a/a/v0/e/v;->a:Ls1/a/a/a/v0/h/c;

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
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/v;->getSerializedSize()I

    .line 2
    iget v0, p0, Ls1/a/a/a/v0/e/v;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Ls1/a/a/a/v0/e/v;->c:I

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 4
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/e/v;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Ls1/a/a/a/v0/e/v;->d:I

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 6
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/v;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    iget-object v2, p0, Ls1/a/a/a/v0/e/v;->e:Ls1/a/a/a/v0/e/v$c;

    .line 8
    iget v2, v2, Ls1/a/a/a/v0/e/v$c;->a:I

    .line 9
    invoke-virtual {p1, v0, v2}, Ls1/a/a/a/v0/h/e;->n(II)V

    .line 10
    :cond_2
    iget v0, p0, Ls1/a/a/a/v0/e/v;->b:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 11
    iget v0, p0, Ls1/a/a/a/v0/e/v;->f:I

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 12
    :cond_3
    iget v0, p0, Ls1/a/a/a/v0/e/v;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 13
    iget v1, p0, Ls1/a/a/a/v0/e/v;->g:I

    invoke-virtual {p1, v0, v1}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 14
    :cond_4
    iget v0, p0, Ls1/a/a/a/v0/e/v;->b:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 15
    iget-object v1, p0, Ls1/a/a/a/v0/e/v;->h:Ls1/a/a/a/v0/e/v$d;

    .line 16
    iget v1, v1, Ls1/a/a/a/v0/e/v$d;->a:I

    .line 17
    invoke-virtual {p1, v0, v1}, Ls1/a/a/a/v0/h/e;->n(II)V

    .line 18
    :cond_5
    iget-object v0, p0, Ls1/a/a/a/v0/e/v;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/v;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/v;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p0, Ls1/a/a/a/v0/e/v;->c:I

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Ls1/a/a/a/v0/e/v;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5
    iget v1, p0, Ls1/a/a/a/v0/e/v;->d:I

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Ls1/a/a/a/v0/e/v;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v3, p0, Ls1/a/a/a/v0/e/v;->e:Ls1/a/a/a/v0/e/v$c;

    .line 8
    iget v3, v3, Ls1/a/a/a/v0/e/v$c;->a:I

    .line 9
    invoke-static {v1, v3}, Ls1/a/a/a/v0/h/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget v1, p0, Ls1/a/a/a/v0/e/v;->b:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 11
    iget v1, p0, Ls1/a/a/a/v0/e/v;->f:I

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget v1, p0, Ls1/a/a/a/v0/e/v;->b:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 13
    iget v2, p0, Ls1/a/a/a/v0/e/v;->g:I

    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    iget v1, p0, Ls1/a/a/a/v0/e/v;->b:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 15
    iget-object v2, p0, Ls1/a/a/a/v0/e/v;->h:Ls1/a/a/a/v0/e/v$d;

    .line 16
    iget v2, v2, Ls1/a/a/a/v0/e/v$d;->a:I

    .line 17
    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_6
    iget-object v1, p0, Ls1/a/a/a/v0/e/v;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    iput v1, p0, Ls1/a/a/a/v0/e/v;->j:I

    return v1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/v;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Ls1/a/a/a/v0/e/v;->i:B

    return v1
.end method

.method public newBuilderForType()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/v$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/v$b;-><init>()V

    return-object v0
.end method

.method public toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/v$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/v$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/v$b;->g(Ls1/a/a/a/v0/e/v;)Ls1/a/a/a/v0/e/v$b;

    return-object v0
.end method
