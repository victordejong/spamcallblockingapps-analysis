.class public Ln3/b/f/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Ln3/b/f/g0;


# direct methods
.method public constructor <init>(Ln3/b/f/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/f/f0;->a:Ln3/b/f/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/f/f0;->a:Ln3/b/f/g0;

    iget-object v1, v0, Ln3/b/f/g0;->f:Ln3/b/f/g0$a;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, v0}, Ln3/b/f/g0$a;->a(Ln3/b/f/g0;)V

    :cond_0
    return-void
.end method
