.class public final Le/a/l/p0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p0;->xj(Lcom/truecaller/premium/data/PremiumType;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/l/p0;


# direct methods
.method public constructor <init>(Le/a/l/p0;Lcom/truecaller/premium/data/PremiumType;II)V
    .locals 0

    iput-object p1, p0, Le/a/l/p0$d;->a:Le/a/l/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/p0$d;->a:Le/a/l/p0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/l/p0$d;->a:Le/a/l/p0;

    .line 3
    iget-object v0, v0, Le/a/l/p0;->g:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method
