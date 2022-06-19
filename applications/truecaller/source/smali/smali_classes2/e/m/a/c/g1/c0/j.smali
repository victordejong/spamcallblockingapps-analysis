.class public final Le/m/a/c/g1/c0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Le/m/a/c/g1/s$a;

.field public final d:I

.field public final e:[B


# direct methods
.method public constructor <init>(ZLjava/lang/String;I[BII[B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez p7, :cond_1

    move v0, v1

    :cond_1
    xor-int/2addr v0, v2

    .line 2
    invoke-static {v0}, Ln3/g0/y;->r(Z)V

    .line 3
    iput-boolean p1, p0, Le/m/a/c/g1/c0/j;->a:Z

    .line 4
    iput-object p2, p0, Le/m/a/c/g1/c0/j;->b:Ljava/lang/String;

    .line 5
    iput p3, p0, Le/m/a/c/g1/c0/j;->d:I

    .line 6
    iput-object p7, p0, Le/m/a/c/g1/c0/j;->e:[B

    .line 7
    new-instance p1, Le/m/a/c/g1/s$a;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "cbc1"

    .line 8
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "cbcs"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 9
    :goto_1
    invoke-direct {p1, v1, p4, p5, p6}, Le/m/a/c/g1/s$a;-><init>(I[BII)V

    iput-object p1, p0, Le/m/a/c/g1/c0/j;->c:Le/m/a/c/g1/s$a;

    return-void
.end method
