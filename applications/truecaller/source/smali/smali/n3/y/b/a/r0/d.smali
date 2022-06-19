.class public final synthetic Ln3/y/b/a/r0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/r0/h$g;


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/Format;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/r0/d;->a:Landroidx/media2/exoplayer/external/Format;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Ln3/y/b/a/r0/d;->a:Landroidx/media2/exoplayer/external/Format;

    check-cast p1, Ln3/y/b/a/r0/a;

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Ln3/y/b/a/r0/a;->c(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1
    :try_end_0
    .catch Ln3/y/b/a/r0/h$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
