.class public final Le/a/l/c/a/j0;
.super Le/a/l/c/a/g;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/i1;


# instance fields
.field public final d:Lcom/truecaller/premium/GoldCallerIdPreviewView;


# direct methods
.method public constructor <init>(Landroid/view/View;Ln3/v/b0;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Le/a/l/c/a/g;-><init>(Landroid/view/View;Le/a/o2/m;)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0a0363

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.callerIdPreview)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/premium/GoldCallerIdPreviewView;

    iput-object p1, p0, Le/a/l/c/a/j0;->d:Lcom/truecaller/premium/GoldCallerIdPreviewView;

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/premium/GoldCallerIdPreviewView;->getShineView()Lcom/truecaller/common/ui/ShineView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/truecaller/common/ui/ShineView;->setLifecycleOwner(Ln3/v/b0;)V

    return-void
.end method


# virtual methods
.method public X(Le/a/l/p2/n;)V
    .locals 1

    const-string v0, "previewData"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/c/a/j0;->d:Lcom/truecaller/premium/GoldCallerIdPreviewView;

    invoke-virtual {v0, p1}, Lcom/truecaller/premium/GoldCallerIdPreviewView;->f1(Le/a/l/p2/n;)V

    return-void
.end method
