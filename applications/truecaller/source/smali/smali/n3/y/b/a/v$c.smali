.class public final Ln3/y/b/a/v$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ln3/y/b/a/v$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/g0;

.field public b:I

.field public c:J

.field public d:Ljava/lang/Object;


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 8

    .line 1
    check-cast p1, Ln3/y/b/a/v$c;

    .line 2
    iget-object v0, p0, Ln3/y/b/a/v$c;->d:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p1, Ln3/y/b/a/v$c;->d:Ljava/lang/Object;

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const/4 v5, -0x1

    if-eq v3, v4, :cond_3

    if-eqz v0, :cond_2

    :goto_2
    move v1, v5

    :cond_2
    :goto_3
    move v2, v1

    goto :goto_4

    :cond_3
    if-nez v0, :cond_4

    goto :goto_4

    .line 3
    :cond_4
    iget v0, p0, Ln3/y/b/a/v$c;->b:I

    iget v3, p1, Ln3/y/b/a/v$c;->b:I

    sub-int/2addr v0, v3

    if-eqz v0, :cond_5

    move v2, v0

    goto :goto_4

    .line 4
    :cond_5
    iget-wide v3, p0, Ln3/y/b/a/v$c;->c:J

    iget-wide v6, p1, Ln3/y/b/a/v$c;->c:J

    .line 5
    sget p1, Ln3/y/b/a/x0/x;->a:I

    cmp-long p1, v3, v6

    if-gez p1, :cond_6

    goto :goto_2

    :cond_6
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_3

    :goto_4
    return v2
.end method
