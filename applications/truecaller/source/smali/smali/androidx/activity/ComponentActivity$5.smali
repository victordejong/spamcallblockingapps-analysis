.class public Landroidx/activity/ComponentActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/ComponentActivity$5;->a:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c7(Ln3/v/b0;Ln3/v/u$a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/activity/ComponentActivity$5;->a:Landroidx/activity/ComponentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->ensureViewModelStore()V

    .line 2
    iget-object p1, p0, Landroidx/activity/ComponentActivity$5;->a:Landroidx/activity/ComponentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Ln3/v/u;

    move-result-object p1

    check-cast p1, Ln3/v/c0;

    const-string p2, "removeObserver"

    .line 3
    invoke-virtual {p1, p2}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Ln3/v/c0;->b:Ln3/c/a/b/a;

    invoke-virtual {p1, p0}, Ln3/c/a/b/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
