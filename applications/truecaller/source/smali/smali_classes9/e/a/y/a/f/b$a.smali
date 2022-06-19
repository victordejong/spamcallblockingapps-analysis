.class public final Le/a/y/a/f/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/a/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/y/a/f/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/flashsdk/models/FlashContact;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final synthetic d:Le/a/y/a/f/b;


# direct methods
.method public constructor <init>(Le/a/y/a/f/b;Landroid/view/LayoutInflater;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List<",
            "Lcom/truecaller/flashsdk/models/FlashContact;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "inflater"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactList"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/y/a/f/b$a;->d:Le/a/y/a/f/b;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p2, p0, Le/a/y/a/f/b$a;->a:Landroid/view/LayoutInflater;

    iput-object p3, p0, Le/a/y/a/f/b$a;->b:Ljava/util/List;

    iput-object p4, p0, Le/a/y/a/f/b$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/a/f/b$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 6

    .line 1
    check-cast p1, Le/a/y/a/f/b$c;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/y/a/f/b$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/flashsdk/models/FlashContact;

    .line 4
    iget-object v0, p1, Le/a/y/a/f/b$c;->b:Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Le/a/y/a/f/b$a;->d:Le/a/y/a/f/b;

    sget v2, Lcom/truecaller/flashsdk/R$string;->flash_number_with_plus:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 6
    iget-object v5, p2, Lcom/truecaller/flashsdk/models/FlashContact;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 7
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :try_start_0
    iget-object v0, p2, Lcom/truecaller/flashsdk/models/FlashContact;->a:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 10
    iget-object v2, p1, Le/a/y/a/f/b$c;->a:Lcom/truecaller/flashsdk/ui/FlashButton;

    .line 11
    iget-object p2, p2, Lcom/truecaller/flashsdk/models/FlashContact;->b:Ljava/lang/String;

    .line 12
    iget-object v3, p0, Le/a/y/a/f/b$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, p2, v3}, Lcom/truecaller/flashsdk/ui/FlashButton;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance p2, Le/a/y/a/f/a;

    invoke-direct {p2, p0}, Le/a/y/a/f/a;-><init>(Le/a/y/a/f/b$a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Le/a/y/a/f/b$c;

    iget-object v0, p0, Le/a/y/a/f/b$a;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/truecaller/flashsdk/R$layout;->flashsdk_item_select_number:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026ct_number, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/y/a/f/b$c;-><init>(Landroid/view/View;)V

    return-object p2
.end method
