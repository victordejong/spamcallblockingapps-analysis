.class public final Le/a/b0/a/b/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/b0/a/b/a$a;->b:I

    iput-object p2, p0, Le/a/b0/a/b/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Le/a/b0/a/b/a$a;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    throw v0

    .line 1
    :pswitch_0
    iget-object v0, p0, Le/a/b0/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 2
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 3
    sget v1, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_badge_verified_business:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 4
    :pswitch_1
    iget-object v0, p0, Le/a/b0/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 5
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 6
    sget v1, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_badge_user_24dp:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 7
    :pswitch_2
    iget-object v0, p0, Le/a/b0/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 8
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 9
    sget v1, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_spam_outline_24dp:I

    sget v2, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextRed:I

    invoke-interface {v0, v1, v2}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 10
    :pswitch_3
    iget-object v0, p0, Le/a/b0/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 11
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 12
    sget v1, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_action_check_24dp:I

    sget v2, Lcom/truecaller/common/ui/R$attr;->tcx_avatarIconSelected:I

    invoke-interface {v0, v1, v2}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 13
    :pswitch_4
    iget-object v0, p0, Le/a/b0/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 14
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 15
    sget v1, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_badge_priority:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 16
    :pswitch_5
    iget-object v0, p0, Le/a/b0/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 17
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 18
    sget v1, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_badge_premium_24dp:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_6
    iget-object v0, p0, Le/a/b0/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 20
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 21
    sget v1, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_group_24dp:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 22
    :pswitch_7
    iget-object v0, p0, Le/a/b0/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 23
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 24
    sget v1, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_badge_gold_24dp:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_8
    iget-object v0, p0, Le/a/b0/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 26
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 27
    sget v1, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_person_24dp:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 28
    :pswitch_9
    iget-object v0, p0, Le/a/b0/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 29
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 30
    sget v1, Lcom/truecaller/common/ui/R$drawable;->cred_badge:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 31
    :pswitch_a
    iget-object v0, p0, Le/a/b0/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 32
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 33
    sget v1, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_business_24dp:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
