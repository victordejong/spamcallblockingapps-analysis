.class public final Le/m/a/c/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/c/l1/p$a;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Le/m/a/c/l1/p$a;JJJJZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    .line 3
    iput-wide p2, p0, Le/m/a/c/k0;->b:J

    .line 4
    iput-wide p4, p0, Le/m/a/c/k0;->c:J

    .line 5
    iput-wide p6, p0, Le/m/a/c/k0;->d:J

    .line 6
    iput-wide p8, p0, Le/m/a/c/k0;->e:J

    .line 7
    iput-boolean p10, p0, Le/m/a/c/k0;->f:Z

    .line 8
    iput-boolean p11, p0, Le/m/a/c/k0;->g:Z

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
    const-class v2, Le/m/a/c/k0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Le/m/a/c/k0;

    .line 3
    iget-wide v2, p0, Le/m/a/c/k0;->b:J

    iget-wide v4, p1, Le/m/a/c/k0;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Le/m/a/c/k0;->c:J

    iget-wide v4, p1, Le/m/a/c/k0;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Le/m/a/c/k0;->d:J

    iget-wide v4, p1, Le/m/a/c/k0;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Le/m/a/c/k0;->e:J

    iget-wide v4, p1, Le/m/a/c/k0;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Le/m/a/c/k0;->f:Z

    iget-boolean v3, p1, Le/m/a/c/k0;->f:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Le/m/a/c/k0;->g:Z

    iget-boolean v3, p1, Le/m/a/c/k0;->g:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    iget-object p1, p1, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    .line 4
    invoke-static {v2, p1}, Le/m/a/c/q1/d0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

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
    iget-object v0, p0, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    invoke-virtual {v0}, Le/m/a/c/l1/p$a;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v1, p0, Le/m/a/c/k0;->b:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-wide v1, p0, Le/m/a/c/k0;->c:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-wide v1, p0, Le/m/a/c/k0;->d:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-wide v1, p0, Le/m/a/c/k0;->e:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-boolean v1, p0, Le/m/a/c/k0;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-boolean v1, p0, Le/m/a/c/k0;->g:Z

    add-int/2addr v0, v1

    return v0
.end method
