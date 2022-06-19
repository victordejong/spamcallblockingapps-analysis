.class public final synthetic Lcom/hiya/stingray/ui/contactdetails/section/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/contactdetails/section/u;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/contactdetails/section/u;Ljava/util/List;Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/h;->f:Lcom/hiya/stingray/ui/contactdetails/section/u;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/h;->g:Ljava/util/List;

    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/h;->h:Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/h;->f:Lcom/hiya/stingray/ui/contactdetails/section/u;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/h;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/h;->h:Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/contactdetails/section/u;->i(Ljava/util/List;Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;)Lkotlin/r;

    move-result-object v0

    return-object v0
.end method
