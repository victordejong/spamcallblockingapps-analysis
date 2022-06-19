.class public final Ln3/m0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/m0/d$a;
    }
.end annotation


# static fields
.field public static final i:Ln3/m0/d;


# instance fields
.field public a:Ln3/m0/q;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:Ln3/m0/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/m0/d$a;

    invoke-direct {v0}, Ln3/m0/d$a;-><init>()V

    .line 2
    new-instance v1, Ln3/m0/d;

    invoke-direct {v1, v0}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 3
    sput-object v1, Ln3/m0/d;->i:Ln3/m0/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ln3/m0/q;->a:Ln3/m0/q;

    iput-object v0, p0, Ln3/m0/d;->a:Ln3/m0/q;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Ln3/m0/d;->f:J

    .line 4
    iput-wide v0, p0, Ln3/m0/d;->g:J

    .line 5
    new-instance v0, Ln3/m0/e;

    invoke-direct {v0}, Ln3/m0/e;-><init>()V

    iput-object v0, p0, Ln3/m0/d;->h:Ln3/m0/e;

    return-void
.end method

.method public constructor <init>(Ln3/m0/d$a;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Ln3/m0/q;->a:Ln3/m0/q;

    iput-object v0, p0, Ln3/m0/d;->a:Ln3/m0/q;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Ln3/m0/d;->f:J

    .line 9
    iput-wide v0, p0, Ln3/m0/d;->g:J

    .line 10
    new-instance v0, Ln3/m0/e;

    invoke-direct {v0}, Ln3/m0/e;-><init>()V

    iput-object v0, p0, Ln3/m0/d;->h:Ln3/m0/e;

    .line 11
    iget-boolean v0, p1, Ln3/m0/d$a;->a:Z

    iput-boolean v0, p0, Ln3/m0/d;->b:Z

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v1, p1, Ln3/m0/d$a;->b:Z

    iput-boolean v1, p0, Ln3/m0/d;->c:Z

    .line 13
    iget-object v1, p1, Ln3/m0/d$a;->c:Ln3/m0/q;

    iput-object v1, p0, Ln3/m0/d;->a:Ln3/m0/q;

    .line 14
    iget-boolean v1, p1, Ln3/m0/d$a;->d:Z

    iput-boolean v1, p0, Ln3/m0/d;->d:Z

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Ln3/m0/d;->e:Z

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 16
    iget-object v0, p1, Ln3/m0/d$a;->g:Ln3/m0/e;

    iput-object v0, p0, Ln3/m0/d;->h:Ln3/m0/e;

    .line 17
    iget-wide v0, p1, Ln3/m0/d$a;->e:J

    iput-wide v0, p0, Ln3/m0/d;->f:J

    .line 18
    iget-wide v0, p1, Ln3/m0/d$a;->f:J

    iput-wide v0, p0, Ln3/m0/d;->g:J

    :cond_0
    return-void
.end method

.method public constructor <init>(Ln3/m0/d;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Ln3/m0/q;->a:Ln3/m0/q;

    iput-object v0, p0, Ln3/m0/d;->a:Ln3/m0/q;

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Ln3/m0/d;->f:J

    .line 22
    iput-wide v0, p0, Ln3/m0/d;->g:J

    .line 23
    new-instance v0, Ln3/m0/e;

    invoke-direct {v0}, Ln3/m0/e;-><init>()V

    iput-object v0, p0, Ln3/m0/d;->h:Ln3/m0/e;

    .line 24
    iget-boolean v0, p1, Ln3/m0/d;->b:Z

    iput-boolean v0, p0, Ln3/m0/d;->b:Z

    .line 25
    iget-boolean v0, p1, Ln3/m0/d;->c:Z

    iput-boolean v0, p0, Ln3/m0/d;->c:Z

    .line 26
    iget-object v0, p1, Ln3/m0/d;->a:Ln3/m0/q;

    iput-object v0, p0, Ln3/m0/d;->a:Ln3/m0/q;

    .line 27
    iget-boolean v0, p1, Ln3/m0/d;->d:Z

    iput-boolean v0, p0, Ln3/m0/d;->d:Z

    .line 28
    iget-boolean v0, p1, Ln3/m0/d;->e:Z

    iput-boolean v0, p0, Ln3/m0/d;->e:Z

    .line 29
    iget-object p1, p1, Ln3/m0/d;->h:Ln3/m0/e;

    iput-object p1, p0, Ln3/m0/d;->h:Ln3/m0/e;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/m0/d;->h:Ln3/m0/e;

    invoke-virtual {v0}, Ln3/m0/e;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 1
    const-class v1, Ln3/m0/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Ln3/m0/d;

    .line 3
    iget-boolean v1, p0, Ln3/m0/d;->b:Z

    iget-boolean v2, p1, Ln3/m0/d;->b:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget-boolean v1, p0, Ln3/m0/d;->c:Z

    iget-boolean v2, p1, Ln3/m0/d;->c:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 5
    :cond_3
    iget-boolean v1, p0, Ln3/m0/d;->d:Z

    iget-boolean v2, p1, Ln3/m0/d;->d:Z

    if-eq v1, v2, :cond_4

    return v0

    .line 6
    :cond_4
    iget-boolean v1, p0, Ln3/m0/d;->e:Z

    iget-boolean v2, p1, Ln3/m0/d;->e:Z

    if-eq v1, v2, :cond_5

    return v0

    .line 7
    :cond_5
    iget-wide v1, p0, Ln3/m0/d;->f:J

    iget-wide v3, p1, Ln3/m0/d;->f:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    return v0

    .line 8
    :cond_6
    iget-wide v1, p0, Ln3/m0/d;->g:J

    iget-wide v3, p1, Ln3/m0/d;->g:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    return v0

    .line 9
    :cond_7
    iget-object v1, p0, Ln3/m0/d;->a:Ln3/m0/q;

    iget-object v2, p1, Ln3/m0/d;->a:Ln3/m0/q;

    if-eq v1, v2, :cond_8

    return v0

    .line 10
    :cond_8
    iget-object v0, p0, Ln3/m0/d;->h:Ln3/m0/e;

    iget-object p1, p1, Ln3/m0/d;->h:Ln3/m0/e;

    invoke-virtual {v0, p1}, Ln3/m0/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/m0/d;->a:Ln3/m0/q;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Ln3/m0/d;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Ln3/m0/d;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Ln3/m0/d;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v1, p0, Ln3/m0/d;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-wide v1, p0, Ln3/m0/d;->f:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-wide v1, p0, Ln3/m0/d;->g:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Ln3/m0/d;->h:Ln3/m0/e;

    invoke-virtual {v1}, Ln3/m0/e;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
