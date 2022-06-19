.class public final Le/a/a/c/b/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/b/b;->C4(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/b/b;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Le/a/a/c/b/b;I)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/b/b$g;->a:Le/a/a/c/b/b;

    iput p2, p0, Le/a/a/c/b/b$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/b/b$g;->a:Le/a/a/c/b/b;

    .line 2
    sget v1, Le/a/a/c/b/b;->z:I

    .line 3
    invoke-virtual {v0}, Le/a/a/c/b/b;->SA()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 4
    iget v1, p0, Le/a/a/c/b/b$g;->b:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
