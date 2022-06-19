.class public Ln3/y/c/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/s0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/y/c/k0;->a(Landroidx/media2/exoplayer/external/Format;)Ln3/y/b/a/s0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ln3/y/c/k0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/y/b/a/s0/c;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 4

    .line 1
    iget-wide v0, p1, Ln3/y/b/a/o0/c;->d:J

    .line 2
    iget-object p1, p1, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 3
    new-instance v2, Landroidx/media2/player/ByteArrayFrame;

    array-length v3, p1

    .line 4
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-direct {v2, v0, v1, p1}, Landroidx/media2/player/ByteArrayFrame;-><init>(J[B)V

    .line 5
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    return-object p1
.end method
