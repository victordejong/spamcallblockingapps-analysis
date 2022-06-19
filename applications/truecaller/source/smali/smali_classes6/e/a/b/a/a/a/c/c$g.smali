.class public final Le/a/b/a/a/a/c/c$g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/a/c/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/String;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/m/s0;

.field public final synthetic c:Le/a/b/a/a/a/c/c;


# direct methods
.method public constructor <init>(Le/a/b/m/s0;Le/a/b/a/a/a/c/c;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/c/c$g;->b:Le/a/b/m/s0;

    iput-object p2, p0, Le/a/b/a/a/a/c/c$g;->c:Le/a/b/a/a/a/c/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/b/a/a/a/c/c$g;->c:Le/a/b/a/a/a/c/c;

    invoke-virtual {v0}, Le/a/b/a/a/a/c/c;->PA()Le/a/b/a/a/d/d/b;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, p1, v3}, Le/a/b/a/a/d/d/b;->c(Le/a/b/a/a/d/d/b;JLjava/lang/String;I)V

    .line 3
    iget-object p1, p0, Le/a/b/a/a/a/c/c$g;->b:Le/a/b/m/s0;

    iget-object p1, p1, Le/a/b/m/s0;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Le/a/b/a/a/a/c/f;

    invoke-direct {v0, p0}, Le/a/b/a/a/a/c/f;-><init>(Le/a/b/a/a/a/c/c$g;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
