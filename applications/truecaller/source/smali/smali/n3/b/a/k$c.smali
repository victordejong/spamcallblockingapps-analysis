.class public final Ln3/b/a/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/i/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Ln3/b/a/k;


# direct methods
.method public constructor <init>(Ln3/b/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/k$c;->a:Ln3/b/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/b/e/i/g;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Ln3/b/a/k$c;->a:Ln3/b/a/k;

    invoke-virtual {p2, p1}, Ln3/b/a/k;->G(Ln3/b/e/i/g;)V

    return-void
.end method

.method public b(Ln3/b/e/i/g;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/k$c;->a:Ln3/b/a/k;

    invoke-virtual {v0}, Ln3/b/a/k;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
