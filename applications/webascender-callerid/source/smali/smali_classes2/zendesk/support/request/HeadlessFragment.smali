.class public Lzendesk/support/request/HeadlessFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/HeadlessFragment;->data:Ljava/lang/Object;

    return-object v0
.end method

.method static getData(Landroidx/fragment/app/n;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/fragment/app/n;",
            ")TE;"
        }
    .end annotation

    const-string v0, "ZendeskHeadlessFragment"

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->j0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 3
    instance-of v0, p0, Lzendesk/support/request/HeadlessFragment;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lzendesk/support/request/HeadlessFragment;

    invoke-direct {p0}, Lzendesk/support/request/HeadlessFragment;->getData()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static install(Landroidx/fragment/app/n;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/fragment/app/n;",
            "TE;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/request/HeadlessFragment;

    invoke-direct {v0}, Lzendesk/support/request/HeadlessFragment;-><init>()V

    .line 2
    invoke-direct {v0, p1}, Lzendesk/support/request/HeadlessFragment;->setData(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object p0

    const-string p1, "ZendeskHeadlessFragment"

    .line 4
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/y;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/y;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/y;->i()I

    return-void
.end method

.method private setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lzendesk/support/request/HeadlessFragment;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    const/4 p1, 0x0

    return-object p1
.end method
