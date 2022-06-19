.class public Le/a/i4/y/b;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/i4/y/d;


# direct methods
.method public constructor <init>(Le/a/i4/y/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i4/y/b;->a:Le/a/i4/y/d;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 2
    iget-object v0, p0, Le/a/i4/y/b;->a:Le/a/i4/y/d;

    invoke-virtual {v0}, Le/a/i4/y/d;->eB()V

    return-void
.end method
