.class public final Le/a/h/b/d/a/b/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/d/a/b/s;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/d/a/b/s;


# direct methods
.method public constructor <init>(Le/a/h/b/d/a/b/s;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/d/a/b/s$a;->a:Le/a/h/b/d/a/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/b/s$a;->a:Le/a/h/b/d/a/b/s;

    iget-object v1, v0, Le/a/h/b/d/a/b/s;->b:Le/a/o2/m;

    new-instance v8, Le/a/o2/h;

    iget-object v4, v0, Le/a/h/b/d/a/b/s;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    const-string v3, "ItemEvent.INVALIDATE_ITEM"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {v1, v8}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void
.end method
