.class public final synthetic Ln3/y/b/a/y0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/y0/o$a;

.field public final b:Landroidx/media2/exoplayer/external/Format;


# direct methods
.method public constructor <init>(Ln3/y/b/a/y0/o$a;Landroidx/media2/exoplayer/external/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/y0/j;->a:Ln3/y/b/a/y0/o$a;

    iput-object p2, p0, Ln3/y/b/a/y0/j;->b:Landroidx/media2/exoplayer/external/Format;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ln3/y/b/a/y0/j;->a:Ln3/y/b/a/y0/o$a;

    iget-object v1, p0, Ln3/y/b/a/y0/j;->b:Landroidx/media2/exoplayer/external/Format;

    .line 1
    iget-object v0, v0, Ln3/y/b/a/y0/o$a;->b:Ln3/y/b/a/y0/o;

    invoke-interface {v0, v1}, Ln3/y/b/a/y0/o;->n(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method
