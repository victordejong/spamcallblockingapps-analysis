.class public final synthetic Lcom/hiya/stingray/ui/contactdetails/section/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/contactdetails/section/u;

.field public final synthetic g:Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/contactdetails/section/u;Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/g;->f:Lcom/hiya/stingray/ui/contactdetails/section/u;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/g;->g:Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/g;->f:Lcom/hiya/stingray/ui/contactdetails/section/u;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/g;->g:Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/ui/contactdetails/section/u;->g(Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;Ljava/lang/Throwable;)V

    return-void
.end method
