.class Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$a;
.super Lcom/squareup/picasso/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->r(ZLcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/t/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/contactdetails/d0;

.field final synthetic b:Lcom/hiya/stingray/t/d0;

.field final synthetic c:Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;Lcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/t/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$a;->c:Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$a;->a:Lcom/hiya/stingray/ui/contactdetails/d0;

    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$a;->b:Lcom/hiya/stingray/t/d0;

    invoke-direct {p0}, Lcom/squareup/picasso/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$a;->c:Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;

    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->profileImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$a;->a:Lcom/hiya/stingray/ui/contactdetails/d0;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$a;->b:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->j(Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;ZLcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/t/m0;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$a;->c:Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$a;->a:Lcom/hiya/stingray/ui/contactdetails/d0;

    invoke-static {p1, v3, v0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->k(Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;ZLcom/hiya/stingray/ui/contactdetails/d0;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->l(Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;I)V

    return-void
.end method
