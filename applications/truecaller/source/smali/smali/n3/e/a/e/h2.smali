.class public final Ln3/e/a/e/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln3/e/a/e/z0;

.field public final b:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Ljava/util/concurrent/Executor;

.field public e:Z

.field public f:Ln3/h/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h/a/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public final h:Ln3/e/a/e/z0$c;


# direct methods
.method public constructor <init>(Ln3/e/a/e/z0;Ln3/e/a/e/k2/e;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/e/a/e/h2$a;

    invoke-direct {v0, p0}, Ln3/e/a/e/h2$a;-><init>(Ln3/e/a/e/h2;)V

    iput-object v0, p0, Ln3/e/a/e/h2;->h:Ln3/e/a/e/z0$c;

    .line 3
    iput-object p1, p0, Ln3/e/a/e/h2;->a:Ln3/e/a/e/z0;

    .line 4
    iput-object p3, p0, Ln3/e/a/e/h2;->d:Ljava/util/concurrent/Executor;

    .line 5
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 6
    invoke-virtual {p2, p3}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iput-boolean p2, p0, Ln3/e/a/e/h2;->c:Z

    .line 8
    new-instance p2, Ln3/v/k0;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3}, Ln3/v/k0;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ln3/e/a/e/h2;->b:Ln3/v/k0;

    .line 9
    iget-object p1, p1, Ln3/e/a/e/z0;->a:Ln3/e/a/e/z0$b;

    .line 10
    iget-object p1, p1, Ln3/e/a/e/z0$b;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Ln3/v/k0;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/v/k0<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->L0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
