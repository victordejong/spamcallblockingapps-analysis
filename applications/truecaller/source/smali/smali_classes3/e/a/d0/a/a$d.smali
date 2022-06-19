.class public final Le/a/d0/a/a$d;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/a/a;-><init>(Landroid/content/Context;Le/a/d0/a/y$b;Lcom/truecaller/settings/CallingSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/d0/a/a$d;->b:I

    iput-object p2, p0, Le/a/d0/a/a$d;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le/a/d0/a/a$d;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    throw v0

    .line 1
    :pswitch_0
    iget-object v0, p0, Le/a/d0/a/a$d;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/a;

    invoke-static {v0}, Le/a/d0/a/a;->r(Le/a/d0/a/a;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a1245

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0

    .line 2
    :pswitch_1
    iget-object v0, p0, Le/a/d0/a/a$d;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/a;

    .line 3
    invoke-virtual {v0}, Le/a/d0/a/a;->y()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0bc2

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0

    .line 5
    :pswitch_2
    iget-object v0, p0, Le/a/d0/a/a$d;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/a;

    invoke-static {v0}, Le/a/d0/a/a;->r(Le/a/d0/a/a;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0d4d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0

    .line 6
    :pswitch_3
    iget-object v0, p0, Le/a/d0/a/a$d;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/a;

    invoke-static {v0}, Le/a/d0/a/a;->r(Le/a/d0/a/a;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0c6b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0

    .line 7
    :pswitch_4
    iget-object v0, p0, Le/a/d0/a/a$d;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/a;

    invoke-static {v0}, Le/a/d0/a/a;->r(Le/a/d0/a/a;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0c68

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0

    .line 8
    :pswitch_5
    iget-object v0, p0, Le/a/d0/a/a$d;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/a;

    invoke-static {v0}, Le/a/d0/a/a;->r(Le/a/d0/a/a;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0a1e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0

    .line 9
    :pswitch_6
    iget-object v0, p0, Le/a/d0/a/a$d;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/a;

    invoke-static {v0}, Le/a/d0/a/a;->r(Le/a/d0/a/a;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0a1c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

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
