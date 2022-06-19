.class public final Le/a/l/c/b$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/l/c/b;


# direct methods
.method public constructor <init>(Le/a/l/c/b;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/b$m;->a:Le/a/l/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/c/b$m;->a:Le/a/l/c/b;

    .line 2
    sget v1, Le/a/l/c/b;->j0:I

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v0, p1, Le/a/l/c/a/z1;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Le/a/l/c/a/z1;

    invoke-interface {p1}, Le/a/l/c/a/z1;->t2()V

    :cond_0
    return-void
.end method
