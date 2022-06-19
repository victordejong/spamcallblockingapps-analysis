.class public Ln3/y/e/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/e/k;


# direct methods
.method public constructor <init>(Ln3/y/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/k$a;->a:Ln3/y/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/y/e/k$a;->a:Ln3/y/e/k;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Ln3/y/e/k$a;->a:Ln3/y/e/k;

    iget-boolean v2, v1, Ln3/y/e/k;->u:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, v1, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ln3/y/e/x;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Ln3/y/e/k$a;->a:Ln3/y/e/k;

    invoke-virtual {v0}, Ln3/y/e/k;->q()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Ln3/y/e/k$a;->a:Ln3/y/e/k;

    iget-object v3, v2, Ln3/y/e/k;->K0:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    rem-long/2addr v0, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Ln3/y/e/k;->n(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
