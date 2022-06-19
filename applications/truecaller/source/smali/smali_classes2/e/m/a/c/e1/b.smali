.class public final Le/m/a/c/e1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/e1/b$b;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[I

.field public c:[I

.field public final d:Landroid/media/MediaCodec$CryptoInfo;

.field public final e:Le/m/a/c/e1/b$b;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Le/m/a/c/e1/b;->d:Landroid/media/MediaCodec$CryptoInfo;

    .line 3
    sget v1, Le/m/a/c/q1/d0;->a:I

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v1, v3, :cond_0

    new-instance v1, Le/m/a/c/e1/b$b;

    invoke-direct {v1, v0, v2}, Le/m/a/c/e1/b$b;-><init>(Landroid/media/MediaCodec$CryptoInfo;Le/m/a/c/e1/b$a;)V

    move-object v2, v1

    :cond_0
    iput-object v2, p0, Le/m/a/c/e1/b;->e:Le/m/a/c/e1/b$b;

    return-void
.end method
