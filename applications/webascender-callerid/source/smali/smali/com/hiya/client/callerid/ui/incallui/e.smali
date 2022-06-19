.class public final Lcom/hiya/client/callerid/ui/incallui/e;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/ui/incallui/e$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/hiya/client/callerid/ui/incallui/e$a;


# instance fields
.field public f:Lcom/hiya/client/callerid/ui/incallui/b;

.field public g:Lcom/hiya/client/callerid/ui/incallui/d;

.field private h:Lcom/hiya/client/callerid/ui/incallui/l;

.field private i:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/client/callerid/ui/incallui/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/e$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/client/callerid/ui/incallui/e;->j:Lcom/hiya/client/callerid/ui/incallui/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic b1(Lcom/hiya/client/callerid/ui/incallui/e;)Lcom/hiya/client/callerid/ui/incallui/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->h:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "model"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic c1(Lcom/hiya/client/callerid/ui/incallui/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/e;->j1(I)V

    return-void
.end method

.method public static final synthetic d1(Lcom/hiya/client/callerid/ui/incallui/e;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/e;->k1(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic e1(Lcom/hiya/client/callerid/ui/incallui/e;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/client/callerid/ui/incallui/e;->l1(Landroid/view/View;Z)V

    return-void
.end method

.method private final i1()V
    .locals 10

    .line 1
    sget v0, Lcom/hiya/client/callerid/ui/p;->j:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "bottomActions"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/hiya/client/callerid/ui/p;->N:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/hiya/client/callerid/ui/incallui/e$n;

    invoke-direct {v2, p0}, Lcom/hiya/client/callerid/ui/incallui/e$n;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    sget v0, Lcom/hiya/client/callerid/ui/p;->k:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "bottomActionsWithReportButton"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/client/callerid/ui/incallui/e$o;

    invoke-direct {v1, p0}, Lcom/hiya/client/callerid/ui/incallui/e$o;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget v0, Lcom/hiya/client/callerid/ui/p;->X:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/client/callerid/ui/incallui/e$p;

    invoke-direct {v1, p0}, Lcom/hiya/client/callerid/ui/incallui/e$p;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget v0, Lcom/hiya/client/callerid/ui/p;->H:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/hiya/client/callerid/ui/incallui/e$q;

    invoke-direct {v1, p0}, Lcom/hiya/client/callerid/ui/incallui/e$q;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget v0, Lcom/hiya/client/callerid/ui/p;->p0:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/client/callerid/ui/incallui/e$r;

    invoke-direct {v1, p0}, Lcom/hiya/client/callerid/ui/incallui/e$r;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget v0, Lcom/hiya/client/callerid/ui/p;->I:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/hiya/client/callerid/ui/incallui/e$s;

    invoke-direct {v1, p0}, Lcom/hiya/client/callerid/ui/incallui/e$s;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget v0, Lcom/hiya/client/callerid/ui/p;->o0:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/client/callerid/ui/incallui/e$t;

    invoke-direct {v1, p0}, Lcom/hiya/client/callerid/ui/incallui/e$t;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget v0, Lcom/hiya/client/callerid/ui/p;->G:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialPadContainer"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/hiya/client/callerid/ui/p;->Q:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/e$u;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/e$u;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget v1, Lcom/hiya/client/callerid/ui/p;->s0:I

    invoke-virtual {p0, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/e$v;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/e$v;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    sget v1, Lcom/hiya/client/callerid/ui/p;->O:I

    invoke-virtual {p0, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/e$l;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/e$l;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget v1, Lcom/hiya/client/callerid/ui/p;->j0:I

    invoke-virtual {p0, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/e$m;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/e$m;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0xc

    new-array v1, v1, [Lkotlin/l;

    .line 12
    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/hiya/client/callerid/ui/p;->F:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const-string v5, "dialPadContainer.dialPad"

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/hiya/client/callerid/ui/p;->n:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lkotlin/l;

    const-string v7, "1"

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v1, v6

    .line 13
    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/hiya/client/callerid/ui/p;->o:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lkotlin/l;

    const-string v7, "2"

    const-string v9, "abc"

    invoke-direct {v6, v7, v9}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v1, v6

    .line 14
    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/hiya/client/callerid/ui/p;->p:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lkotlin/l;

    const-string v7, "3"

    const-string v9, "def"

    invoke-direct {v6, v7, v9}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v1, v6

    .line 15
    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/hiya/client/callerid/ui/p;->q:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lkotlin/l;

    const-string v7, "4"

    const-string v9, "ghi"

    invoke-direct {v6, v7, v9}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    .line 16
    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/hiya/client/callerid/ui/p;->r:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lkotlin/l;

    const-string v7, "5"

    const-string v9, "jkl"

    invoke-direct {v6, v7, v9}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    const/4 v6, 0x4

    aput-object v3, v1, v6

    .line 17
    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/hiya/client/callerid/ui/p;->s:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lkotlin/l;

    const-string v7, "6"

    const-string v9, "mno"

    invoke-direct {v6, v7, v9}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    const/4 v6, 0x5

    aput-object v3, v1, v6

    .line 18
    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/hiya/client/callerid/ui/p;->t:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lkotlin/l;

    const-string v7, "7"

    const-string v9, "pqrs"

    invoke-direct {v6, v7, v9}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    const/4 v6, 0x6

    aput-object v3, v1, v6

    .line 19
    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/hiya/client/callerid/ui/p;->u:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lkotlin/l;

    const-string v7, "8"

    const-string v9, "tuv"

    invoke-direct {v6, v7, v9}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    const/4 v6, 0x7

    aput-object v3, v1, v6

    .line 20
    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/hiya/client/callerid/ui/p;->v:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lkotlin/l;

    const-string v7, "9"

    const-string v9, "wxyz"

    invoke-direct {v6, v7, v9}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    const/16 v6, 0x8

    aput-object v3, v1, v6

    .line 21
    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/hiya/client/callerid/ui/p;->m:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lkotlin/l;

    const-string v7, "0"

    const-string v9, "+"

    invoke-direct {v6, v7, v9}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    const/16 v6, 0x9

    aput-object v3, v1, v6

    .line 22
    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/hiya/client/callerid/ui/p;->x:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lkotlin/l;

    const-string v7, "*"

    invoke-direct {v6, v7, v8}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    const/16 v6, 0xa

    aput-object v3, v1, v6

    .line 23
    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/hiya/client/callerid/ui/p;->w:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lkotlin/l;

    const-string v3, "#"

    invoke-direct {v2, v3, v8}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v1, v2

    .line 24
    invoke-static {v1}, Lkotlin/s/b0;->h([Lkotlin/l;)Ljava/util/Map;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "it.key"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/l;

    invoke-virtual {v3}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/l;

    invoke-virtual {v1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->h1(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final j1(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v2, "requireActivity().window"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 3
    sget v0, Lcom/hiya/client/callerid/ui/p;->h:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private final k1(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->g:Lcom/hiya/client/callerid/ui/incallui/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/d;->d(Ljava/util/List;)V

    return-void

    :cond_0
    const-string p1, "callsOnHoldView"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final l1(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p2, 0x3f4ccccd    # 0.8f

    .line 2
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public a1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->i:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->i:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/e;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final f1()Lcom/hiya/client/callerid/ui/incallui/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "callerIdView"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g1()Lcom/hiya/client/callerid/ui/incallui/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->g:Lcom/hiya/client/callerid/ui/incallui/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "callsOnHoldView"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h1(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/hiya/client/callerid/ui/p;->T:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "button.key"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    sget v1, Lcom/hiya/client/callerid/ui/p;->C:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "button.code"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v3, v5}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p3, "*"

    .line 4
    invoke-static {p2, p3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "button.icon"

    if-nez v1, :cond_2

    const-string v1, "#"

    invoke-static {p2, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-static {p3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v6}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 6
    sget p3, Lcom/hiya/client/callerid/ui/p;->R:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-static {p3, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v7}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    goto :goto_3

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 8
    sget v0, Lcom/hiya/client/callerid/ui/p;->R:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, p3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    sget p3, Lcom/hiya/client/callerid/ui/o;->t:I

    goto :goto_2

    :cond_3
    sget p3, Lcom/hiya/client/callerid/ui/o;->s:I

    :goto_2
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    :goto_3
    new-instance p3, Lcom/hiya/client/callerid/ui/incallui/e$k;

    invoke-direct {p3, p0, p1, p2}, Lcom/hiya/client/callerid/ui/incallui/e$k;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lcom/hiya/client/callerid/ui/z/a;->a:Lcom/hiya/client/callerid/ui/z/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "requireActivity().applicationContext"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/z/a$a;->a(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/z/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/client/callerid/ui/z/a;->b(Lcom/hiya/client/callerid/ui/incallui/e;)V

    .line 3
    new-instance p1, Landroidx/lifecycle/d0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/d0;-><init>(Landroidx/lifecycle/g0;)V

    const-class v0, Lcom/hiya/client/callerid/ui/incallui/l;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/d0;->a(Ljava/lang/Class;)Landroidx/lifecycle/b0;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).\u2026allViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/hiya/client/callerid/ui/incallui/l;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e;->h:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/l;->I(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string p1, "model"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p3, Lcom/hiya/client/callerid/ui/r;->e:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/incallui/e;->Z0()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/b;->y()V

    return-void

    :cond_0
    const-string v0, "callerIdView"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/b;->z()V

    return-void

    :cond_0
    const-string v0, "callerIdView"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/hiya/client/callerid/ui/m;->d:I

    invoke-static {p1, p2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/e;->j1(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object p1

    const-string p2, "requireActivity()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/hiya/client/callerid/ui/e0/j;->d(Landroid/app/Activity;Z)V

    .line 4
    new-instance p1, Lcom/hiya/client/callerid/ui/incallui/n;

    sget p2, Lcom/hiya/client/callerid/ui/p;->i0:I

    invoke-virtual {p0, p2}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const-string v0, "reportActionSheet"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/hiya/client/callerid/ui/p;->k0:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "reportSheetUiBlock"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, v0}, Lcom/hiya/client/callerid/ui/incallui/n;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    const/4 p2, 0x0

    const-string v0, "callerIdView"

    if-eqz p1, :cond_f

    sget v1, Lcom/hiya/client/callerid/ui/p;->A:I

    invoke-virtual {p0, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "callerId"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/hiya/client/callerid/ui/incallui/b;->B(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/hiya/client/callerid/ui/n;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/c;->k(I)V

    .line 7
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e;->g:Lcom/hiya/client/callerid/ui/incallui/d;

    if-eqz p1, :cond_d

    sget v0, Lcom/hiya/client/callerid/ui/p;->B:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/d;->b(Landroid/widget/LinearLayout;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "EXTRA_CALL_IDENTIFIER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->h:Lcom/hiya/client/callerid/ui/incallui/l;

    const-string v1, "model"

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->o()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/e$b;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/e$b;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 10
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->h:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->q()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/e$c;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/e$c;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 11
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->h:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->n()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/e$d;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/e$d;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 12
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->h:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->t()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/e$e;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/e$e;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 13
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->h:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->w()Landroidx/lifecycle/t;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    .line 15
    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/e$f;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/e$f;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    .line 16
    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 17
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->h:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->x()Landroidx/lifecycle/t;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    .line 19
    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/e$g;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/e$g;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    .line 20
    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 21
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->h:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->s()Landroidx/lifecycle/t;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    .line 23
    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/e$h;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/e$h;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    .line 24
    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 25
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->h:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->r()Landroidx/lifecycle/t;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    .line 27
    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/e$i;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/e$i;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    .line 28
    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 29
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->h:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->l()Landroidx/lifecycle/t;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    .line 31
    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/e$j;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/e$j;-><init>(Lcom/hiya/client/callerid/ui/incallui/e;)V

    .line 32
    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 33
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->h:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/l;->K(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e;->h:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/l;->B(Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/incallui/e;->i1()V

    return-void

    .line 36
    :cond_1
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 37
    :cond_2
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 38
    :cond_3
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 39
    :cond_4
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 40
    :cond_5
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 41
    :cond_6
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 42
    :cond_7
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 43
    :cond_8
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 44
    :cond_9
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 45
    :cond_a
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 46
    :cond_b
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 47
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const-string p1, "callsOnHoldView"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 48
    :cond_e
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 49
    :cond_f
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2
.end method
