.class public final Le/a/z/a/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/z/a/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/z/a/a/a$a;->a:I

    iput-object p2, p0, Le/a/z/a/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Le/a/z/a/a/a$a;->a:I

    const-string v0, "presenter"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 1
    iget-object p1, p0, Le/a/z/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/z/a/a/a;

    .line 2
    iget-object v2, p1, Le/a/z/a/a/a;->b:Le/a/z/a/b/b;

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p1, Le/a/z/a/a/a;->d:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-interface {v2, p1}, Le/a/z/a/b/b;->lb(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    throw v1

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/z/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/z/a/a/a;

    .line 8
    iget-object p1, p1, Le/a/z/a/a/a;->b:Le/a/z/a/b/b;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Le/a/z/a/b/b;->j7()V

    return-void

    .line 10
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
