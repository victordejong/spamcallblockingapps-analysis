.class public Le/a/h0/a/d0/h;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/h0/a/d0/h$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/v0;


# direct methods
.method public constructor <init>(Le/a/v0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/h0/a/d0/h;->a:Le/a/v0;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/a/d0/h;->a:Le/a/v0;

    invoke-interface {v0}, Le/a/v0;->Kb()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/a/d0/h;->a:Le/a/v0;

    invoke-interface {v0, p1}, Le/a/v0;->gc(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x1090009

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Le/a/h0/a/d0/h$a;

    invoke-direct {p3, p0, p2}, Le/a/h0/a/d0/h$a;-><init>(Le/a/h0/a/d0/h;Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/h0/a/d0/h$a;

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/h0/a/d0/h;->a:Le/a/v0;

    invoke-interface {v0, p3, p1}, Le/a/v0;->G(Ljava/lang/Object;I)V

    return-object p2
.end method
