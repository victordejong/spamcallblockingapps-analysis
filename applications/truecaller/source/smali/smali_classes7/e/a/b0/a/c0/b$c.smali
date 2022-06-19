.class public final Le/a/b0/a/c0/b$c;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/a/c0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b0/a/c0/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic j:Le/a/b0/a/c0/b;


# direct methods
.method public constructor <init>(Le/a/b0/a/c0/b;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    const-string v0, "hostFragment"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b0/a/c0/b$c;->j:Le/a/b0/a/c0/b;

    .line 2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Ln3/v/u;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ln3/v/u;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/b0/a/c0/b$c;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public g(J)Z
    .locals 4

    const/4 v0, 0x2

    int-to-long v0, v0

    .line 1
    div-long v0, p1, v0

    .line 2
    iget-object v2, p0, Le/a/b0/a/c0/b$c;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    return v3

    :cond_0
    long-to-int v0, v0

    .line 3
    invoke-virtual {p0, v0}, Le/a/b0/a/c0/b$c;->getItemId(I)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/a/c0/b$c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/b0/a/c0/b$c;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/a/c0/b$a;

    .line 2
    iget-object v0, v0, Le/a/b0/a/c0/b$a;->b:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v1, p0, Le/a/b0/a/c0/b$c;->j:Le/a/b0/a/c0/b;

    .line 4
    iget v2, v1, Le/a/b0/a/c0/b;->g:I

    const-wide/16 v3, 0x2

    if-eq v2, p1, :cond_2

    if-eqz v0, :cond_0

    .line 5
    instance-of v0, v0, Le/a/b0/a/c0/b$b;

    if-eqz v0, :cond_2

    .line 6
    :cond_0
    iget-boolean v0, v1, Le/a/b0/a/c0/b;->h:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v0, p1

    mul-long/2addr v0, v3

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0

    :cond_2
    :goto_0
    int-to-long v0, p1

    mul-long/2addr v0, v3

    return-wide v0
.end method

.method public h(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b0/a/c0/b$c;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/a/c0/b$a;

    .line 2
    iget-object v1, p0, Le/a/b0/a/c0/b$c;->j:Le/a/b0/a/c0/b;

    .line 3
    iget v2, v1, Le/a/b0/a/c0/b;->g:I

    if-eq p1, v2, :cond_1

    .line 4
    iget-boolean p1, v1, Le/a/b0/a/c0/b;->h:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Le/a/b0/a/c0/b$b;

    invoke-direct {p1}, Le/a/b0/a/c0/b$b;-><init>()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, v0, Le/a/b0/a/c0/b$a;->a:Ls1/z/b/a;

    .line 7
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 8
    :goto_1
    iput-object p1, v0, Le/a/b0/a/c0/b$a;->b:Landroidx/fragment/app/Fragment;

    return-object p1
.end method
