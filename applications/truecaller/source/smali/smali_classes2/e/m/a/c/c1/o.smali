.class public final Le/m/a/c/c1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/c1/o$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/c1/o$a;

.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Le/m/a/c/q1/d0;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Le/m/a/c/c1/o$a;

    invoke-direct {v0, p1}, Le/m/a/c/c1/o$a;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Le/m/a/c/c1/o;->a:Le/m/a/c/c1/o$a;

    .line 4
    invoke-virtual {p0}, Le/m/a/c/c1/o;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/m/a/c/c1/o;->a:Le/m/a/c/c1/o$a;

    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, p1}, Le/m/a/c/c1/o;->b(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/o;->a:Le/m/a/c/c1/o$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Le/m/a/c/c1/o;->b(I)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 6

    .line 1
    iput p1, p0, Le/m/a/c/c1/o;->b:I

    const-wide/16 v0, 0x1388

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-wide/32 v0, 0x7a120

    .line 2
    iput-wide v0, p0, Le/m/a/c/c1/o;->d:J

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    const-wide/32 v0, 0x989680

    .line 4
    iput-wide v0, p0, Le/m/a/c/c1/o;->d:J

    goto :goto_0

    .line 5
    :cond_2
    iput-wide v0, p0, Le/m/a/c/c1/o;->d:J

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Le/m/a/c/c1/o;->e:J

    const-wide/16 v2, -0x1

    .line 7
    iput-wide v2, p0, Le/m/a/c/c1/o;->f:J

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Le/m/a/c/c1/o;->c:J

    .line 9
    iput-wide v0, p0, Le/m/a/c/c1/o;->d:J

    :goto_0
    return-void
.end method
