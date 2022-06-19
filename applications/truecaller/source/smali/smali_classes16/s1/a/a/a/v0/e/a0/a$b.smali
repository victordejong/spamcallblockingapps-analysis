.class public final Ls1/a/a/a/v0/e/a0/a$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/a0/a$b$b;
    }
.end annotation


# static fields
.field public static final g:Ls1/a/a/a/v0/e/a0/a$b;

.field public static h:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/a0/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ls1/a/a/a/v0/h/c;

.field public b:I

.field public c:I

.field public d:I

.field public e:B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$b$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/a0/a$b$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/a0/a$b;->h:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/a0/a$b;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/a0/a$b;->g:Ls1/a/a/a/v0/e/a0/a$b;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Ls1/a/a/a/v0/e/a0/a$b;->c:I

    .line 4
    iput v1, v0, Ls1/a/a/a/v0/e/a0/a$b;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ls1/a/a/a/v0/e/a0/a$b;->e:B

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/a0/a$b;->f:I

    .line 9
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$b;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/e/a0/a$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    const/4 p2, -0x1

    .line 11
    iput-byte p2, p0, Ls1/a/a/a/v0/e/a0/a$b;->e:B

    .line 12
    iput p2, p0, Ls1/a/a/a/v0/e/a0/a$b;->f:I

    const/4 p2, 0x0

    .line 13
    iput p2, p0, Ls1/a/a/a/v0/e/a0/a$b;->c:I

    .line 14
    iput p2, p0, Ls1/a/a/a/v0/e/a0/a$b;->d:I

    .line 15
    invoke-static {}, Ls1/a/a/a/v0/h/c;->j()Ls1/a/a/a/v0/h/c$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 16
    invoke-static {p3, v0}, Ls1/a/a/a/v0/h/e;->k(Ljava/io/OutputStream;I)Ls1/a/a/a/v0/h/e;

    move-result-object v1

    :cond_0
    :goto_0
    if-nez p2, :cond_4

    .line 17
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    .line 18
    invoke-virtual {p1, v2, v1}, Ls1/a/a/a/v0/h/d;->r(ILs1/a/a/a/v0/h/e;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 19
    :cond_1
    iget v2, p0, Ls1/a/a/a/v0/e/a0/a$b;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Ls1/a/a/a/v0/e/a0/a$b;->b:I

    .line 20
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v2

    .line 21
    iput v2, p0, Ls1/a/a/a/v0/e/a0/a$b;->d:I

    goto :goto_0

    .line 22
    :cond_2
    iget v2, p0, Ls1/a/a/a/v0/e/a0/a$b;->b:I

    or-int/2addr v2, v0

    iput v2, p0, Ls1/a/a/a/v0/e/a0/a$b;->b:I

    .line 23
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v2

    .line 24
    iput v2, p0, Ls1/a/a/a/v0/e/a0/a$b;->c:I
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    move p2, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 25
    :try_start_1
    new-instance p2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p0, p2, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 27
    throw p2

    :catch_1
    move-exception p1

    .line 28
    iput-object p0, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 29
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 31
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/a0/a$b;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/a0/a$b;->a:Ls1/a/a/a/v0/h/c;

    .line 32
    throw p1

    .line 33
    :cond_4
    :try_start_3
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 34
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/a0/a$b;->a:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/a0/a$b;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a0/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/h/h;-><init>(Ls1/a/a/a/v0/h/h$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Ls1/a/a/a/v0/e/a0/a$b;->e:B

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/a0/a$b;->f:I

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 5
    iput-object p1, p0, Ls1/a/a/a/v0/e/a0/a$b;->a:Ls1/a/a/a/v0/h/c;

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
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/a0/a$b;->getSerializedSize()I

    .line 2
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$b;->c:I

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 4
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$b;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$b;->d:I

    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 6
    :cond_1
    iget-object v0, p0, Ls1/a/a/a/v0/e/a0/a$b;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$b;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$b;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$b;->c:I

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$b;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$b;->d:I

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$b;->a:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 7
    iput v1, p0, Ls1/a/a/a/v0/e/a0/a$b;->f:I

    return v1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/a0/a$b;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Ls1/a/a/a/v0/e/a0/a$b;->e:B

    return v1
.end method

.method public newBuilderForType()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$b$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/a0/a$b$b;-><init>()V

    return-object v0
.end method

.method public toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$b$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/a0/a$b$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/a0/a$b$b;->g(Ls1/a/a/a/v0/e/a0/a$b;)Ls1/a/a/a/v0/e/a0/a$b$b;

    return-object v0
.end method
