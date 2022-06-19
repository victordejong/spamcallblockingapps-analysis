.class public Ln3/b/f/b0$b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/f/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Ln3/b/f/b0;


# direct methods
.method public constructor <init>(Ln3/b/f/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/f/b0$b;->a:Ln3/b/f/b0;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/b0$b;->a:Ln3/b/f/b0;

    invoke-virtual {v0}, Ln3/b/f/b0;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/b/f/b0$b;->a:Ln3/b/f/b0;

    invoke-virtual {v0}, Ln3/b/f/b0;->show()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/b0$b;->a:Ln3/b/f/b0;

    invoke-virtual {v0}, Ln3/b/f/b0;->dismiss()V

    return-void
.end method
