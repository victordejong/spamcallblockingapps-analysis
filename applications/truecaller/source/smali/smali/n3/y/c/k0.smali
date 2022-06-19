.class public final Ln3/y/c/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/s0/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/exoplayer/external/Format;)Ln3/y/b/a/s0/a;
    .locals 0

    .line 1
    new-instance p1, Ln3/y/c/k0$a;

    invoke-direct {p1, p0}, Ln3/y/c/k0$a;-><init>(Ln3/y/c/k0;)V

    return-object p1
.end method

.method public b(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    const-string v0, "application/id3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
