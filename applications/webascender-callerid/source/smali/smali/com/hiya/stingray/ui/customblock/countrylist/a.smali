.class public final synthetic Lcom/hiya/stingray/ui/customblock/countrylist/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;

.field public final synthetic g:Lcom/hiya/stingray/t/l0;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;Lcom/hiya/stingray/t/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/a;->f:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;

    iput-object p2, p0, Lcom/hiya/stingray/ui/customblock/countrylist/a;->g:Lcom/hiya/stingray/t/l0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/a;->f:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/a;->g:Lcom/hiya/stingray/t/l0;

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->e(Lcom/hiya/stingray/t/l0;Landroid/view/View;)V

    return-void
.end method
