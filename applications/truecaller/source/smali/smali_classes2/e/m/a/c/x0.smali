.class public final Le/m/a/c/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Le/m/a/c/x0;

.field public static final d:Le/m/a/c/x0;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Le/m/a/c/x0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Le/m/a/c/x0;-><init>(JJ)V

    sput-object v0, Le/m/a/c/x0;->c:Le/m/a/c/x0;

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v3, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ltz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 2
    :goto_0
    invoke-static {v5}, Ln3/g0/y;->r(Z)V

    cmp-long v5, v3, v1

    if-ltz v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    .line 3
    :goto_1
    invoke-static {v5}, Ln3/g0/y;->r(Z)V

    cmp-long v5, v3, v1

    if-ltz v5, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    move v5, v6

    .line 4
    :goto_2
    invoke-static {v5}, Ln3/g0/y;->r(Z)V

    cmp-long v5, v1, v1

    if-ltz v5, :cond_3

    move v5, v7

    goto :goto_3

    :cond_3
    move v5, v6

    .line 5
    :goto_3
    invoke-static {v5}, Ln3/g0/y;->r(Z)V

    cmp-long v5, v1, v1

    if-ltz v5, :cond_4

    move v5, v7

    goto :goto_4

    :cond_4
    move v5, v6

    .line 6
    :goto_4
    invoke-static {v5}, Ln3/g0/y;->r(Z)V

    cmp-long v1, v3, v1

    if-ltz v1, :cond_5

    move v6, v7

    .line 7
    :cond_5
    invoke-static {v6}, Ln3/g0/y;->r(Z)V

    .line 8
    sput-object v0, Le/m/a/c/x0;->d:Le/m/a/c/x0;

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
    invoke-static {v2}, Ln3/g0/y;->r(Z)V

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 3
    :goto_1
    invoke-static {v3}, Ln3/g0/y;->r(Z)V

    .line 4
    iput-wide p1, p0, Le/m/a/c/x0;->a:J

    .line 5
    iput-wide p3, p0, Le/m/a/c/x0;->b:J

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
    const-class v2, Le/m/a/c/x0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Le/m/a/c/x0;

    .line 3
    iget-wide v2, p0, Le/m/a/c/x0;->a:J

    iget-wide v4, p1, Le/m/a/c/x0;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Le/m/a/c/x0;->b:J

    iget-wide v4, p1, Le/m/a/c/x0;->b:J

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
    iget-wide v0, p0, Le/m/a/c/x0;->a:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/m/a/c/x0;->b:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
