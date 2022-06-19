.class public final Le/m/a/c/b0;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/android/exoplayer2/Format;

.field public final d:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput p1, p0, Le/m/a/c/b0;->a:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Le/m/a/c/b0;->b:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Le/m/a/c/b0;->c:Lcom/google/android/exoplayer2/Format;

    const/4 p1, 0x4

    .line 5
    iput p1, p0, Le/m/a/c/b0;->d:I

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;ILcom/google/android/exoplayer2/Format;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 8
    iput p1, p0, Le/m/a/c/b0;->a:I

    .line 9
    iput p3, p0, Le/m/a/c/b0;->b:I

    .line 10
    iput-object p4, p0, Le/m/a/c/b0;->c:Lcom/google/android/exoplayer2/Format;

    .line 11
    iput p5, p0, Le/m/a/c/b0;->d:I

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    return-void
.end method
