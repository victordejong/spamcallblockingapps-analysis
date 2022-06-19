.class public final Le/a/h/b/d/a/a/o$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/d/a/a/o;->r0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/d/a/a/o;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Le/a/h/b/d/a/a/o;I)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/d/a/a/o$k;->a:Le/a/h/b/d/a/a/o;

    iput p2, p0, Le/a/h/b/d/a/a/o$k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/o$k;->a:Le/a/h/b/d/a/a/o;

    .line 2
    invoke-virtual {v0}, Le/a/h/b/d/a/a/o;->N4()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/h/b/d/a/a/o$k;->a:Le/a/h/b/d/a/a/o;

    .line 4
    iget-object v1, v1, Le/a/h/b/d/a/a/o;->c:Le/a/o2/r;

    .line 5
    iget v2, p0, Le/a/h/b/d/a/a/o$k;->b:I

    invoke-virtual {v1, v2}, Le/a/o2/r;->j(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
