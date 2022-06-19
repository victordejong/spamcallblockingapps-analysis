.class Lcom/hiya/stingray/ui/contactdetails/b0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/contactdetails/b0;->j(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;

.field final synthetic g:Lcom/hiya/stingray/ui/contactdetails/b0;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/contactdetails/b0;Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/b0$c;->g:Lcom/hiya/stingray/ui/contactdetails/b0;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/b0$c;->f:Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/b0$c;->g:Lcom/hiya/stingray/ui/contactdetails/b0;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/b0;->e(Lcom/hiya/stingray/ui/contactdetails/b0;)Li/c/b0/k/b;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0$c;->g:Lcom/hiya/stingray/ui/contactdetails/b0;

    invoke-static {v0}, Lcom/hiya/stingray/ui/contactdetails/b0;->d(Lcom/hiya/stingray/ui/contactdetails/b0;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/b0$c;->f:Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method
