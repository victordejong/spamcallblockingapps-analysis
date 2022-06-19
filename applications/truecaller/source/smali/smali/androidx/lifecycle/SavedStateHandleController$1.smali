.class public Landroidx/lifecycle/SavedStateHandleController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/SavedStateHandleController;->d(Ln3/d0/a;Ln3/v/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/v/u;

.field public final synthetic b:Ln3/d0/a;


# direct methods
.method public constructor <init>(Ln3/v/u;Ln3/d0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->a:Ln3/v/u;

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController$1;->b:Ln3/d0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c7(Ln3/v/b0;Ln3/v/u$a;)V
    .locals 0

    .line 1
    sget-object p1, Ln3/v/u$a;->ON_START:Ln3/v/u$a;

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->a:Ln3/v/u;

    check-cast p1, Ln3/v/c0;

    const-string p2, "removeObserver"

    .line 3
    invoke-virtual {p1, p2}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Ln3/v/c0;->b:Ln3/c/a/b/a;

    invoke-virtual {p1, p0}, Ln3/c/a/b/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->b:Ln3/d0/a;

    const-class p2, Landroidx/lifecycle/SavedStateHandleController$a;

    invoke-virtual {p1, p2}, Ln3/d0/a;->c(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
