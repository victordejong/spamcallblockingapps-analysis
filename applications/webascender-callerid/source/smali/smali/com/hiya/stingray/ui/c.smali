.class public Lcom/hiya/stingray/ui/c;
.super Lcom/hiya/stingray/ui/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected h(Landroid/content/res/Resources;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/hiya/stingray/ui/r;->a(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/b;Ljava/lang/String;Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected i(Landroid/widget/ImageView;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;ZLcom/squareup/picasso/Picasso;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->h()Lcom/hiya/stingray/t/b0;

    move-result-object p4

    invoke-static {p4}, Lcom/hiya/stingray/util/f0;->i(Lcom/hiya/stingray/t/b0;)Z

    move-result p4

    if-eqz p4, :cond_0

    const p2, 0x7f08006b

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 3
    :cond_0
    sget-object p4, Lcom/hiya/stingray/ui/c$b;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, p4, p3

    const p4, 0x7f080091

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const p4, 0x7f080093

    goto :goto_1

    :pswitch_1
    const p4, 0x7f08008f

    goto :goto_1

    :pswitch_2
    const p4, 0x7f080074

    goto :goto_1

    :pswitch_3
    const p4, 0x7f080079

    goto :goto_1

    :pswitch_4
    const p4, 0x7f08008e

    goto :goto_1

    :pswitch_5
    const p4, 0x7f08008c

    goto :goto_1

    :pswitch_6
    const p4, 0x7f080085

    goto :goto_1

    .line 4
    :pswitch_7
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object p3

    sget-object p4, Lcom/hiya/stingray/t/m0;->BUSINESS:Lcom/hiya/stingray/t/m0;

    if-ne p3, p4, :cond_1

    const p3, 0x7f08008a

    const p4, 0x7f08008a

    goto :goto_0

    :cond_1
    const p3, 0x7f080077

    const p4, 0x7f080077

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/hiya/stingray/t/n0;->j()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 6
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/hiya/stingray/t/n0;->j()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/hiya/stingray/util/q;->e(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->j()Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f07005f

    new-instance v0, Lcom/hiya/stingray/ui/c$a;

    invoke-direct {v0, p0, p1, p4}, Lcom/hiya/stingray/ui/c$a;-><init>(Lcom/hiya/stingray/ui/c;Landroid/widget/ImageView;I)V

    invoke-static {p2, p1, p3, p5, v0}, Lcom/hiya/stingray/util/f0;->h(Ljava/lang/String;Landroid/widget/ImageView;ILcom/squareup/picasso/Picasso;Lcom/squareup/picasso/e;)V

    return-void

    .line 8
    :cond_2
    :goto_1
    :pswitch_8
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
