.class public final Le/a/c/a/b/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/c/a/b/a/k;

.field public final synthetic b:Le/a/c/a/b/a/d0;


# direct methods
.method public constructor <init>(Le/a/c/a/b/a/k;Le/a/c/a/b/a/d0;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/j;->a:Le/a/c/a/b/a/k;

    iput-object p2, p0, Le/a/c/a/b/a/j;->b:Le/a/c/a/b/a/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a/b/a/j;->a:Le/a/c/a/b/a/k;

    iget-object v0, v0, Le/a/c/a/b/a/k;->b:Le/a/c/a/b/a/f;

    .line 2
    iget-object v1, v0, Le/a/c/a/b/a/f;->g:Ls1/z/b/p;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Le/a/c/a/b/a/j;->b:Le/a/c/a/b/a/d0;

    .line 4
    iget-object v2, v2, Le/a/c/a/b/a/d0;->b:Le/a/c/r/m/b;

    .line 5
    iget-object v2, v2, Le/a/c/r/m/b;->a:Ljava/lang/String;

    .line 6
    iget-object v0, v0, Le/a/c/a/b/a/f;->f:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    goto :goto_0

    :cond_0
    const-string v0, "shareMessageSwitch"

    .line 8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Le/a/c/a/b/a/j;->a:Le/a/c/a/b/a/k;

    iget-object v0, v0, Le/a/c/a/b/a/k;->b:Le/a/c/a/b/a/f;

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Le/a/c/a/b/a/f;->j:Z

    .line 11
    invoke-virtual {v0}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method
