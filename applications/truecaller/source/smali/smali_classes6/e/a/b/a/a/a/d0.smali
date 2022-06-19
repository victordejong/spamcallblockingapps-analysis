.class public final Le/a/b/a/a/a/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Le/a/b/l/l<",
        "+",
        "Le/a/b/l/q<",
        "Ls1/s;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/a/a;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/d0;->a:Le/a/b/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Le/a/b/l/l;

    .line 2
    iget-object v0, p1, Le/a/b/l/l;->b:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Le/a/b/l/q$b;

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p1}, Le/a/b/l/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/l/q;

    .line 5
    instance-of v0, p1, Le/a/b/l/q$c;

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Le/a/b/a/a/a/d0;->a:Le/a/b/a/a/a/a;

    .line 7
    iget-object p1, p1, Le/a/b/a/a/a/a;->b:Le/a/m4/c/i/a/e;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v0, v1, v1, v0}, Le/a/l4/k;->W(Le/a/m4/c/i/a/e;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 9
    iget-object p1, p0, Le/a/b/a/a/a/d0;->a:Le/a/b/a/a/a/a;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    goto :goto_1

    :cond_0
    const-string p1, "bizProfileRefreshNotifier"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    instance-of v0, p1, Le/a/b/l/q$a;

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Le/a/b/a/a/a/d0;->a:Le/a/b/a/a/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "Error: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Le/a/b/l/q$a;

    .line 13
    iget-object v2, v2, Le/a/b/l/q$a;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, p0, Le/a/b/a/a/a/d0;->a:Le/a/b/a/a/a/a;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    iget-object v2, p1, Le/a/b/l/q;->b:Ljava/lang/String;

    .line 16
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method
