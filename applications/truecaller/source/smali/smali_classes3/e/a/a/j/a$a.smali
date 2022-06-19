.class public final Le/a/a/j/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/j/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/a/j/a$a;->a:I

    iput-object p2, p0, Le/a/a/j/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Le/a/a/j/a$a;->a:I

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-ne p1, v0, :cond_3

    .line 1
    iget-object p1, p0, Le/a/a/j/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/j/a;

    invoke-virtual {p1}, Le/a/a/j/a;->PA()Le/a/a/j/h;

    move-result-object p1

    check-cast p1, Le/a/a/j/l;

    .line 2
    iget-boolean v0, p1, Le/a/a/j/l;->g:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/j/i;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/a/j/i;->qa()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/j/i;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/a/j/i;->Ir()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Le/a/a/j/l;->Kj(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 7
    :cond_4
    iget-object p1, p0, Le/a/a/j/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/j/a;

    invoke-virtual {p1}, Le/a/a/j/a;->PA()Le/a/a/j/h;

    move-result-object p1

    check-cast p1, Le/a/a/j/l;

    .line 8
    iget-boolean v1, p1, Le/a/a/j/l;->d:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Le/a/a/j/l;->Kj(Z)V

    return-void
.end method
