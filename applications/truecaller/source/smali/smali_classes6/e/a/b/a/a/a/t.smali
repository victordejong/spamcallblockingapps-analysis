.class public final Le/a/b/a/a/a/t;
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
.field public final synthetic a:Le/a/b/a/a/a/k;

.field public final synthetic b:Le/a/b/m/f0;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/k;Le/a/b/m/f0;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/t;->a:Le/a/b/a/a/a/k;

    iput-object p2, p0, Le/a/b/a/a/a/t;->b:Le/a/b/m/f0;

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
    check-cast v0, Le/a/b/l/q;

    .line 4
    instance-of v1, v0, Le/a/b/l/q$c;

    const-string v2, "binding.pbLoading"

    if-eqz v1, :cond_0

    iget-object p1, p0, Le/a/b/a/a/a/t;->b:Le/a/b/m/f0;

    iget-object p1, p1, Le/a/b/m/f0;->o:Landroid/widget/ProgressBar;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_1

    .line 5
    :cond_0
    instance-of v1, v0, Le/a/b/l/q$b;

    if-eqz v1, :cond_1

    iget-object p1, p0, Le/a/b/a/a/a/t;->b:Le/a/b/m/f0;

    iget-object p1, p1, Le/a/b/m/f0;->o:Landroid/widget/ProgressBar;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_1

    .line 6
    :cond_1
    instance-of v0, v0, Le/a/b/l/q$a;

    if-eqz v0, :cond_6

    .line 7
    iget-object v0, p0, Le/a/b/a/a/a/t;->b:Le/a/b/m/f0;

    iget-object v0, v0, Le/a/b/m/f0;->o:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Le/a/b/a/a/a/t;->a:Le/a/b/a/a/a/k;

    const-string v1, "event"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget v1, Le/a/b/a/a/a/k;->i:I

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p1, Le/a/b/l/l;->b:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type com.truecaller.bizmon.data.Result.Error<kotlin.Unit>"

    .line 12
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/b/l/q$a;

    .line 13
    iget-object v1, v1, Le/a/b/l/q$a;->d:Le/a/b/a/a/b/d/a$b;

    if-nez v1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    instance-of v3, v1, Le/a/b/a/a/b/d/a$b$a;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    instance-of v1, v1, Le/a/b/a/a/b/d/a$b$g;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p1}, Le/a/b/l/l;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/b/l/q$a;

    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v1

    .line 17
    iget-object v2, p1, Le/a/b/l/q$a;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 18
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 19
    :cond_5
    iget-object v0, p1, Le/a/b/l/q;->b:Ljava/lang/String;

    .line 20
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_1
    return-void
.end method
