.class public final synthetic Le/a/a/c/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/b2;->a:Le/a/a/c/y3;

    iput p2, p0, Le/a/a/c/b2;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/a/a/c/b2;->a:Le/a/a/c/y3;

    iget v1, p0, Le/a/a/c/b2;->b:I

    .line 1
    iget-object v0, v0, Le/a/a/c/y3;->m0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
