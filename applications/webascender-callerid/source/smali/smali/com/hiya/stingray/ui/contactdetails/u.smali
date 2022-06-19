.class public Lcom/hiya/stingray/ui/contactdetails/u;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$d0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/hiya/stingray/t/d0;

.field private b:Lcom/hiya/stingray/ui/contactdetails/d0;

.field private c:[Lcom/hiya/stingray/ui/contactdetails/e0;

.field private d:Lcom/hiya/stingray/ui/contactdetails/section/v;

.field private e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/contactdetails/section/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/u;->d:Lcom/hiya/stingray/ui/contactdetails/section/v;

    return-void
.end method


# virtual methods
.method public c(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;[Lcom/hiya/stingray/ui/contactdetails/e0;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/u;->a:Lcom/hiya/stingray/t/d0;

    .line 2
    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/u;->b:Lcom/hiya/stingray/ui/contactdetails/d0;

    .line 3
    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/u;->c:[Lcom/hiya/stingray/ui/contactdetails/e0;

    .line 4
    iput-object p4, p0, Lcom/hiya/stingray/ui/contactdetails/u;->e:Landroid/app/Activity;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/u;->c:[Lcom/hiya/stingray/ui/contactdetails/e0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/u;->c:[Lcom/hiya/stingray/ui/contactdetails/e0;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hiya/stingray/ui/contactdetails/e0;->values()[Lcom/hiya/stingray/ui/contactdetails/e0;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getItemViewType()I

    move-result v0

    aget-object p2, p2, v0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/u;->d:Lcom/hiya/stingray/ui/contactdetails/section/v;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/u;->e:Landroid/app/Activity;

    invoke-virtual {v0, p2, v1}, Lcom/hiya/stingray/ui/contactdetails/section/v;->a(Lcom/hiya/stingray/ui/contactdetails/e0;Landroid/app/Activity;)Lcom/hiya/stingray/ui/contactdetails/section/n;

    move-result-object p2

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/u;->a:Lcom/hiya/stingray/t/d0;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/u;->b:Lcom/hiya/stingray/ui/contactdetails/d0;

    invoke-interface {p2, p1, v0, v1}, Lcom/hiya/stingray/ui/contactdetails/section/n;->b(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 2

    .line 1
    invoke-static {}, Lcom/hiya/stingray/ui/contactdetails/e0;->values()[Lcom/hiya/stingray/ui/contactdetails/e0;

    move-result-object v0

    aget-object p2, v0, p2

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/u;->d:Lcom/hiya/stingray/ui/contactdetails/section/v;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/u;->e:Landroid/app/Activity;

    invoke-virtual {v0, p2, v1}, Lcom/hiya/stingray/ui/contactdetails/section/v;->a(Lcom/hiya/stingray/ui/contactdetails/e0;Landroid/app/Activity;)Lcom/hiya/stingray/ui/contactdetails/section/n;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/hiya/stingray/ui/contactdetails/section/n;->a(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p1

    return-object p1
.end method
