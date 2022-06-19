.class Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->a(Lcom/google/android/material/appbar/AppBarLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d$a;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d$a;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;

    iget-object v0, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->c:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iget-object v0, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->toolbarTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d$a;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;

    iget-object v0, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->c:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iget-object v0, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->toolbarTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
