.class public Ln3/v/p0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/v/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/v/p0;


# direct methods
.method public constructor <init>(Ln3/v/p0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/v/p0$a;->a:Ln3/v/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/v/p0$a;->a:Ln3/v/p0;

    .line 2
    iget v1, v0, Ln3/v/p0;->b:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    iput-boolean v2, v0, Ln3/v/p0;->c:Z

    .line 4
    iget-object v0, v0, Ln3/v/p0;->f:Ln3/v/c0;

    sget-object v1, Ln3/v/u$a;->ON_PAUSE:Ln3/v/u$a;

    invoke-virtual {v0, v1}, Ln3/v/c0;->e(Ln3/v/u$a;)V

    .line 5
    :cond_0
    iget-object v0, p0, Ln3/v/p0$a;->a:Ln3/v/p0;

    .line 6
    iget v1, v0, Ln3/v/p0;->a:I

    if-nez v1, :cond_1

    iget-boolean v1, v0, Ln3/v/p0;->c:Z

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, v0, Ln3/v/p0;->f:Ln3/v/c0;

    sget-object v3, Ln3/v/u$a;->ON_STOP:Ln3/v/u$a;

    invoke-virtual {v1, v3}, Ln3/v/c0;->e(Ln3/v/u$a;)V

    .line 8
    iput-boolean v2, v0, Ln3/v/p0;->d:Z

    :cond_1
    return-void
.end method
