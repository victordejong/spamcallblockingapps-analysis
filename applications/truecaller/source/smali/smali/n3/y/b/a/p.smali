.class public final synthetic Ln3/y/b/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/a$b;


# instance fields
.field public final a:Ln3/y/b/a/t$a;


# direct methods
.method public constructor <init>(Ln3/y/b/a/t$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/p;->a:Ln3/y/b/a/t$a;

    return-void
.end method


# virtual methods
.method public a(Ln3/y/b/a/f0$b;)V
    .locals 2

    iget-object v0, p0, Ln3/y/b/a/p;->a:Ln3/y/b/a/t$a;

    .line 1
    iget-object v0, v0, Ln3/y/b/a/t$a;->a:Ln3/y/b/a/d0;

    iget-object v1, v0, Ln3/y/b/a/d0;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v0, v0, Ln3/y/b/a/d0;->i:Ln3/y/b/a/v0/h;

    iget-object v0, v0, Ln3/y/b/a/v0/h;->c:Ln3/y/b/a/v0/f;

    invoke-interface {p1, v1, v0}, Ln3/y/b/a/f0$b;->I5(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/f;)V

    return-void
.end method
