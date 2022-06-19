.class public final synthetic Ln3/y/b/a/y0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/y0/o$a;

.field public final b:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Ln3/y/b/a/y0/o$a;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/y0/m;->a:Ln3/y/b/a/y0/o$a;

    iput-object p2, p0, Ln3/y/b/a/y0/m;->b:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ln3/y/b/a/y0/m;->a:Ln3/y/b/a/y0/o$a;

    iget-object v1, p0, Ln3/y/b/a/y0/m;->b:Landroid/view/Surface;

    .line 1
    iget-object v0, v0, Ln3/y/b/a/y0/o$a;->b:Ln3/y/b/a/y0/o;

    invoke-interface {v0, v1}, Ln3/y/b/a/y0/o;->g(Landroid/view/Surface;)V

    return-void
.end method
