.class public Ln3/y/c/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/y/c/m;->b()Landroidx/media/AudioAttributesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/media/AudioAttributesCompat;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/m$a;->a:Ln3/y/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/c/m$a;->a:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    .line 2
    iget-boolean v1, v0, Ln3/y/c/j0;->l:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 4
    iget-object v0, v0, Ln3/y/b/a/k0;->s:Ln3/y/b/a/n0/c;

    .line 5
    sget-object v1, Ln3/y/c/h0;->a:Ln3/y/b/a/q0/i;

    .line 6
    sget-object v1, Landroidx/media/AudioAttributesCompat;->b:Landroid/util/SparseIntArray;

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 8
    new-instance v1, Landroidx/media/AudioAttributesImplApi26$a;

    invoke-direct {v1}, Landroidx/media/AudioAttributesImplApi26$a;-><init>()V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Landroidx/media/AudioAttributesImplApi21$a;

    invoke-direct {v1}, Landroidx/media/AudioAttributesImplApi21$a;-><init>()V

    .line 10
    :goto_0
    iget v2, v0, Ln3/y/b/a/n0/c;->a:I

    .line 11
    iget-object v3, v1, Landroidx/media/AudioAttributesImplApi21$a;->a:Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 12
    iget v2, v0, Ln3/y/b/a/n0/c;->b:I

    .line 13
    iget-object v3, v1, Landroidx/media/AudioAttributesImplApi21$a;->a:Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    .line 14
    iget v0, v0, Ln3/y/b/a/n0/c;->c:I

    .line 15
    invoke-interface {v1, v0}, Landroidx/media/AudioAttributesImpl$a;->a(I)Landroidx/media/AudioAttributesImpl$a;

    .line 16
    new-instance v0, Landroidx/media/AudioAttributesCompat;

    invoke-interface {v1}, Landroidx/media/AudioAttributesImpl$a;->build()Landroidx/media/AudioAttributesImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media/AudioAttributesCompat;-><init>(Landroidx/media/AudioAttributesImpl;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
