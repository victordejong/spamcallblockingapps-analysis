.class public Ln3/k/i/e0$d;
.super Ln3/k/i/e0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/i/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/view/WindowInsetsController;


# direct methods
.method public constructor <init>(Landroid/view/Window;Ln3/k/i/e0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Ln3/k/i/e0$e;-><init>()V

    .line 3
    iput-object p1, p0, Ln3/k/i/e0$d;->a:Landroid/view/WindowInsetsController;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;Ln3/k/i/e0;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ln3/k/i/e0$e;-><init>()V

    .line 5
    iput-object p1, p0, Ln3/k/i/e0$d;->a:Landroid/view/WindowInsetsController;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Ln3/k/i/e0$d;->a:Landroid/view/WindowInsetsController;

    invoke-interface {p1, v0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Ln3/k/i/e0$d;->a:Landroid/view/WindowInsetsController;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :goto_0
    return-void
.end method
