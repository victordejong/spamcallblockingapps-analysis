.class Lcom/hiya/stingray/ui/contactdetails/b0$a;
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
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/b0$a;->g:Lcom/hiya/stingray/ui/contactdetails/b0;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/b0$a;->f:Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/b0$a;->g:Lcom/hiya/stingray/ui/contactdetails/b0;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0$a;->f:Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/contactdetails/b0;->c(Lcom/hiya/stingray/ui/contactdetails/b0;I)V

    return-void
.end method
