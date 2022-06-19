.class public Le/a/w4/s/c0$e;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w4/s/c0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/w4/s/c0;


# direct methods
.method public constructor <init>(Le/a/w4/s/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/w4/s/c0$e;->a:Le/a/w4/s/c0;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 2
    iget-object v0, p0, Le/a/w4/s/c0$e;->a:Le/a/w4/s/c0;

    invoke-virtual {v0}, Le/a/w4/s/c0;->eB()V

    return-void
.end method
