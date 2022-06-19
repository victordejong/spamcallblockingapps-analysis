.class public final Lcom/hiya/stingray/ui/contactdetails/recentactivity/g$a;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentActivityItemView"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/g$a;->a:Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;

    return-void
.end method


# virtual methods
.method public final n()Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/g$a;->a:Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;

    return-object v0
.end method
