.class public final Le/a/m/a$b;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/m/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/m/a$b;->a:I

    iput-object p2, p0, Le/a/m/a$b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget p1, p0, Le/a/m/a$b;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/m/a$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/m/a;

    invoke-virtual {p1}, Le/a/m/a;->ZA()Le/a/m/q;

    move-result-object p1

    check-cast p1, Le/a/m/v;

    .line 2
    iget-object v0, p1, Le/a/m/v;->f:Lq3/a/p1;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lq3/a/p1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    new-instance v5, Le/a/m/t;

    invoke-direct {v5, p1, v1}, Le/a/m/t;-><init>(Le/a/m/v;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, p1, Le/a/m/v;->f:Lq3/a/p1;

    :goto_0
    return-void

    .line 5
    :cond_1
    throw v1

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/m/a$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/m/a;

    invoke-virtual {p1}, Le/a/m/a;->ZA()Le/a/m/q;

    move-result-object p1

    check-cast p1, Le/a/m/v;

    .line 7
    iget-object v0, p1, Le/a/m/v;->m:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->M()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    .line 8
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/m/s;

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Le/a/m/s;->Ro(Z)V

    :cond_3
    return-void
.end method
