.class public final Le/a/e/b/a/a$b;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/e/b/a/a$b;->a:I

    iput-object p2, p0, Le/a/e/b/a/a$b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget p1, p0, Le/a/e/b/a/a$b;->a:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/e/b/a/a$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/a/a;

    invoke-virtual {p1}, Le/a/e/b/a/a;->OA()Le/a/e/b/a/c;

    move-result-object p1

    invoke-interface {p1}, Le/a/e/b/a/c;->Lh()V

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/e/b/a/a$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/a/a;

    invoke-virtual {p1}, Le/a/e/b/a/a;->OA()Le/a/e/b/a/c;

    move-result-object p1

    invoke-interface {p1}, Le/a/e/b/a/c;->C5()V

    return v0

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/e/b/a/a$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/a/a;

    invoke-virtual {p1}, Le/a/e/b/a/a;->OA()Le/a/e/b/a/c;

    move-result-object p1

    invoke-interface {p1}, Le/a/e/b/a/c;->nh()V

    return v0
.end method
