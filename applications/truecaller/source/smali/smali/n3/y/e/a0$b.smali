.class public Ln3/y/e/a0$b;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/y/e/a0;-><init>(Landroid/content/Context;Ln3/y/e/u;Ln3/y/e/a0$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/e/a0;


# direct methods
.method public constructor <init>(Ln3/y/e/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/a0$b;->a:Ln3/y/e/a0;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/y/e/a0$b;->a:Ln3/y/e/a0;

    .line 2
    iget-object v0, p1, Ln3/y/e/a0;->i:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln3/y/e/a0;->a(Landroid/os/Message;)V

    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/y/e/a0$b;->a:Ln3/y/e/a0;

    .line 2
    iget-object v0, p1, Ln3/y/e/a0;->i:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln3/y/e/a0;->a(Landroid/os/Message;)V

    return-void
.end method
