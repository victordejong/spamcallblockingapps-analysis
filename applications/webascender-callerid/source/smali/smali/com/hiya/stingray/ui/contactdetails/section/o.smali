.class public final Lcom/hiya/stingray/ui/contactdetails/section/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/contactdetails/section/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/contactdetails/section/o$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private final b:Lcom/hiya/stingray/manager/e1;

.field private final c:Lcom/hiya/stingray/r/a;

.field private final d:Lcom/hiya/stingray/manager/j4;

.field private final e:Li/c/b0/c/a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/r/a;Lcom/hiya/stingray/manager/j4;Li/c/b0/c/a;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userReportsExperiment"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userFeedbackManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/o;->b:Lcom/hiya/stingray/manager/e1;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/o;->c:Lcom/hiya/stingray/r/a;

    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/o;->d:Lcom/hiya/stingray/manager/j4;

    iput-object p4, p0, Lcom/hiya/stingray/ui/contactdetails/section/o;->e:Li/c/b0/c/a;

    return-void
.end method

.method public static final synthetic c(Lcom/hiya/stingray/ui/contactdetails/section/o;)Lcom/hiya/stingray/manager/e1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/section/o;->b:Lcom/hiya/stingray/manager/e1;

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/stingray/ui/contactdetails/section/o;)Li/c/b0/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/section/o;->e:Li/c/b0/c/a;

    return-object p0
.end method

.method public static final synthetic e(Lcom/hiya/stingray/ui/contactdetails/section/o;)Lcom/hiya/stingray/manager/j4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/section/o;->d:Lcom/hiya/stingray/manager/j4;

    return-object p0
.end method

.method public static final synthetic f(Lcom/hiya/stingray/ui/contactdetails/section/o;)Lcom/hiya/stingray/r/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/section/o;->c:Lcom/hiya/stingray/r/a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 4

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/section/o$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00a6

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "LayoutInflater.from(pare\u2026am_detail, parent, false)"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/section/o$a;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V
    .locals 3

    const-string v0, "callLogItem"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailDisplayType"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/contactdetails/section/o$a;

    .line 2
    new-instance p3, Lcom/hiya/stingray/ui/contactdetails/section/o$d;

    invoke-direct {p3, p1}, Lcom/hiya/stingray/ui/contactdetails/section/o$d;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/o$a;)V

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/hiya/stingray/o;->L1:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v2, Lcom/hiya/stingray/ui/contactdetails/section/o$b;

    invoke-direct {v2, p3, p0, p2}, Lcom/hiya/stingray/ui/contactdetails/section/o$b;-><init>(Lkotlin/w/b/a;Lcom/hiya/stingray/ui/contactdetails/section/o;Lcom/hiya/stingray/t/d0;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/hiya/stingray/o;->K1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/section/o$c;

    invoke-direct {v0, p3, p0, p2}, Lcom/hiya/stingray/ui/contactdetails/section/o$c;-><init>(Lkotlin/w/b/a;Lcom/hiya/stingray/ui/contactdetails/section/o;Lcom/hiya/stingray/t/d0;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.hiya.stingray.ui.contactdetails.section.HeaderViewDelegate.HeaderViewViewHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/o;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final h(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/o;->a:Landroid/app/Activity;

    return-void
.end method
