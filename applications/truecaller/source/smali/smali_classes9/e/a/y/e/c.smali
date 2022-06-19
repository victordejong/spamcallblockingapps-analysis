.class public final synthetic Le/a/y/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/viewpager/widget/ViewPager;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/e/c;->a:Landroidx/viewpager/widget/ViewPager;

    iput p2, p0, Le/a/y/e/c;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Le/a/y/e/c;->a:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Le/a/y/e/c;->b:I

    .line 1
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
