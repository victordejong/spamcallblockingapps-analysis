.class public Ln3/y/e/k$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    iput-object p1, p0, Ln3/y/e/k$r;->a:Ln3/y/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/e/k$r;->a:Ln3/y/e/k;

    iget-boolean v1, v0, Ln3/y/e/k;->y:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Ln3/y/e/k;->N0:Ljava/lang/Runnable;

    iget-wide v2, v0, Ln3/y/e/k;->r:J

    invoke-virtual {v0, v1, v2, v3}, Ln3/y/e/k;->n(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
