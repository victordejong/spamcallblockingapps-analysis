.class public final synthetic Le/a/d5/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/d5/g/j;

.field public final synthetic b:Landroidx/viewpager/widget/ViewPager$i;


# direct methods
.method public synthetic constructor <init>(Le/a/d5/g/j;Landroidx/viewpager/widget/ViewPager$i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d5/g/c;->a:Le/a/d5/g/j;

    iput-object p2, p0, Le/a/d5/g/c;->b:Landroidx/viewpager/widget/ViewPager$i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/a/d5/g/c;->a:Le/a/d5/g/j;

    iget-object v1, p0, Le/a/d5/g/c;->b:Landroidx/viewpager/widget/ViewPager$i;

    .line 1
    iget-object v0, v0, Le/a/d5/g/j;->b:Lcom/truecaller/common/ui/NonSwipeableViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {v1, v0}, Landroidx/viewpager/widget/ViewPager$i;->g(I)V

    return-void
.end method
