.class public final Le/a/n/a$b;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/n/a$b;->a:I

    iput-object p2, p0, Le/a/n/a$b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget p1, p0, Le/a/n/a$b;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/n/a$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/n/a;

    invoke-virtual {p1}, Le/a/n/a;->OA()Le/a/n/y;

    move-result-object p1

    invoke-interface {p1, p2}, Le/a/n/y;->uc(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/n/a$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/n/a;

    invoke-virtual {p1}, Le/a/n/a;->OA()Le/a/n/y;

    move-result-object p1

    iget-object v0, p0, Le/a/n/a$b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/n/a;

    invoke-interface {p1, v0, p2}, Le/a/n/y;->z8(Landroidx/fragment/app/Fragment;Z)Lq3/a/n0;

    return-void
.end method
