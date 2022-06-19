.class public final Le/a/a/h/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/a/h/a$a;->a:I

    iput-object p2, p0, Le/a/a/h/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Le/a/a/h/a$a;->a:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    throw p1

    .line 1
    :pswitch_0
    iget-object p1, p0, Le/a/a/h/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/h/a;

    invoke-virtual {p1}, Le/a/a/h/a;->PA()Le/a/a/h/g;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/h/g;->hf()V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Le/a/a/h/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/h/a;

    invoke-virtual {p1}, Le/a/a/h/a;->PA()Le/a/a/h/g;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/h/g;->Dh()V

    return-void

    .line 3
    :pswitch_2
    iget-object p1, p0, Le/a/a/h/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/h/a;

    invoke-virtual {p1}, Le/a/a/h/a;->PA()Le/a/a/h/g;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/h/g;->lf()V

    return-void

    .line 4
    :pswitch_3
    iget-object p1, p0, Le/a/a/h/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/h/a;

    invoke-virtual {p1}, Le/a/a/h/a;->PA()Le/a/a/h/g;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/h/g;->e6()V

    return-void

    .line 5
    :pswitch_4
    iget-object p1, p0, Le/a/a/h/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/h/a;

    invoke-virtual {p1}, Le/a/a/h/a;->PA()Le/a/a/h/g;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/h/g;->fh()V

    return-void

    .line 6
    :pswitch_5
    iget-object p1, p0, Le/a/a/h/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/h/a;

    invoke-virtual {p1}, Le/a/a/h/a;->PA()Le/a/a/h/g;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/h/g;->Ag()V

    return-void

    .line 7
    :pswitch_6
    iget-object p1, p0, Le/a/a/h/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/h/a;

    invoke-virtual {p1}, Le/a/a/h/a;->PA()Le/a/a/h/g;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/h/g;->r0()Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
