.class public final Ls1/a/a/a/v0/e/q$b;
.super Ls1/a/a/a/v0/h/h;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/q$b$b;,
        Ls1/a/a/a/v0/e/q$b$c;
    }
.end annotation


# static fields
.field public static final h:Ls1/a/a/a/v0/e/q$b;

.field public static i:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/q$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ls1/a/a/a/v0/h/c;

.field public b:I

.field public c:Ls1/a/a/a/v0/e/q$b$c;

.field public d:Ls1/a/a/a/v0/e/q;

.field public e:I

.field public f:B

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/q$b$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/q$b$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/q$b;->i:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/q$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/q$b;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/q$b;->h:Ls1/a/a/a/v0/e/q$b;

    .line 3
    sget-object v1, Ls1/a/a/a/v0/e/q$b$c;->d:Ls1/a/a/a/v0/e/q$b$c;

    iput-object v1, v0, Ls1/a/a/a/v0/e/q$b;->c:Ls1/a/a/a/v0/e/q$b$c;

    .line 4
    sget-object v1, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    .line 5
    iput-object v1, v0, Ls1/a/a/a/v0/e/q$b;->d:Ls1/a/a/a/v0/e/q;

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Ls1/a/a/a/v0/e/q$b;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ls1/a/a/a/v0/e/q$b;->f:B

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/q$b;->g:I

    .line 9
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/q$b;->a:Ls1/a/a/a/v0/h/c;

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

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Ls1/a/a/a/v0/e/q$b;->f:B

    .line 12
    iput p3, p0, Ls1/a/a/a/v0/e/q$b;->g:I

    .line 13
    sget-object p3, Ls1/a/a/a/v0/e/q$b$c;->d:Ls1/a/a/a/v0/e/q$b$c;

    iput-object p3, p0, Ls1/a/a/a/v0/e/q$b;->c:Ls1/a/a/a/v0/e/q$b$c;

    .line 14
    sget-object p3, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    .line 15
    iput-object p3, p0, Ls1/a/a/a/v0/e/q$b;->d:Ls1/a/a/a/v0/e/q;

    const/4 p3, 0x0

    .line 16
    iput p3, p0, Ls1/a/a/a/v0/e/q$b;->e:I

    .line 17
    invoke-static {}, Ls1/a/a/a/v0/h/c;->j()Ls1/a/a/a/v0/h/c$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Ls1/a/a/a/v0/h/e;->k(Ljava/io/OutputStream;I)Ls1/a/a/a/v0/h/e;

    move-result-object v2

    :cond_0
    :goto_0
    if-nez p3, :cond_8

    .line 19
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v3

    if-eqz v3, :cond_7

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    const/16 v4, 0x12

    if-eq v3, v4, :cond_2

    const/16 v4, 0x18

    if-eq v3, v4, :cond_1

    .line 20
    invoke-virtual {p1, v3, v2}, Ls1/a/a/a/v0/h/d;->r(ILs1/a/a/a/v0/h/e;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 21
    :cond_1
    iget v3, p0, Ls1/a/a/a/v0/e/q$b;->b:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Ls1/a/a/a/v0/e/q$b;->b:I

    .line 22
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v3

    .line 23
    iput v3, p0, Ls1/a/a/a/v0/e/q$b;->e:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 24
    iget v4, p0, Ls1/a/a/a/v0/e/q$b;->b:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    .line 25
    iget-object v3, p0, Ls1/a/a/a/v0/e/q$b;->d:Ls1/a/a/a/v0/e/q;

    invoke-virtual {v3}, Ls1/a/a/a/v0/e/q;->s()Ls1/a/a/a/v0/e/q$c;

    move-result-object v3

    .line 26
    :cond_3
    sget-object v4, Ls1/a/a/a/v0/e/q;->u:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v4, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/e/q;

    iput-object v4, p0, Ls1/a/a/a/v0/e/q$b;->d:Ls1/a/a/a/v0/e/q;

    if-eqz v3, :cond_4

    .line 27
    invoke-virtual {v3, v4}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

    .line 28
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/q$c;->g()Ls1/a/a/a/v0/e/q;

    move-result-object v3

    iput-object v3, p0, Ls1/a/a/a/v0/e/q$b;->d:Ls1/a/a/a/v0/e/q;

    .line 29
    :cond_4
    iget v3, p0, Ls1/a/a/a/v0/e/q$b;->b:I

    or-int/2addr v3, v5

    iput v3, p0, Ls1/a/a/a/v0/e/q$b;->b:I

    goto :goto_0

    .line 30
    :cond_5
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v4

    .line 31
    invoke-static {v4}, Ls1/a/a/a/v0/e/q$b$c;->a(I)Ls1/a/a/a/v0/e/q$b$c;

    move-result-object v5

    if-nez v5, :cond_6

    .line 32
    invoke-virtual {v2, v3}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 33
    invoke-virtual {v2, v4}, Ls1/a/a/a/v0/h/e;->y(I)V

    goto :goto_0

    .line 34
    :cond_6
    iget v3, p0, Ls1/a/a/a/v0/e/q$b;->b:I

    or-int/2addr v3, v1

    iput v3, p0, Ls1/a/a/a/v0/e/q$b;->b:I

    .line 35
    iput-object v5, p0, Ls1/a/a/a/v0/e/q$b;->c:Ls1/a/a/a/v0/e/q$b$c;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    move p3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 36
    :try_start_1
    new-instance p2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p0, p2, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 38
    throw p2

    :catch_1
    move-exception p1

    .line 39
    iput-object p0, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 40
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 42
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/q$b;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/q$b;->a:Ls1/a/a/a/v0/h/c;

    .line 43
    throw p1

    .line 44
    :cond_8
    :try_start_3
    invoke-virtual {v2}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 45
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/q$b;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/q$b;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/h/h;-><init>(Ls1/a/a/a/v0/h/h$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Ls1/a/a/a/v0/e/q$b;->f:B

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/q$b;->g:I

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 5
    iput-object p1, p0, Ls1/a/a/a/v0/e/q$b;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/h/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/q$b;->getSerializedSize()I

    .line 2
    iget v0, p0, Ls1/a/a/a/v0/e/q$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/e/q$b;->c:Ls1/a/a/a/v0/e/q$b$c;

    .line 4
    iget v0, v0, Ls1/a/a/a/v0/e/q$b$c;->a:I

    .line 5
    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->n(II)V

    .line 6
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/e/q$b;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Ls1/a/a/a/v0/e/q$b;->d:Ls1/a/a/a/v0/e/q;

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 8
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/q$b;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 9
    iget v1, p0, Ls1/a/a/a/v0/e/q$b;->e:I

    invoke-virtual {p1, v0, v1}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 10
    :cond_2
    iget-object v0, p0, Ls1/a/a/a/v0/e/q$b;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/q$b;->b:I

    const/4 v1, 0x2

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
    .locals 3

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/q$b;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/q$b;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/e/q$b;->c:Ls1/a/a/a/v0/e/q$b$c;

    .line 4
    iget v1, v1, Ls1/a/a/a/v0/e/q$b$c;->a:I

    .line 5
    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    iget v1, p0, Ls1/a/a/a/v0/e/q$b;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v1, p0, Ls1/a/a/a/v0/e/q$b;->d:Ls1/a/a/a/v0/e/q;

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Ls1/a/a/a/v0/e/q$b;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 9
    iget v2, p0, Ls1/a/a/a/v0/e/q$b;->e:I

    invoke-static {v1, v2}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget-object v1, p0, Ls1/a/a/a/v0/e/q$b;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 11
    iput v1, p0, Ls1/a/a/a/v0/e/q$b;->g:I

    return v1
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/q$b;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/q$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/e/q$b;->d:Ls1/a/a/a/v0/e/q;

    .line 4
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iput-byte v2, p0, Ls1/a/a/a/v0/e/q$b;->f:B

    return v2

    .line 6
    :cond_2
    iput-byte v1, p0, Ls1/a/a/a/v0/e/q$b;->f:B

    return v1
.end method

.method public newBuilderForType()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/q$b$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/q$b$b;-><init>()V

    return-object v0
.end method

.method public toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/q$b$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/q$b$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/q$b$b;->g(Ls1/a/a/a/v0/e/q$b;)Ls1/a/a/a/v0/e/q$b$b;

    return-object v0
.end method
