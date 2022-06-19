.class public final Ls1/a/a/a/v0/e/u;
.super Ls1/a/a/a/v0/h/h$d;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$d<",
        "Ls1/a/a/a/v0/e/u;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final l:Ls1/a/a/a/v0/e/u;

.field public static m:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ls1/a/a/a/v0/h/c;

.field public c:I

.field public d:I

.field public e:I

.field public f:Ls1/a/a/a/v0/e/q;

.field public g:I

.field public h:Ls1/a/a/a/v0/e/q;

.field public i:I

.field public j:B

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/u$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/u$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/u;->m:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/u;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/u;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/u;->l:Ls1/a/a/a/v0/e/u;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Ls1/a/a/a/v0/e/u;->d:I

    .line 4
    iput v1, v0, Ls1/a/a/a/v0/e/u;->e:I

    .line 5
    sget-object v2, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    .line 6
    iput-object v2, v0, Ls1/a/a/a/v0/e/u;->f:Ls1/a/a/a/v0/e/q;

    .line 7
    iput v1, v0, Ls1/a/a/a/v0/e/u;->g:I

    .line 8
    iput-object v2, v0, Ls1/a/a/a/v0/e/u;->h:Ls1/a/a/a/v0/e/q;

    .line 9
    iput v1, v0, Ls1/a/a/a/v0/e/u;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$d;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ls1/a/a/a/v0/e/u;->j:B

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/u;->k:I

    .line 9
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/u;->b:Ls1/a/a/a/v0/h/c;

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
    iput-byte p3, p0, Ls1/a/a/a/v0/e/u;->j:B

    .line 12
    iput p3, p0, Ls1/a/a/a/v0/e/u;->k:I

    const/4 p3, 0x0

    .line 13
    iput p3, p0, Ls1/a/a/a/v0/e/u;->d:I

    .line 14
    iput p3, p0, Ls1/a/a/a/v0/e/u;->e:I

    .line 15
    sget-object v0, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    .line 16
    iput-object v0, p0, Ls1/a/a/a/v0/e/u;->f:Ls1/a/a/a/v0/e/q;

    .line 17
    iput p3, p0, Ls1/a/a/a/v0/e/u;->g:I

    .line 18
    iput-object v0, p0, Ls1/a/a/a/v0/e/u;->h:Ls1/a/a/a/v0/e/q;

    .line 19
    iput p3, p0, Ls1/a/a/a/v0/e/u;->i:I

    .line 20
    invoke-static {}, Ls1/a/a/a/v0/h/c;->j()Ls1/a/a/a/v0/h/c$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 21
    invoke-static {v0, v1}, Ls1/a/a/a/v0/h/e;->k(Ljava/io/OutputStream;I)Ls1/a/a/a/v0/h/e;

    move-result-object v2

    :cond_0
    :goto_0
    if-nez p3, :cond_c

    .line 22
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v3

    if-eqz v3, :cond_b

    const/16 v4, 0x8

    if-eq v3, v4, :cond_a

    const/16 v5, 0x10

    if-eq v3, v5, :cond_9

    const/16 v6, 0x1a

    const/4 v7, 0x0

    if-eq v3, v6, :cond_6

    const/16 v6, 0x22

    if-eq v3, v6, :cond_3

    const/16 v5, 0x28

    if-eq v3, v5, :cond_2

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    .line 23
    invoke-virtual {p0, p1, v2, p2, v3}, Ls1/a/a/a/v0/h/h$d;->j(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/e;Ls1/a/a/a/v0/h/f;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 24
    :cond_1
    iget v3, p0, Ls1/a/a/a/v0/e/u;->c:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Ls1/a/a/a/v0/e/u;->c:I

    .line 25
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v3

    .line 26
    iput v3, p0, Ls1/a/a/a/v0/e/u;->i:I

    goto :goto_0

    .line 27
    :cond_2
    iget v3, p0, Ls1/a/a/a/v0/e/u;->c:I

    or-int/2addr v3, v4

    iput v3, p0, Ls1/a/a/a/v0/e/u;->c:I

    .line 28
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v3

    .line 29
    iput v3, p0, Ls1/a/a/a/v0/e/u;->g:I

    goto :goto_0

    .line 30
    :cond_3
    iget v3, p0, Ls1/a/a/a/v0/e/u;->c:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_4

    .line 31
    iget-object v3, p0, Ls1/a/a/a/v0/e/u;->h:Ls1/a/a/a/v0/e/q;

    invoke-virtual {v3}, Ls1/a/a/a/v0/e/q;->s()Ls1/a/a/a/v0/e/q$c;

    move-result-object v7

    .line 32
    :cond_4
    sget-object v3, Ls1/a/a/a/v0/e/q;->u:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v3, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/q;

    iput-object v3, p0, Ls1/a/a/a/v0/e/u;->h:Ls1/a/a/a/v0/e/q;

    if-eqz v7, :cond_5

    .line 33
    invoke-virtual {v7, v3}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

    .line 34
    invoke-virtual {v7}, Ls1/a/a/a/v0/e/q$c;->g()Ls1/a/a/a/v0/e/q;

    move-result-object v3

    iput-object v3, p0, Ls1/a/a/a/v0/e/u;->h:Ls1/a/a/a/v0/e/q;

    .line 35
    :cond_5
    iget v3, p0, Ls1/a/a/a/v0/e/u;->c:I

    or-int/2addr v3, v5

    iput v3, p0, Ls1/a/a/a/v0/e/u;->c:I

    goto :goto_0

    .line 36
    :cond_6
    iget v3, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    .line 37
    iget-object v3, p0, Ls1/a/a/a/v0/e/u;->f:Ls1/a/a/a/v0/e/q;

    invoke-virtual {v3}, Ls1/a/a/a/v0/e/q;->s()Ls1/a/a/a/v0/e/q$c;

    move-result-object v7

    .line 38
    :cond_7
    sget-object v3, Ls1/a/a/a/v0/e/q;->u:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v3, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/q;

    iput-object v3, p0, Ls1/a/a/a/v0/e/u;->f:Ls1/a/a/a/v0/e/q;

    if-eqz v7, :cond_8

    .line 39
    invoke-virtual {v7, v3}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

    .line 40
    invoke-virtual {v7}, Ls1/a/a/a/v0/e/q$c;->g()Ls1/a/a/a/v0/e/q;

    move-result-object v3

    iput-object v3, p0, Ls1/a/a/a/v0/e/u;->f:Ls1/a/a/a/v0/e/q;

    .line 41
    :cond_8
    iget v3, p0, Ls1/a/a/a/v0/e/u;->c:I

    or-int/2addr v3, v4

    iput v3, p0, Ls1/a/a/a/v0/e/u;->c:I

    goto/16 :goto_0

    .line 42
    :cond_9
    iget v3, p0, Ls1/a/a/a/v0/e/u;->c:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Ls1/a/a/a/v0/e/u;->c:I

    .line 43
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v3

    .line 44
    iput v3, p0, Ls1/a/a/a/v0/e/u;->e:I

    goto/16 :goto_0

    .line 45
    :cond_a
    iget v3, p0, Ls1/a/a/a/v0/e/u;->c:I

    or-int/2addr v3, v1

    iput v3, p0, Ls1/a/a/a/v0/e/u;->c:I

    .line 46
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v3

    .line 47
    iput v3, p0, Ls1/a/a/a/v0/e/u;->d:I
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_1
    move p3, v1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 48
    :try_start_1
    new-instance p2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p0, p2, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 50
    throw p2

    :catch_1
    move-exception p1

    .line 51
    iput-object p0, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 52
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 54
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/u;->b:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/u;->b:Ls1/a/a/a/v0/h/c;

    .line 55
    iget-object p2, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    invoke-virtual {p2}, Ls1/a/a/a/v0/h/g;->i()V

    .line 56
    throw p1

    .line 57
    :cond_c
    :try_start_3
    invoke-virtual {v2}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 58
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/u;->b:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/u;->b:Ls1/a/a/a/v0/h/c;

    .line 59
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
    iput-byte p2, p0, Ls1/a/a/a/v0/e/u;->j:B

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/u;->k:I

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 5
    iput-object p1, p0, Ls1/a/a/a/v0/e/u;->b:Ls1/a/a/a/v0/h/c;

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
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/u;->getSerializedSize()I

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->i()Ls1/a/a/a/v0/h/h$d$a;

    move-result-object v0

    .line 3
    iget v1, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Ls1/a/a/a/v0/e/u;->d:I

    invoke-virtual {p1, v2, v1}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 5
    :cond_0
    iget v1, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 6
    iget v1, p0, Ls1/a/a/a/v0/e/u;->e:I

    invoke-virtual {p1, v2, v1}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 7
    :cond_1
    iget v1, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 8
    iget-object v3, p0, Ls1/a/a/a/v0/e/u;->f:Ls1/a/a/a/v0/e/q;

    invoke-virtual {p1, v1, v3}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 9
    :cond_2
    iget v1, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 10
    iget-object v1, p0, Ls1/a/a/a/v0/e/u;->h:Ls1/a/a/a/v0/e/q;

    invoke-virtual {p1, v2, v1}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 11
    :cond_3
    iget v1, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    .line 12
    iget v2, p0, Ls1/a/a/a/v0/e/u;->g:I

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 13
    :cond_4
    iget v1, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    .line 14
    iget v2, p0, Ls1/a/a/a/v0/e/u;->i:I

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->p(II)V

    :cond_5
    const/16 v1, 0xc8

    .line 15
    invoke-virtual {v0, v1, p1}, Ls1/a/a/a/v0/h/h$d$a;->a(ILs1/a/a/a/v0/h/e;)V

    .line 16
    iget-object v0, p0, Ls1/a/a/a/v0/e/u;->b:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Ls1/a/a/a/v0/h/p;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/u;->l:Ls1/a/a/a/v0/e/u;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/u;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p0, Ls1/a/a/a/v0/e/u;->d:I

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5
    iget v1, p0, Ls1/a/a/a/v0/e/u;->e:I

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v3, p0, Ls1/a/a/a/v0/e/u;->f:Ls1/a/a/a/v0/e/q;

    invoke-static {v1, v3}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget v1, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 9
    iget-object v1, p0, Ls1/a/a/a/v0/e/u;->h:Ls1/a/a/a/v0/e/q;

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget v1, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 11
    iget v2, p0, Ls1/a/a/a/v0/e/u;->g:I

    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget v1, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 13
    iget v2, p0, Ls1/a/a/a/v0/e/u;->i:I

    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->e()I

    move-result v1

    add-int/2addr v1, v0

    .line 15
    iget-object v0, p0, Ls1/a/a/a/v0/e/u;->b:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 16
    iput v0, p0, Ls1/a/a/a/v0/e/u;->k:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/u;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 3
    iput-byte v2, p0, Ls1/a/a/a/v0/e/u;->j:B

    return v2

    .line 4
    :cond_3
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/u;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Ls1/a/a/a/v0/e/u;->f:Ls1/a/a/a/v0/e/q;

    .line 6
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iput-byte v2, p0, Ls1/a/a/a/v0/e/u;->j:B

    return v2

    .line 8
    :cond_4
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/u;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Ls1/a/a/a/v0/e/u;->h:Ls1/a/a/a/v0/e/q;

    .line 10
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    iput-byte v2, p0, Ls1/a/a/a/v0/e/u;->j:B

    return v2

    .line 12
    :cond_5
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->d()Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    iput-byte v2, p0, Ls1/a/a/a/v0/e/u;->j:B

    return v2

    .line 14
    :cond_6
    iput-byte v1, p0, Ls1/a/a/a/v0/e/u;->j:B

    return v1
.end method

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/u;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newBuilderForType()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/u$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/u$b;-><init>()V

    return-object v0
.end method

.method public toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/u$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/u$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/u$b;->h(Ls1/a/a/a/v0/e/u;)Ls1/a/a/a/v0/e/u$b;

    return-object v0
.end method
