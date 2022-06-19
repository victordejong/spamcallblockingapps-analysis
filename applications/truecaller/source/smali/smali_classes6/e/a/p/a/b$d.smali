.class public final Le/a/p/a/b$d;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/text/Editable;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/p/a/b$d;->b:I

    iput-object p2, p0, Le/a/p/a/b$d;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/p/a/b$d;->b:I

    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    throw p1

    .line 1
    :pswitch_0
    check-cast p1, Landroid/text/Editable;

    .line 2
    iget-object p1, p0, Le/a/p/a/b$d;->c:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    invoke-virtual {p1}, Le/a/p/a/m;->Wj()V

    return-object v0

    .line 3
    :pswitch_1
    check-cast p1, Landroid/text/Editable;

    .line 4
    iget-object p1, p0, Le/a/p/a/b$d;->c:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    invoke-virtual {p1}, Le/a/p/a/m;->Wj()V

    return-object v0

    .line 5
    :pswitch_2
    check-cast p1, Landroid/text/Editable;

    .line 6
    iget-object p1, p0, Le/a/p/a/b$d;->c:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    invoke-virtual {p1}, Le/a/p/a/m;->Wj()V

    return-object v0

    .line 7
    :pswitch_3
    check-cast p1, Landroid/text/Editable;

    .line 8
    iget-object p1, p0, Le/a/p/a/b$d;->c:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    invoke-virtual {p1}, Le/a/p/a/m;->Wj()V

    return-object v0

    .line 9
    :pswitch_4
    check-cast p1, Landroid/text/Editable;

    .line 10
    iget-object p1, p0, Le/a/p/a/b$d;->c:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    invoke-virtual {p1}, Le/a/p/a/m;->Wj()V

    return-object v0

    .line 11
    :pswitch_5
    check-cast p1, Landroid/text/Editable;

    .line 12
    iget-object p1, p0, Le/a/p/a/b$d;->c:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    invoke-virtual {p1}, Le/a/p/a/m;->Wj()V

    return-object v0

    .line 13
    :pswitch_6
    check-cast p1, Landroid/text/Editable;

    .line 14
    iget-object p1, p0, Le/a/p/a/b$d;->c:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    invoke-virtual {p1}, Le/a/p/a/m;->Wj()V

    return-object v0

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
