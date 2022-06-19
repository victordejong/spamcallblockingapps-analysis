.class public final Ls1/a/a/a/v0/e/g;
.super Ls1/a/a/a/v0/h/h$d;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$d<",
        "Ls1/a/a/a/v0/e/g;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final g:Ls1/a/a/a/v0/e/g;

.field public static h:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ls1/a/a/a/v0/h/c;

.field public c:I

.field public d:I

.field public e:B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/g$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/g$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/g;->h:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/g;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/g;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/g;->g:Ls1/a/a/a/v0/e/g;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Ls1/a/a/a/v0/e/g;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$d;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ls1/a/a/a/v0/e/g;->e:B

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/g;->f:I

    .line 9
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/g;->b:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/e/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$d;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Ls1/a/a/a/v0/e/g;->e:B

    .line 12
    iput p3, p0, Ls1/a/a/a/v0/e/g;->f:I

    const/4 p3, 0x0

    .line 13
    iput p3, p0, Ls1/a/a/a/v0/e/g;->d:I

    .line 14
    invoke-static {}, Ls1/a/a/a/v0/h/c;->j()Ls1/a/a/a/v0/h/c$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 15
    invoke-static {v0, v1}, Ls1/a/a/a/v0/h/e;->k(Ljava/io/OutputStream;I)Ls1/a/a/a/v0/h/e;

    move-result-object v2

    :cond_0
    :goto_0
    if-nez p3, :cond_3

    .line 16
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 17
    invoke-virtual {p0, p1, v2, p2, v3}, Ls1/a/a/a/v0/h/h$d;->j(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/e;Ls1/a/a/a/v0/h/f;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 18
    :cond_1
    iget v3, p0, Ls1/a/a/a/v0/e/g;->c:I

    or-int/2addr v3, v1

    iput v3, p0, Ls1/a/a/a/v0/e/g;->c:I

    .line 19
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v3

    .line 20
    iput v3, p0, Ls1/a/a/a/v0/e/g;->d:I
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    move p3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    :try_start_1
    new-instance p2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p0, p2, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 23
    throw p2

    :catch_1
    move-exception p1

    .line 24
    iput-object p0, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 25
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 27
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/g;->b:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/g;->b:Ls1/a/a/a/v0/h/c;

    .line 28
    iget-object p2, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    invoke-virtual {p2}, Ls1/a/a/a/v0/h/g;->i()V

    .line 29
    throw p1

    .line 30
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 31
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/e/g;->b:Ls1/a/a/a/v0/h/c;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/e/g;->b:Ls1/a/a/a/v0/h/c;

    .line 32
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
    iput-byte p2, p0, Ls1/a/a/a/v0/e/g;->e:B

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/g;->f:I

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 5
    iput-object p1, p0, Ls1/a/a/a/v0/e/g;->b:Ls1/a/a/a/v0/h/c;

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
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/g;->getSerializedSize()I

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->i()Ls1/a/a/a/v0/h/h$d$a;

    move-result-object v0

    .line 3
    iget v1, p0, Ls1/a/a/a/v0/e/g;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Ls1/a/a/a/v0/e/g;->d:I

    invoke-virtual {p1, v2, v1}, Ls1/a/a/a/v0/h/e;->p(II)V

    :cond_0
    const/16 v1, 0xc8

    .line 5
    invoke-virtual {v0, v1, p1}, Ls1/a/a/a/v0/h/h$d$a;->a(ILs1/a/a/a/v0/h/e;)V

    .line 6
    iget-object v0, p0, Ls1/a/a/a/v0/e/g;->b:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Ls1/a/a/a/v0/h/p;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/g;->g:Ls1/a/a/a/v0/e/g;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/g;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/g;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p0, Ls1/a/a/a/v0/e/g;->d:I

    invoke-static {v2, v1}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->e()I

    move-result v1

    add-int/2addr v1, v0

    .line 5
    iget-object v0, p0, Ls1/a/a/a/v0/e/g;->b:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Ls1/a/a/a/v0/e/g;->f:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/g;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iput-byte v2, p0, Ls1/a/a/a/v0/e/g;->e:B

    return v2

    .line 4
    :cond_2
    iput-byte v1, p0, Ls1/a/a/a/v0/e/g;->e:B

    return v1
.end method

.method public newBuilderForType()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/g$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/g$b;-><init>()V

    return-object v0
.end method

.method public toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/g$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/g$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/g$b;->h(Ls1/a/a/a/v0/e/g;)Ls1/a/a/a/v0/e/g$b;

    return-object v0
.end method
