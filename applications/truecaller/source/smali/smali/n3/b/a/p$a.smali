.class public Ln3/b/a/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/b/a/p;


# direct methods
.method public constructor <init>(Ln3/b/a/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/p$a;->a:Ln3/b/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/p$a;->a:Ln3/b/a/p;

    invoke-virtual {v0, p1}, Ln3/b/a/p;->b(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
