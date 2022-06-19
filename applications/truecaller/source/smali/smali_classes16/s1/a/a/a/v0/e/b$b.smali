.class public final Ls1/a/a/a/v0/e/b$b;
.super Ls1/a/a/a/v0/h/h;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/b$b$b;,
        Ls1/a/a/a/v0/e/b$b$c;
    }
.end annotation


# static fields
.field public static final g:Ls1/a/a/a/v0/e/b$b;

.field public static h:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/b$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ls1/a/a/a/v0/h/c;

.field public b:I

.field public c:I

.field public d:Ls1/a/a/a/v0/e/b$b$c;

.field public e:B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/b$b$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/b$b$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/b$b;->h:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/b$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/b$b;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/b$b;->g:Ls1/a/a/a/v0/e/b$b;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Ls1/a/a/a/v0/e/b$b;->c:I

    .line 4
    sget-object v1, Ls1/a/a/a/v0/e/b$b$c;->p:Ls1/a/a/a/v0/e/b$b$c;

    .line 5
    iput-object v1, v0, Ls1/a/a/a/v0/e/b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ls1/a/a/a/v0/e/b$b;->e:B

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/b$b;->f:I

    .line 9
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/b$b;->a:Ls1/a/a/a/v0/h/c;

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
    iput-byte p3, p0, Ls1/a/a/a/v0/e/b$b;->e:B

    .line 12
    iput p3, p0, Ls1/a/a/a/v0/e/b$b;->f:I

    const/4 p3, 0x0

    .line 13
    iput p3, p0, Ls1/a/a/a/v0/e/b$b;->c:I

    .line 14
    sget-object v0, Ls1/a/a/a/v0/e/b$b$c;->p:Ls1/a/a/a/v0/e/b$b$c;

    .line 15
    iput-object v0, p0, Ls1/a/a/a/v0/e/b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    .line 16
    invoke-static {}, Ls1/a/a/a/v0/h/c;->j()Ls1/a/a/a/v0/h/c$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 17
    invoke-static {v0, v1}, Ls1/a/a/a/v0/h/e;->k(Ljava/io/OutputStream;I)Ls1/a/a/a/v0/h/e;

    move-result-object v2

    :cond_0
    :goto_0
    if-nez p3, :cond_6

    .line 18
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    const/16 v4, 0x12

    if-eq v3, v4, :cond_1

    .line 19
    invoke-virtual {p1, v3, v2}, Ls1/a/a/a/v0/h/d;->r(ILs1/a/a/a/v0/h/e;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 20
    iget v4, p0, Ls1/a/a/a/v0/e/b$b;->b:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    .line 21
    iget-object v3, p0, Ls1/a/a/a/v0/e/b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    .line 22
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v4, Ls1/a/a/a/v0/e/b$b$c$b;

    invoke-direct {v4}, Ls1/a/a/a/v0/e/b$b$c$b;-><init>()V

    .line 24
    invoke-virtual {v4, v3}, Ls1/a/a/a/v0/e/b$b$c$b;->g(Ls1/a/a/a/v0/e/b$b$c;)Ls1/a/a/a/v0/e/b$b$c$b;

    move-object v3, v4

    .line 25
    :cond_2
    sget-object v4, Ls1/a/a/a/v0/e/b$b$c;->q:Ls1/a/a/a/v0/h/r;

    invoke-virtual {p1, v4, p2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/e/b$b$c;

    iput-object v4, p0, Ls1/a/a/a/v0/e/b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    if-eqz v3, :cond_3

    .line 26
    invoke-virtual {v3, v4}, Ls1/a/a/a/v0/e/b$b$c$b;->g(Ls1/a/a/a/v0/e/b$b$c;)Ls1/a/a/a/v0/e/b$b$c$b;

    .line 27
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/b$b$c$b;->f()Ls1/a/a/a/v0/e/b$b$c;

    move-result-object v3

    iput-object v3, p0, Ls1/a/a/a/v0/e/b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    .line 28
    :cond_3
    iget v3, p0, Ls1/a/a/a/v0/e/b$b;->b:I

    or-int/2addr v3, v5

    iput v3, p0, Ls1/a/a/a/v0/e/b$b;->b:I

    goto :goto_0

    .line 29
    :cond_4
    iget v3, p0, Ls1/a/a/a/v0/e/b$b;->b:I

    or-int/2addr v3, v1

    iput v3, p0, Ls1/a/a/a/v0/e/b$b;->b:I

    .line 30
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v3

    .line 31
    iput v3, p0, Ls1/a/a/a/v0/e/b$b;->c:I
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    move p3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 32
    :try_start_1
    new-instance p2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p0, p2, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 34
    throw p2

    :catch_1
    move-exception p1

    .line 35
    iput-object p0, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 36
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 38
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/b$b;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/b$b;->a:Ls1/a/a/a/v0/h/c;

    .line 39
    throw p1

    .line 40
    :cond_6
    :try_start_3
    invoke-virtual {v2}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 41
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/b$b;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/b$b;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/h/h;-><init>(Ls1/a/a/a/v0/h/h$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Ls1/a/a/a/v0/e/b$b;->e:B

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/b$b;->f:I

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 5
    iput-object p1, p0, Ls1/a/a/a/v0/e/b$b;->a:Ls1/a/a/a/v0/h/c;

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
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/b$b;->getSerializedSize()I

    .line 2
    iget v0, p0, Ls1/a/a/a/v0/e/b$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Ls1/a/a/a/v0/e/b$b;->c:I

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 4
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/e/b$b;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Ls1/a/a/a/v0/e/b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 6
    :cond_1
    iget-object v0, p0, Ls1/a/a/a/v0/e/b$b;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/b$b;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/b$b;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p0, Ls1/a/a/a/v0/e/b$b;->c:I

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Ls1/a/a/a/v0/e/b$b;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Ls1/a/a/a/v0/e/b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Ls1/a/a/a/v0/e/b$b;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 7
    iput v1, p0, Ls1/a/a/a/v0/e/b$b;->f:I

    return v1
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/b$b;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/b$b;->b:I

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-nez v3, :cond_3

    .line 3
    iput-byte v2, p0, Ls1/a/a/a/v0/e/b$b;->e:B

    return v2

    :cond_3
    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    .line 4
    iput-byte v2, p0, Ls1/a/a/a/v0/e/b$b;->e:B

    return v2

    .line 5
    :cond_5
    iget-object v0, p0, Ls1/a/a/a/v0/e/b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    .line 6
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/b$b$c;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7
    iput-byte v2, p0, Ls1/a/a/a/v0/e/b$b;->e:B

    return v2

    .line 8
    :cond_6
    iput-byte v1, p0, Ls1/a/a/a/v0/e/b$b;->e:B

    return v1
.end method

.method public newBuilderForType()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/b$b$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/b$b$b;-><init>()V

    return-object v0
.end method

.method public toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/b$b$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/b$b$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/b$b$b;->g(Ls1/a/a/a/v0/e/b$b;)Ls1/a/a/a/v0/e/b$b$b;

    return-object v0
.end method
