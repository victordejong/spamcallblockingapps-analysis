.class public Ln3/v/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/b0;


# static fields
.field public static final i:Ln3/v/p0;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public final f:Ln3/v/c0;

.field public g:Ljava/lang/Runnable;

.field public h:Ln3/v/r0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/v/p0;

    invoke-direct {v0}, Ln3/v/p0;-><init>()V

    sput-object v0, Ln3/v/p0;->i:Ln3/v/p0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/v/p0;->a:I

    .line 3
    iput v0, p0, Ln3/v/p0;->b:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ln3/v/p0;->c:Z

    .line 5
    iput-boolean v0, p0, Ln3/v/p0;->d:Z

    .line 6
    new-instance v0, Ln3/v/c0;

    invoke-direct {v0, p0}, Ln3/v/c0;-><init>(Ln3/v/b0;)V

    iput-object v0, p0, Ln3/v/p0;->f:Ln3/v/c0;

    .line 7
    new-instance v0, Ln3/v/p0$a;

    invoke-direct {v0, p0}, Ln3/v/p0$a;-><init>(Ln3/v/p0;)V

    iput-object v0, p0, Ln3/v/p0;->g:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Ln3/v/p0$b;

    invoke-direct {v0, p0}, Ln3/v/p0$b;-><init>(Ln3/v/p0;)V

    iput-object v0, p0, Ln3/v/p0;->h:Ln3/v/r0$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget v0, p0, Ln3/v/p0;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ln3/v/p0;->b:I

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Ln3/v/p0;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/v/p0;->f:Ln3/v/c0;

    sget-object v1, Ln3/v/u$a;->ON_RESUME:Ln3/v/u$a;

    invoke-virtual {v0, v1}, Ln3/v/c0;->e(Ln3/v/u$a;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ln3/v/p0;->c:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Ln3/v/p0;->e:Landroid/os/Handler;

    iget-object v1, p0, Ln3/v/p0;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget v0, p0, Ln3/v/p0;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ln3/v/p0;->a:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, Ln3/v/p0;->d:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/v/p0;->f:Ln3/v/c0;

    sget-object v1, Ln3/v/u$a;->ON_START:Ln3/v/u$a;

    invoke-virtual {v0, v1}, Ln3/v/c0;->e(Ln3/v/u$a;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ln3/v/p0;->d:Z

    :cond_0
    return-void
.end method

.method public getLifecycle()Ln3/v/u;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/v/p0;->f:Ln3/v/c0;

    return-object v0
.end method
