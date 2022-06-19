.class public Lcom/hiya/stingray/ui/call_screener/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/manager/q1;

.field private final b:Lcom/hiya/stingray/manager/e1;

.field private c:Lcom/hiya/stingray/ui/common/l;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/q1;Lcom/hiya/stingray/manager/e1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/call_screener/a;->a:Lcom/hiya/stingray/manager/q1;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/call_screener/a;->b:Lcom/hiya/stingray/manager/e1;

    return-void
.end method

.method static synthetic a(Lcom/hiya/stingray/ui/call_screener/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/call_screener/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/hiya/stingray/ui/call_screener/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/call_screener/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/hiya/stingray/ui/call_screener/a;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/call_screener/a;->g(Landroid/widget/Button;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/hiya/stingray/ui/call_screener/a;)Lcom/hiya/stingray/ui/common/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/call_screener/a;->c:Lcom/hiya/stingray/ui/common/l;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/a;->a:Lcom/hiya/stingray/manager/q1;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/q1;->h(Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p1

    .line 2
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/ui/call_screener/a$d;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/call_screener/a$d;-><init>(Lcom/hiya/stingray/ui/call_screener/a;)V

    new-instance v1, Lcom/hiya/stingray/ui/call_screener/a$e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/call_screener/a$e;-><init>(Lcom/hiya/stingray/ui/call_screener/a;)V

    .line 3
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/a;->b:Lcom/hiya/stingray/manager/e1;

    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "screened_call"

    .line 2
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "not_spam"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->j(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string v1, "post_call_prompt"

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method private g(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/call_screener/a$c;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/ui/call_screener/a$c;-><init>(Lcom/hiya/stingray/ui/call_screener/a;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public h(Lcom/hiya/stingray/ui/common/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/call_screener/a;->c:Lcom/hiya/stingray/ui/common/l;

    return-void
.end method

.method public i(Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;Ljava/lang/String;Lcom/hiya/stingray/ui/call_screener/e;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/call_screener/e;->SCREENED_CALL:Lcom/hiya/stingray/ui/call_screener/e;

    if-ne p3, v0, :cond_0

    .line 2
    invoke-virtual {p1, p2, v0}, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->b(Ljava/lang/String;Lcom/hiya/stingray/ui/call_screener/e;)V

    .line 3
    iget-object p3, p1, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->leftButton:Landroid/widget/Button;

    new-instance v0, Lcom/hiya/stingray/ui/call_screener/a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/stingray/ui/call_screener/a$a;-><init>(Lcom/hiya/stingray/ui/call_screener/a;Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p1, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->rightButton:Landroid/widget/Button;

    const-string p2, "ok"

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/call_screener/a;->g(Landroid/widget/Button;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/hiya/stingray/ui/call_screener/e;->ALLOW_PROMPT:Lcom/hiya/stingray/ui/call_screener/e;

    if-ne p3, v0, :cond_1

    .line 6
    iget-object p3, p1, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->leftButton:Landroid/widget/Button;

    const-string v0, "allow_no"

    invoke-direct {p0, p3, v0}, Lcom/hiya/stingray/ui/call_screener/a;->g(Landroid/widget/Button;Ljava/lang/String;)V

    .line 7
    iget-object p3, p1, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->rightButton:Landroid/widget/Button;

    new-instance v0, Lcom/hiya/stingray/ui/call_screener/a$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/stingray/ui/call_screener/a$b;-><init>(Lcom/hiya/stingray/ui/call_screener/a;Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method
