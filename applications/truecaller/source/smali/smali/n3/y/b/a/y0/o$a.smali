.class public final Ln3/y/b/a/y0/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/y0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ln3/y/b/a/y0/o;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ln3/y/b/a/y0/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-object p1, p0, Ln3/y/b/a/y0/o$a;->a:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Ln3/y/b/a/y0/o$a;->b:Ln3/y/b/a/y0/o;

    return-void
.end method


# virtual methods
.method public a(IIIF)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/y0/o$a;->b:Ln3/y/b/a/y0/o;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/y0/o$a;->a:Landroid/os/Handler;

    new-instance v7, Ln3/y/b/a/y0/l;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Ln3/y/b/a/y0/l;-><init>(Ln3/y/b/a/y0/o$a;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
