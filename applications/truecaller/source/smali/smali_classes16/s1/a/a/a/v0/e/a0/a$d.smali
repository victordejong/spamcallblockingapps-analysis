.class public final Ls1/a/a/a/v0/e/a0/a$d;
.super Ls1/a/a/a/v0/h/h;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/a0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/a0/a$d$b;
    }
.end annotation


# static fields
.field public static final i:Ls1/a/a/a/v0/e/a0/a$d;

.field public static j:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/a0/a$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ls1/a/a/a/v0/h/c;

.field public b:I

.field public c:Ls1/a/a/a/v0/e/a0/a$b;

.field public d:Ls1/a/a/a/v0/e/a0/a$c;

.field public e:Ls1/a/a/a/v0/e/a0/a$c;

.field public f:Ls1/a/a/a/v0/e/a0/a$c;

.field public g:B

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$d$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/a0/a$d$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/a0/a$d;->j:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$d;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/a0/a$d;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/a0/a$d;->i:Ls1/a/a/a/v0/e/a0/a$d;

    .line 3
    sget-object v1, Ls1/a/a/a/v0/e/a0/a$b;->g:Ls1/a/a/a/v0/e/a0/a$b;

    .line 4
    iput-object v1, v0, Ls1/a/a/a/v0/e/a0/a$d;->c:Ls1/a/a/a/v0/e/a0/a$b;

    .line 5
    sget-object v1, Ls1/a/a/a/v0/e/a0/a$c;->g:Ls1/a/a/a/v0/e/a0/a$c;

    .line 6
    iput-object v1, v0, Ls1/a/a/a/v0/e/a0/a$d;->d:Ls1/a/a/a/v0/e/a0/a$c;

    .line 7
    iput-object v1, v0, Ls1/a/a/a/v0/e/a0/a$d;->e:Ls1/a/a/a/v0/e/a0/a$c;

    .line 8
    iput-object v1, v0, Ls1/a/a/a/v0/e/a0/a$d;->f:Ls1/a/a/a/v0/e/a0/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->g:B

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->h:I

    .line 9
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/e/a0/a$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Ls1/a/a/a/v0/e/a0/a$d;->g:B

    .line 12
    iput p3, p0, Ls1/a/a/a/v0/e/a0/a$d;->h:I

    .line 13
    sget-object p3, Ls1/a/a/a/v0/e/a0/a$b;->g:Ls1/a/a/a/v0/e/a0/a$b;

    .line 14
    iput-object p3, p0, Ls1/a/a/a/v0/e/a0/a$d;->c:Ls1/a/a/a/v0/e/a0/a$b;

    .line 15
    sget-object p3, Ls1/a/a/a/v0/e/a0/a$c;->g:Ls1/a/a/a/v0/e/a0/a$c;

    .line 16
    iput-object p3, p0, Ls1/a/a/a/v0/e/a0/a$d;->d:Ls1/a/a/a/v0/e/a0/a$c;

    .line 17
    iput-object p3, p0, Ls1/a/a/a/v0/e/a0/a$d;->e:Ls1/a/a/a/v0/e/a0/a$c;

    .line 18
    iput-object p3, p0, Ls1/a/a/a/v0/e/a0/a$d;->f:Ls1/a/a/a/v0/e/a0/a$c;

    .line 19
    invoke-static {}, Ls1/a/a/a/v0/h/c;->j()Ls1/a/a/a/v0/h/c$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 20
    invoke-static {p3, v0}, Ls1/a/a/a/v0/h/e;->k(Ljava/io/OutputStream;I)Ls1/a/a/a/v0/h/e;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_e

    .line 21
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v3

    if-eqz v3, :cond_d

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v3, v4, :cond_a

    const/16 v4, 0x12

    if-eq v3, v4, :cond_7

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_4

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    .line 22
    invoke-virtual {p1, v3, v1}, Ls1/a/a/a/v0/h/d;->r(ILs1/a/a/a/v0/h/e;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 23
    :cond_1
    iget v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 24
    iget-object v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->f:Ls1/a/a/a/v0/e/a0/a$c;

    .line 25
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v3}, Ls1/a/a/a/v0/e/a0/a$c;->f(Ls1/a/a/a/v0/e/a0/a$c;)Ls1/a/a/a/v0/e/a0/a$c$b;

    move-result-object v5

    .line 27
    :cond_2
    sget-object v3, Ls1/a/a/a/v0/e/a0/a$c;->h:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v3, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/a0/a$c;

    iput-object v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->f:Ls1/a/a/a/v0/e/a0/a$c;

    if-eqz v5, :cond_3

    .line 28
    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/e/a0/a$c$b;->g(Ls1/a/a/a/v0/e/a0/a$c;)Ls1/a/a/a/v0/e/a0/a$c$b;

    .line 29
    invoke-virtual {v5}, Ls1/a/a/a/v0/e/a0/a$c$b;->f()Ls1/a/a/a/v0/e/a0/a$c;

    move-result-object v3

    iput-object v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->f:Ls1/a/a/a/v0/e/a0/a$c;

    .line 30
    :cond_3
    iget v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    goto :goto_0

    .line 31
    :cond_4
    iget v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    .line 32
    iget-object v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->e:Ls1/a/a/a/v0/e/a0/a$c;

    .line 33
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {v3}, Ls1/a/a/a/v0/e/a0/a$c;->f(Ls1/a/a/a/v0/e/a0/a$c;)Ls1/a/a/a/v0/e/a0/a$c$b;

    move-result-object v5

    .line 35
    :cond_5
    sget-object v3, Ls1/a/a/a/v0/e/a0/a$c;->h:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v3, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/a0/a$c;

    iput-object v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->e:Ls1/a/a/a/v0/e/a0/a$c;

    if-eqz v5, :cond_6

    .line 36
    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/e/a0/a$c$b;->g(Ls1/a/a/a/v0/e/a0/a$c;)Ls1/a/a/a/v0/e/a0/a$c$b;

    .line 37
    invoke-virtual {v5}, Ls1/a/a/a/v0/e/a0/a$c$b;->f()Ls1/a/a/a/v0/e/a0/a$c;

    move-result-object v3

    iput-object v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->e:Ls1/a/a/a/v0/e/a0/a$c;

    .line 38
    :cond_6
    iget v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    goto :goto_0

    .line 39
    :cond_7
    iget v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_8

    .line 40
    iget-object v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->d:Ls1/a/a/a/v0/e/a0/a$c;

    .line 41
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {v3}, Ls1/a/a/a/v0/e/a0/a$c;->f(Ls1/a/a/a/v0/e/a0/a$c;)Ls1/a/a/a/v0/e/a0/a$c$b;

    move-result-object v5

    .line 43
    :cond_8
    sget-object v3, Ls1/a/a/a/v0/e/a0/a$c;->h:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v3, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/a0/a$c;

    iput-object v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->d:Ls1/a/a/a/v0/e/a0/a$c;

    if-eqz v5, :cond_9

    .line 44
    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/e/a0/a$c$b;->g(Ls1/a/a/a/v0/e/a0/a$c;)Ls1/a/a/a/v0/e/a0/a$c$b;

    .line 45
    invoke-virtual {v5}, Ls1/a/a/a/v0/e/a0/a$c$b;->f()Ls1/a/a/a/v0/e/a0/a$c;

    move-result-object v3

    iput-object v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->d:Ls1/a/a/a/v0/e/a0/a$c;

    .line 46
    :cond_9
    iget v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    goto/16 :goto_0

    .line 47
    :cond_a
    iget v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    and-int/2addr v3, v0

    if-ne v3, v0, :cond_b

    .line 48
    iget-object v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->c:Ls1/a/a/a/v0/e/a0/a$b;

    .line 49
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v5, Ls1/a/a/a/v0/e/a0/a$b$b;

    invoke-direct {v5}, Ls1/a/a/a/v0/e/a0/a$b$b;-><init>()V

    .line 51
    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/e/a0/a$b$b;->g(Ls1/a/a/a/v0/e/a0/a$b;)Ls1/a/a/a/v0/e/a0/a$b$b;

    .line 52
    :cond_b
    sget-object v3, Ls1/a/a/a/v0/e/a0/a$b;->h:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v3, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/a0/a$b;

    iput-object v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->c:Ls1/a/a/a/v0/e/a0/a$b;

    if-eqz v5, :cond_c

    .line 53
    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/e/a0/a$b$b;->g(Ls1/a/a/a/v0/e/a0/a$b;)Ls1/a/a/a/v0/e/a0/a$b$b;

    .line 54
    invoke-virtual {v5}, Ls1/a/a/a/v0/e/a0/a$b$b;->f()Ls1/a/a/a/v0/e/a0/a$b;

    move-result-object v3

    iput-object v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->c:Ls1/a/a/a/v0/e/a0/a$b;

    .line 55
    :cond_c
    iget v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    or-int/2addr v3, v0

    iput v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I
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

    .line 56
    :try_start_1
    new-instance p2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object p0, p2, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 58
    throw p2

    :catch_1
    move-exception p1

    .line 59
    iput-object p0, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 60
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 62
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/a0/a$d;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/a0/a$d;->a:Ls1/a/a/a/v0/h/c;

    .line 63
    throw p1

    .line 64
    :cond_e
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

    iput-object p2, p0, Ls1/a/a/a/v0/e/a0/a$d;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/a0/a$d;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a0/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/h/h;-><init>(Ls1/a/a/a/v0/h/h$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Ls1/a/a/a/v0/e/a0/a$d;->g:B

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/a0/a$d;->h:I

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 5
    iput-object p1, p0, Ls1/a/a/a/v0/e/a0/a$d;->a:Ls1/a/a/a/v0/h/c;

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
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/a0/a$d;->getSerializedSize()I

    .line 2
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->c:Ls1/a/a/a/v0/e/a0/a$b;

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 4
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->d:Ls1/a/a/a/v0/e/a0/a$c;

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 6
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    iget-object v2, p0, Ls1/a/a/a/v0/e/a0/a$d;->e:Ls1/a/a/a/v0/e/a0/a$c;

    invoke-virtual {p1, v0, v2}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 8
    :cond_2
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 9
    iget-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->f:Ls1/a/a/a/v0/e/a0/a$c;

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 10
    :cond_3
    iget-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

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

.method public e()Z
    .locals 2

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$d;->c:Ls1/a/a/a/v0/e/a0/a$b;

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$d;->d:Ls1/a/a/a/v0/e/a0/a$c;

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v3, p0, Ls1/a/a/a/v0/e/a0/a$d;->e:Ls1/a/a/a/v0/e/a0/a$c;

    invoke-static {v1, v3}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 9
    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$d;->f:Ls1/a/a/a/v0/e/a0/a$c;

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$d;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 11
    iput v1, p0, Ls1/a/a/a/v0/e/a0/a$d;->h:I

    return v1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/a0/a$d;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Ls1/a/a/a/v0/e/a0/a$d;->g:B

    return v1
.end method

.method public newBuilderForType()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$d$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/a0/a$d$b;-><init>()V

    return-object v0
.end method

.method public toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$d$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/a0/a$d$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/a0/a$d$b;->g(Ls1/a/a/a/v0/e/a0/a$d;)Ls1/a/a/a/v0/e/a0/a$d$b;

    return-object v0
.end method
