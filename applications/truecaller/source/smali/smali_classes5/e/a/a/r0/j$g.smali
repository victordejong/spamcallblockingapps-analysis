.class public final Le/a/a/r0/j$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/r0/j;->z0(Lcom/truecaller/messaging/data/types/InboxTab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/r0/j;

.field public final synthetic b:Lcom/truecaller/messaging/data/types/InboxTab;


# direct methods
.method public constructor <init>(Le/a/a/r0/j;Lcom/truecaller/messaging/data/types/InboxTab;)V
    .locals 0

    iput-object p1, p0, Le/a/a/r0/j$g;->a:Le/a/a/r0/j;

    iput-object p2, p0, Le/a/a/r0/j$g;->b:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/r0/j$g;->a:Le/a/a/r0/j;

    .line 2
    sget-object v1, Le/a/a/r0/j;->k:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/a/r0/j;->PA()Le/a/m3/t0;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/m3/t0;->b:Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "binding.viewPager"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a/r0/j$g;->a:Le/a/a/r0/j;

    invoke-virtual {v1}, Le/a/a/r0/j;->SA()Le/a/a/r0/m;

    move-result-object v1

    invoke-virtual {v1}, Le/a/a/r0/m;->Ij()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Le/a/a/r0/j$g;->b:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method
