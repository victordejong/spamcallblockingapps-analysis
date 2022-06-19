.class public final Le/a/c/a/c/h/l/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/i/g$a;


# instance fields
.field public final synthetic a:Le/a/c/a/c/h/l/g;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:J

.field public final synthetic e:Le/a/c/r/j/p;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Le/a/c/a/c/h/l/g;Ljava/util/List;Landroid/view/View;JLe/a/c/r/j/p;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Landroid/view/View;",
            "J",
            "Le/a/c/r/j/p;",
            "Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/c/a/c/h/l/f;->a:Le/a/c/a/c/h/l/g;

    iput-object p2, p0, Le/a/c/a/c/h/l/f;->b:Ljava/util/List;

    iput-object p3, p0, Le/a/c/a/c/h/l/f;->c:Landroid/view/View;

    iput-wide p4, p0, Le/a/c/a/c/h/l/f;->d:J

    iput-object p6, p0, Le/a/c/a/c/h/l/f;->e:Le/a/c/r/j/p;

    iput-boolean p7, p0, Le/a/c/a/c/h/l/f;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/b/e/i/g;Landroid/view/MenuItem;)Z
    .locals 6

    const-string v0, "menu"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 2
    sget p2, Lcom/truecaller/insights/ui/R$id;->send_feedback:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    .line 3
    iget-object p1, p0, Le/a/c/a/c/h/l/f;->a:Le/a/c/a/c/h/l/g;

    iget-object v1, p0, Le/a/c/a/c/h/l/f;->b:Ljava/util/List;

    invoke-static {p1, v1, p2}, Le/a/c/a/c/h/l/g;->U4(Le/a/c/a/c/h/l/g;Ljava/util/List;I)Le/a/c/a/l/c;

    move-result-object p1

    invoke-virtual {p1}, Le/a/c/a/l/c;->a()V

    .line 4
    iget-object p1, p0, Le/a/c/a/c/h/l/f;->a:Le/a/c/a/c/h/l/g;

    iget-object p2, p0, Le/a/c/a/c/h/l/f;->c:Landroid/view/View;

    iget-wide v1, p0, Le/a/c/a/c/h/l/f;->d:J

    iget-object v3, p0, Le/a/c/a/c/h/l/f;->e:Le/a/c/r/j/p;

    iget-boolean v4, p0, Le/a/c/a/c/h/l/f;->f:Z

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v5, "anchor.context"

    invoke-static {p2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Le/a/m0/a1$k;->i(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Ln3/b/a/h;

    invoke-virtual {p2}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v5, "(anchor.context.activity\u2026y).supportFragmentManager"

    invoke-static {p2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Le/a/c/a/c/h/l/g;->i:Le/a/c/x/a;

    new-instance v5, Le/a/c/a/c/h/l/e;

    invoke-direct {v5, v3, v4, p2}, Le/a/c/a/c/h/l/e;-><init>(Le/a/c/r/j/p;ZLandroidx/fragment/app/FragmentManager;)V

    invoke-interface {p1, v1, v2, v5}, Le/a/c/x/a;->a(JLs1/z/b/l;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 9
    sget-object p2, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p2, p1, v1}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    sget p2, Lcom/truecaller/insights/ui/R$id;->dismiss:I

    if-ne p1, p2, :cond_2

    .line 12
    iget-object p1, p0, Le/a/c/a/c/h/l/f;->a:Le/a/c/a/c/h/l/g;

    iget-object v1, p0, Le/a/c/a/c/h/l/f;->b:Ljava/util/List;

    invoke-static {p1, v1, p2}, Le/a/c/a/c/h/l/g;->U4(Le/a/c/a/c/h/l/g;Ljava/util/List;I)Le/a/c/a/l/c;

    move-result-object p1

    invoke-virtual {p1}, Le/a/c/a/l/c;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Ln3/b/e/i/g;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
