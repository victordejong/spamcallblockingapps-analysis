.class public final Lcom/hiya/stingray/ui/stats/a$c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/stats/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/d0;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/Context;

.field private final h:Lcom/hiya/stingray/manager/u3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/u3;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/stats/a$c;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/ui/stats/a$c;->h:Lcom/hiya/stingray/manager/u3;

    .line 2
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/stats/a$c;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/d0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/stats/a$c;->f:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/d0;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->m()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/stats/a$c;->g:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0042

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/stats/a$c;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_d

    check-cast p3, Lcom/hiya/stingray/t/d0;

    const-string v0, "itemView"

    .line 3
    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/hiya/stingray/o;->D1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->h()Lcom/hiya/stingray/t/b0;

    move-result-object v2

    sget-object v3, Lcom/hiya/stingray/t/b0;->MANUAL_BLOCKED:Lcom/hiya/stingray/t/b0;

    const-string v4, "callLogItem.reputationDataItem"

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/hiya/stingray/ui/stats/a$c;->g:Landroid/content/Context;

    const v3, 0x7f08010a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/hiya/stingray/ui/stats/a$c;->g:Landroid/content/Context;

    const v3, 0x7f08013f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object v2

    sget-object v3, Lcom/hiya/stingray/t/z0;->SPAM:Lcom/hiya/stingray/t/z0;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/hiya/stingray/ui/stats/a$c;->g:Landroid/content/Context;

    const v3, 0x7f080153

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object v2

    sget-object v3, Lcom/hiya/stingray/t/z0;->FRAUD:Lcom/hiya/stingray/t/z0;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/hiya/stingray/ui/stats/a$c;->g:Landroid/content/Context;

    const v3, 0x7f080168

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/hiya/stingray/ui/stats/a$c;->g:Landroid/content/Context;

    const v3, 0x7f080176

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 9
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    sget v0, Lcom/hiya/stingray/o;->y4:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "itemView.title_tv"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    iget-object v2, p0, Lcom/hiya/stingray/ui/stats/a$c;->g:Landroid/content/Context;

    const v3, 0x7f1102ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    const-string v2, "callLogItem.identityData"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    const-string v3, "callLogItem.identityData.name"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x1

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$c;->h:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$c;->h:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Lcom/hiya/stingray/manager/u3;->S(Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 15
    :goto_3
    sget v5, Lcom/hiya/stingray/o;->k4:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "itemView.subtitle_tv"

    invoke-static {v5, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object p3, p0, Lcom/hiya/stingray/ui/stats/a$c;->g:Landroid/content/Context;

    const v0, 0x7f110092

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_9

    .line 17
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p3

    invoke-static {p3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p3

    goto :goto_5

    .line 18
    :cond_9
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hiya/stingray/t/y0;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "callLogItem.reputationDataItem.category"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_b

    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object p3

    invoke-static {p3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/hiya/stingray/t/y0;->c()Ljava/lang/String;

    move-result-object p3

    goto :goto_5

    .line 19
    :cond_b
    iget-object p3, p0, Lcom/hiya/stingray/ui/stats/a$c;->g:Landroid/content/Context;

    const v0, 0x7f110322

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 20
    :goto_5
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    sget p3, Lcom/hiya/stingray/o;->N0:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "itemView.divider"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/stats/a$c;->getCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-eq p1, v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    invoke-static {p3, v1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    return-object p2

    .line 22
    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.hiya.stingray.model.CallLogItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
