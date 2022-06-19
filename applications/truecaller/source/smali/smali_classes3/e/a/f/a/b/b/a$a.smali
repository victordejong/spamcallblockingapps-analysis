.class public final Le/a/f/a/b/b/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/b/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/f/a/b/b/a$a;->a:I

    iput-object p2, p0, Le/a/f/a/b/b/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Le/a/f/a/b/b/a$a;->a:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/f/a/b/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/b/a;

    invoke-virtual {p1}, Le/a/f/a/b/b/a;->RA()Le/a/f/a/b/b/e;

    move-result-object p1

    .line 2
    iget-object v0, p1, Le/a/f/a/b/b/e;->b:Le/a/f/y/v;

    invoke-interface {v0}, Le/a/f/y/v;->p0()V

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/b/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/f/a/b/b/d;->iw()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/f/a/b/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/b/a;

    invoke-virtual {p1}, Le/a/f/a/b/b/a;->RA()Le/a/f/a/b/b/e;

    move-result-object p1

    .line 6
    iget-object v0, p1, Le/a/f/a/b/b/e;->b:Le/a/f/y/v;

    invoke-interface {v0}, Le/a/f/y/v;->p0()V

    .line 7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/b/d;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/f/a/b/b/d;->iw()V

    :cond_3
    return-void

    .line 8
    :cond_4
    iget-object p1, p0, Le/a/f/a/b/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/b/a;

    invoke-virtual {p1}, Le/a/f/a/b/b/a;->RA()Le/a/f/a/b/b/e;

    move-result-object p1

    .line 9
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/b/d;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/f/a/b/b/d;->wt()V

    .line 10
    :cond_5
    iget-object p1, p1, Le/a/f/a/b/b/e;->b:Le/a/f/y/v;

    invoke-interface {p1}, Le/a/f/y/v;->H1()V

    return-void
.end method
