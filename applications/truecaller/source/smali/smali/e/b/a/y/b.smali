.class public Le/b/a/y/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/y/b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:D

.field public final d:Le/b/a/y/b$a;

.field public final e:I

.field public final f:D

.field public final g:D

.field public final h:I

.field public final i:I

.field public final j:D

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DLe/b/a/y/b$a;IDDIIDZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/a/y/b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/b/a/y/b;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Le/b/a/y/b;->c:D

    .line 5
    iput-object p5, p0, Le/b/a/y/b;->d:Le/b/a/y/b$a;

    .line 6
    iput p6, p0, Le/b/a/y/b;->e:I

    .line 7
    iput-wide p7, p0, Le/b/a/y/b;->f:D

    .line 8
    iput-wide p9, p0, Le/b/a/y/b;->g:D

    .line 9
    iput p11, p0, Le/b/a/y/b;->h:I

    .line 10
    iput p12, p0, Le/b/a/y/b;->i:I

    .line 11
    iput-wide p13, p0, Le/b/a/y/b;->j:D

    .line 12
    iput-boolean p15, p0, Le/b/a/y/b;->k:Z

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Le/b/a/y/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Le/b/a/y/b;->b:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    int-to-double v0, v0

    .line 3
    iget-wide v2, p0, Le/b/a/y/b;->c:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Le/b/a/y/b;->d:Le/b/a/y/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget v0, p0, Le/b/a/y/b;->e:I

    add-int/2addr v1, v0

    .line 6
    iget-wide v2, p0, Le/b/a/y/b;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v1, 0x1f

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget v0, p0, Le/b/a/y/b;->h:I

    add-int/2addr v1, v0

    return v1
.end method
