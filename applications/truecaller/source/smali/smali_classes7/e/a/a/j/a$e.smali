.class public final Le/a/a/j/a$e;
.super Le/a/a/j/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/j/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/j/a;


# direct methods
.method public constructor <init>(Le/a/a/j/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/j/a$e;->a:Le/a/a/j/a;

    invoke-direct {p0}, Le/a/a/j/p;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1

    const-string v0, "transition"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/j/a$e;->a:Le/a/a/j/a;

    invoke-virtual {v0}, Le/a/a/j/a;->PA()Le/a/a/j/h;

    move-result-object v0

    check-cast v0, Le/a/a/j/l;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/j/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/j/i;->mp()V

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method
