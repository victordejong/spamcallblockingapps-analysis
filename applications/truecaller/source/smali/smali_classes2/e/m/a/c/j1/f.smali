.class public final Le/m/a/c/j1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:I

.field public final h:Le/m/a/c/j1/i;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJII)V
    .locals 12

    .line 1
    new-instance v11, Le/m/a/c/j1/i;

    invoke-direct {v11}, Le/m/a/c/j1/i;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Le/m/a/c/j1/f;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILe/m/a/c/j1/i;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILe/m/a/c/j1/i;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p10, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-ne v2, v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    .line 4
    :goto_2
    invoke-static {v2}, Ln3/g0/y;->r(Z)V

    if-eqz p9, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    .line 5
    :goto_3
    invoke-static {v0}, Ln3/g0/y;->r(Z)V

    .line 6
    :cond_4
    iput-object p1, p0, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 7
    iput p2, p0, Le/m/a/c/j1/f;->b:I

    .line 8
    iput-wide p3, p0, Le/m/a/c/j1/f;->c:J

    .line 9
    iput-wide p5, p0, Le/m/a/c/j1/f;->d:J

    .line 10
    iput-wide p7, p0, Le/m/a/c/j1/f;->e:J

    .line 11
    iput p9, p0, Le/m/a/c/j1/f;->f:I

    .line 12
    iput p10, p0, Le/m/a/c/j1/f;->g:I

    .line 13
    iput-object p11, p0, Le/m/a/c/j1/f;->h:Le/m/a/c/j1/i;

    return-void
.end method
