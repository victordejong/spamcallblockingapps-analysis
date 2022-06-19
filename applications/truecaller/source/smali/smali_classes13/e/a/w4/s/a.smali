.class public final synthetic Le/a/w4/s/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Le/a/w4/s/b0;


# direct methods
.method public synthetic constructor <init>(Le/a/w4/s/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w4/s/a;->a:Le/a/w4/s/b0;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p2, p0, Le/a/w4/s/a;->a:Le/a/w4/s/b0;

    .line 1
    iget-object p2, p2, Le/a/w4/s/b0;->a:Le/a/w4/s/e0;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/common/network/country/CountryListDto$a;

    invoke-interface {p2, p1}, Le/a/w4/s/e0;->tc(Lcom/truecaller/common/network/country/CountryListDto$a;)V

    return-void
.end method
