.class public Le/m/a/c/n1/a;
.super Le/m/a/c/n1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/n1/a$c;,
        Le/m/a/c/n1/a$b;,
        Le/m/a/c/n1/a$d;
    }
.end annotation


# instance fields
.field public final f:Le/m/a/c/n1/a$b;

.field public final g:Le/m/a/c/q1/f;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILe/m/a/c/n1/a$b;JJJFJLe/m/a/c/q1/f;Le/m/a/c/n1/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/m/a/c/n1/b;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 2
    iput-object p3, p0, Le/m/a/c/n1/a;->f:Le/m/a/c/n1/a$b;

    .line 3
    iput-object p13, p0, Le/m/a/c/n1/a;->g:Le/m/a/c/q1/f;

    return-void
.end method

.method public static j([[[JI[[J[I)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    .line 1
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 2
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-object v5, p2, v3

    aget v6, p3, v3

    aget-wide v6, v5, v6

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    .line 3
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-wide v5, v4, v5

    add-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    array-length p2, p0

    move p3, v0

    :goto_1
    if-ge p3, p2, :cond_1

    aget-object v3, p0, p3

    .line 5
    aget-object v3, v3, p1

    aput-wide v1, v3, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(F)V
    .locals 0

    return-void
.end method
