.class public final Le/a/c/a/j/c/k/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/j/c/k/b;

.field public final synthetic b:Le/a/c/a/j/b/c;


# direct methods
.method public constructor <init>(Le/a/c/a/j/c/k/b;Le/a/c/a/j/b/c;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/c/k/a;->a:Le/a/c/a/j/c/k/b;

    iput-object p2, p0, Le/a/c/a/j/c/k/a;->b:Le/a/c/a/j/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/c/a/j/c/k/a;->a:Le/a/c/a/j/c/k/b;

    iget-object v0, p0, Le/a/c/a/j/c/k/a;->b:Le/a/c/a/j/b/c;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "filterItem"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p1, Le/a/c/a/j/c/k/b;->b:Le/a/c/a/g/h1;

    iget-object v1, v1, Le/a/c/a/g/h1;->b:Lcom/google/android/material/card/MaterialCardView;

    .line 4
    iget-object p1, p1, Le/a/c/a/j/c/k/b;->c:Ls1/z/b/p;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method
