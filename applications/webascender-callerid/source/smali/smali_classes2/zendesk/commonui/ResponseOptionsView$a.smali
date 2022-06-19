.class Lzendesk/commonui/ResponseOptionsView$a;
.super Landroidx/recyclerview/widget/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/commonui/ResponseOptionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/commonui/ResponseOptionsView$a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/n<",
        "Lzendesk/commonui/m;",
        "Landroidx/recyclerview/widget/RecyclerView$d0;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lzendesk/commonui/n;

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/commonui/ResponseOptionsView$a$c;

    invoke-direct {v0}, Lzendesk/commonui/ResponseOptionsView$a$c;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/h$d;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lzendesk/commonui/ResponseOptionsView$a;->d:Z

    return-void
.end method

.method static synthetic f(Lzendesk/commonui/ResponseOptionsView$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzendesk/commonui/ResponseOptionsView$a;->d:Z

    return p0
.end method

.method static synthetic g(Lzendesk/commonui/ResponseOptionsView$a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzendesk/commonui/ResponseOptionsView$a;->d:Z

    return p1
.end method

.method static synthetic h(Lzendesk/commonui/ResponseOptionsView$a;)Lzendesk/commonui/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/commonui/ResponseOptionsView$a;->c:Lzendesk/commonui/n;

    return-object p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    sget v1, Lzendesk/commonui/h;->B:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/n;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzendesk/commonui/m;

    .line 3
    invoke-virtual {p2}, Lzendesk/commonui/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lzendesk/commonui/ResponseOptionsView$a$b;

    invoke-direct {v1, p0, p2, p1}, Lzendesk/commonui/ResponseOptionsView$a$b;-><init>(Lzendesk/commonui/ResponseOptionsView$a;Lzendesk/commonui/m;Landroidx/recyclerview/widget/RecyclerView$d0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lzendesk/commonui/j;->a:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lzendesk/commonui/ResponseOptionsView$a$a;

    invoke-direct {p2, p0, p1}, Lzendesk/commonui/ResponseOptionsView$a$a;-><init>(Lzendesk/commonui/ResponseOptionsView$a;Landroid/view/View;)V

    return-object p2
.end method
