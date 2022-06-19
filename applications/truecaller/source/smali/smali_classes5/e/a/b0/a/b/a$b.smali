.class public final Le/a/b0/a/b/a$b;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/b0/a/b/a$b;->b:I

    iput-object p2, p0, Le/a/b0/a/b/a$b;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le/a/b0/a/b/a$b;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    throw v0

    .line 1
    :pswitch_0
    iget-object v0, p0, Le/a/b0/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 2
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 3
    sget v1, Lcom/truecaller/common/ui/R$color;->tcx_verifiedBusinessBadgeGreen:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 5
    :pswitch_1
    iget-object v0, p0, Le/a/b0/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 6
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 7
    sget v1, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextRed:I

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 9
    :pswitch_2
    iget-object v0, p0, Le/a/b0/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 10
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 11
    sget v1, Lcom/truecaller/common/ui/R$color;->tcx_priority_badge:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 13
    :pswitch_3
    iget-object v0, p0, Le/a/b0/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 14
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 15
    sget v1, Lcom/truecaller/common/ui/R$color;->white:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_4
    iget-object v0, p0, Le/a/b0/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 18
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 19
    sget v1, Lcom/truecaller/common/ui/R$attr;->tcx_brandBackgroundBlue:I

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_5
    iget-object v0, p0, Le/a/b0/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 22
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 23
    sget v1, Lcom/truecaller/common/ui/R$attr;->tcx_backgroundTertiary:I

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_6
    iget-object v0, p0, Le/a/b0/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 26
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 27
    sget v1, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextBlue:I

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_7
    iget-object v0, p0, Le/a/b0/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 30
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 31
    sget v1, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundVerifiedGreen:I

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 33
    :pswitch_8
    iget-object v0, p0, Le/a/b0/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 34
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 35
    sget v1, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundRed:I

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 37
    :pswitch_9
    iget-object v0, p0, Le/a/b0/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 38
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 39
    sget v1, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundSelected:I

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 41
    :pswitch_a
    iget-object v0, p0, Le/a/b0/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 42
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 43
    sget v1, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundPriority:I

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 45
    :pswitch_b
    iget-object v0, p0, Le/a/b0/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/b/a;

    .line 46
    iget-object v0, v0, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 47
    sget v1, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextBlue:I

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
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
