.class public Ln3/y/b/a/r0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/r0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/r0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ln3/y/b/a/r0/a;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/r0/h$c;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "audio/raw"

    .line 1
    invoke-static {v1, v0, v0}, Ln3/y/b/a/r0/h;->d(Ljava/lang/String;ZZ)Ln3/y/b/a/r0/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, v0, Ln3/y/b/a/r0/a;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ln3/y/b/a/r0/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Ln3/y/b/a/r0/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ln3/y/b/a/r0/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/r0/h$c;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Ln3/y/b/a/r0/h;->e(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
