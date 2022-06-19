.class public final synthetic Lcom/hiya/stingray/ui/contactdetails/section/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/contactdetails/section/m;

.field public final synthetic g:Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;

.field public final synthetic h:Lcom/hiya/stingray/t/d0;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/contactdetails/section/m;Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/d;->f:Lcom/hiya/stingray/ui/contactdetails/section/m;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/d;->g:Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;

    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/d;->h:Lcom/hiya/stingray/t/d0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/d;->f:Lcom/hiya/stingray/ui/contactdetails/section/m;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/d;->g:Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/d;->h:Lcom/hiya/stingray/t/d0;

    check-cast p1, Lcom/hiya/stingray/t/j0;

    invoke-virtual {v0, v1, v2, p1}, Lcom/hiya/stingray/ui/contactdetails/section/m;->j(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/t/j0;)V

    return-void
.end method
