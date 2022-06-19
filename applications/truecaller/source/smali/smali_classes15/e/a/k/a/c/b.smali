.class public final Le/a/k/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/k/a/c/a;


# direct methods
.method public constructor <init>(Le/a/k/a/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/c/b;->a:Le/a/k/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/k/a/c/b;->a:Le/a/k/a/c/a;

    .line 2
    iget-object p1, p1, Le/a/k/a/c/a;->e:Le/a/k/a/c/f;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/c/e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/k/a/c/e;->t()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
