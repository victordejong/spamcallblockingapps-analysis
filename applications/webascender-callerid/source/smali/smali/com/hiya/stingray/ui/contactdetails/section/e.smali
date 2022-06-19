.class public final synthetic Lcom/hiya/stingray/ui/contactdetails/section/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/contactdetails/section/t;

.field public final synthetic g:Landroidx/recyclerview/widget/RecyclerView$d0;

.field public final synthetic h:Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/contactdetails/section/t;Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/e;->f:Lcom/hiya/stingray/ui/contactdetails/section/t;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/e;->g:Landroidx/recyclerview/widget/RecyclerView$d0;

    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/e;->h:Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/e;->f:Lcom/hiya/stingray/ui/contactdetails/section/t;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/e;->g:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/e;->h:Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, v1, v2, p1}, Lcom/hiya/stingray/ui/contactdetails/section/t;->e(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;Ljava/util/Map;)V

    return-void
.end method
