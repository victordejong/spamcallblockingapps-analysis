.class public final synthetic Lcom/hiya/stingray/ui/contactdetails/section/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/contactdetails/section/w;

.field public final synthetic g:Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;

.field public final synthetic h:Lcom/hiya/stingray/t/d0;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/contactdetails/section/w;Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Lcom/hiya/stingray/t/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/k;->f:Lcom/hiya/stingray/ui/contactdetails/section/w;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/k;->g:Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;

    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/k;->h:Lcom/hiya/stingray/t/d0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/k;->f:Lcom/hiya/stingray/ui/contactdetails/section/w;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/k;->g:Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/k;->h:Lcom/hiya/stingray/t/d0;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcom/hiya/stingray/ui/contactdetails/section/w;->f(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Lcom/hiya/stingray/t/d0;Ljava/util/List;)V

    return-void
.end method
