.class public final Ln3/y/b/a/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ln3/y/b/a/j0;

.field public static final d:Ln3/y/b/a/j0;

.field public static final e:Ln3/y/b/a/j0;

.field public static final f:Ln3/y/b/a/j0;

.field public static final g:Ln3/y/b/a/j0;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ln3/y/b/a/j0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ln3/y/b/a/j0;-><init>(JJ)V

    sput-object v0, Ln3/y/b/a/j0;->c:Ln3/y/b/a/j0;

    .line 2
    new-instance v3, Ln3/y/b/a/j0;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v3, v4, v5, v4, v5}, Ln3/y/b/a/j0;-><init>(JJ)V

    sput-object v3, Ln3/y/b/a/j0;->d:Ln3/y/b/a/j0;

    .line 3
    new-instance v3, Ln3/y/b/a/j0;

    invoke-direct {v3, v4, v5, v1, v2}, Ln3/y/b/a/j0;-><init>(JJ)V

    sput-object v3, Ln3/y/b/a/j0;->e:Ln3/y/b/a/j0;

    .line 4
    new-instance v3, Ln3/y/b/a/j0;

    invoke-direct {v3, v1, v2, v4, v5}, Ln3/y/b/a/j0;-><init>(JJ)V

    sput-object v3, Ln3/y/b/a/j0;->f:Ln3/y/b/a/j0;

    .line 5
    sput-object v0, Ln3/y/b/a/j0;->g:Ln3/y/b/a/j0;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 2
    :goto_0
    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 3
    :goto_1
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 4
    iput-wide p1, p0, Ln3/y/b/a/j0;->a:J

    .line 5
    iput-wide p3, p0, Ln3/y/b/a/j0;->b:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Ln3/y/b/a/j0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Ln3/y/b/a/j0;

    .line 3
    iget-wide v2, p0, Ln3/y/b/a/j0;->a:J

    iget-wide v4, p1, Ln3/y/b/a/j0;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Ln3/y/b/a/j0;->b:J

    iget-wide v4, p1, Ln3/y/b/a/j0;->b:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/j0;->a:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ln3/y/b/a/j0;->b:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
