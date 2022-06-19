.class public final Le/m/b/x/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/b/x/a/d/a$a;
    }
.end annotation


# instance fields
.field public a:Le/m/b/x/a/d/a$a;

.field public final b:Le/m/b/x/b/b;

.field public final c:Le/m/b/x/b/o;

.field public d:Le/m/b/x/b/g;

.field public e:J

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Le/m/b/x/b/k;

.field public i:Le/m/b/x/b/n;

.field public j:Ljava/io/InputStream;

.field public k:Ljava/lang/String;

.field public l:J

.field public m:I

.field public n:Ljava/lang/Byte;

.field public o:J

.field public p:I

.field public q:[B

.field public r:Z


# direct methods
.method public constructor <init>(Le/m/b/x/b/b;Le/m/b/x/b/t;Le/m/b/x/b/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/m/b/x/a/d/a$a;->a:Le/m/b/x/a/d/a$a;

    iput-object v0, p0, Le/m/b/x/a/d/a;->a:Le/m/b/x/a/d/a$a;

    const-string v0, "POST"

    .line 3
    iput-object v0, p0, Le/m/b/x/a/d/a;->g:Ljava/lang/String;

    .line 4
    new-instance v0, Le/m/b/x/b/k;

    invoke-direct {v0}, Le/m/b/x/b/k;-><init>()V

    iput-object v0, p0, Le/m/b/x/a/d/a;->h:Le/m/b/x/b/k;

    const-string v0, "*"

    .line 5
    iput-object v0, p0, Le/m/b/x/a/d/a;->k:Ljava/lang/String;

    const/high16 v0, 0xa00000

    .line 6
    iput v0, p0, Le/m/b/x/a/d/a;->m:I

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Le/m/b/x/a/d/a;->b:Le/m/b/x/b/b;

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 10
    invoke-virtual {p2}, Le/m/b/x/b/t;->b()Le/m/b/x/b/o;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Le/m/b/x/b/o;

    invoke-direct {p1, p2, p3}, Le/m/b/x/b/o;-><init>(Le/m/b/x/b/t;Le/m/b/x/b/p;)V

    .line 12
    :goto_0
    iput-object p1, p0, Le/m/b/x/a/d/a;->c:Le/m/b/x/b/o;

    return-void
.end method


# virtual methods
.method public final a(Le/m/b/x/b/n;)Le/m/b/x/b/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/b/x/a/d/a;->r:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p1, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    .line 3
    instance-of v0, v0, Le/m/b/x/b/d;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Le/m/b/x/b/e;

    invoke-direct {v0}, Le/m/b/x/b/e;-><init>()V

    .line 5
    iput-object v0, p1, Le/m/b/x/b/n;->r:Le/m/b/x/b/h;

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Le/m/b/x/a/d/a;->b(Le/m/b/x/b/n;)Le/m/b/x/b/q;

    move-result-object p1

    return-object p1
.end method

.method public final b(Le/m/b/x/b/n;)Le/m/b/x/b/q;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/m/b/x/b/n;->j:Ljava/lang/String;

    const-string v1, "POST"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v5, v4

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p1, Le/m/b/x/b/n;->k:Le/m/b/x/b/f;

    .line 5
    invoke-virtual {v2}, Le/m/b/x/b/f;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0x800

    if-le v2, v6, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p1, Le/m/b/x/b/n;->i:Le/m/b/x/b/t;

    .line 7
    invoke-virtual {v2, v0}, Le/m/b/x/b/t;->c(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v5, v0

    :goto_0
    if-eqz v5, :cond_3

    .line 8
    iget-object v0, p1, Le/m/b/x/b/n;->j:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v1}, Le/m/b/x/b/n;->d(Ljava/lang/String;)Le/m/b/x/b/n;

    .line 10
    iget-object v1, p1, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    const-string v2, "X-HTTP-Method-Override"

    .line 11
    invoke-virtual {v1, v2, v0}, Le/m/b/x/b/k;->s(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/b/k;

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    new-instance v0, Le/m/b/x/b/a0;

    .line 14
    iget-object v1, p1, Le/m/b/x/b/n;->k:Le/m/b/x/b/f;

    .line 15
    invoke-virtual {v1}, Le/m/b/x/b/f;->m()Le/m/b/x/b/f;

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/b/x/b/a0;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object v0, p1, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    .line 17
    iget-object v0, p1, Le/m/b/x/b/n;->k:Le/m/b/x/b/f;

    .line 18
    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, p1, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    if-nez v0, :cond_3

    .line 20
    new-instance v0, Le/m/b/x/b/d;

    invoke-direct {v0}, Le/m/b/x/b/d;-><init>()V

    .line 21
    iput-object v0, p1, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    .line 22
    :cond_3
    :goto_1
    iput-boolean v4, p1, Le/m/b/x/b/n;->t:Z

    .line 23
    invoke-virtual {p1}, Le/m/b/x/b/n;->b()Le/m/b/x/b/q;

    move-result-object p1

    return-object p1
.end method

.method public final c()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/b/x/a/d/a;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/b/x/a/d/a;->b:Le/m/b/x/b/b;

    invoke-interface {v0}, Le/m/b/x/b/g;->a()J

    move-result-wide v0

    iput-wide v0, p0, Le/m/b/x/a/d/a;->e:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/m/b/x/a/d/a;->f:Z

    .line 4
    :cond_0
    iget-wide v0, p0, Le/m/b/x/a/d/a;->e:J

    return-wide v0
.end method

.method public final d()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/b/x/a/d/a;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/b/x/a/d/a;->i:Le/m/b/x/b/n;

    const-string v1, "The current request should not be null"

    .line 2
    invoke-static {v0, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Le/m/b/x/a/d/a;->i:Le/m/b/x/b/n;

    new-instance v1, Le/m/b/x/b/d;

    invoke-direct {v1}, Le/m/b/x/b/d;-><init>()V

    .line 4
    iput-object v1, v0, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    .line 5
    iget-object v0, v0, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    const-string v1, "bytes */"

    .line 6
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/m/b/x/a/d/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/b/x/b/k;->u(Ljava/lang/String;)Le/m/b/x/b/k;

    return-void
.end method
