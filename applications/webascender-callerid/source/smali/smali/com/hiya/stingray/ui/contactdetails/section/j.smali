.class public final synthetic Lcom/hiya/stingray/ui/contactdetails/section/j;
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/j;->f:Lcom/hiya/stingray/ui/contactdetails/section/w;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/j;->g:Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;

    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/j;->h:Lcom/hiya/stingray/t/d0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/j;->f:Lcom/hiya/stingray/ui/contactdetails/section/w;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/j;->g:Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/j;->h:Lcom/hiya/stingray/t/d0;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/hiya/stingray/ui/contactdetails/section/w;->h(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Lcom/hiya/stingray/t/d0;Ljava/lang/Throwable;)V

    return-void
.end method
