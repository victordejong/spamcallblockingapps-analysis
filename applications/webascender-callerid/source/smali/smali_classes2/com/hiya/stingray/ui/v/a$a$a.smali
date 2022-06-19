.class public final Lcom/hiya/stingray/ui/v/a$a$a;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/v/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/ui/v/e;

.field final synthetic b:Lcom/hiya/stingray/ui/v/a$a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/v/a$a;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/v/a$a$a;->b:Lcom/hiya/stingray/ui/v/a$a;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    .line 3
    new-instance p1, Lcom/hiya/stingray/ui/v/e;

    invoke-direct {p1, p2}, Lcom/hiya/stingray/ui/v/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/v/a$a$a;->a:Lcom/hiya/stingray/ui/v/e;

    return-void
.end method


# virtual methods
.method public final n(Lcom/hiya/stingray/t/t0;)V
    .locals 6

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a$a$a;->a:Lcom/hiya/stingray/ui/v/e;

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/v/a$a$a;->b:Lcom/hiya/stingray/ui/v/a$a;

    iget-object v1, v1, Lcom/hiya/stingray/ui/v/a$a;->d:Lcom/hiya/stingray/ui/v/a;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/v/a;->l1()Lcom/hiya/stingray/t/i1/t;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/ui/v/a$a$a;->b:Lcom/hiya/stingray/ui/v/a$a;

    iget-object v2, v2, Lcom/hiya/stingray/ui/v/a$a;->d:Lcom/hiya/stingray/ui/v/a;

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/v/a;->m1()Lcom/hiya/stingray/t/i1/c0;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/t/i1/c0;->b(Lcom/hiya/stingray/t/t0;)Lcom/hiya/stingray/t/p0;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->a()Lcom/hiya/stingray/t/m0;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/hiya/stingray/ui/v/a$a$a;->b:Lcom/hiya/stingray/ui/v/a$a;

    iget-object v5, v5, Lcom/hiya/stingray/ui/v/a$a;->d:Lcom/hiya/stingray/ui/v/a;

    invoke-virtual {v5}, Lcom/hiya/stingray/ui/v/a;->n1()Lcom/hiya/stingray/manager/u3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v5

    .line 7
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/hiya/stingray/t/i1/t;->a(Lcom/hiya/stingray/t/p0;Lcom/hiya/stingray/t/z0;Lcom/hiya/stingray/t/m0;Z)Lcom/hiya/stingray/ui/b;

    move-result-object v1

    const-string v2, "displayTypeMapper.getCal\u2026ium\n                    )"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/ui/v/e;->h(Lcom/hiya/stingray/t/t0;Lcom/hiya/stingray/ui/b;)V

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/hiya/stingray/ui/v/a$a$a$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/v/a$a$a$a;-><init>(Lcom/hiya/stingray/ui/v/a$a$a;Lcom/hiya/stingray/t/t0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/hiya/stingray/o;->h2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/hiya/stingray/ui/v/a$a$a$b;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/v/a$a$a$b;-><init>(Lcom/hiya/stingray/ui/v/a$a$a;Lcom/hiya/stingray/t/t0;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
