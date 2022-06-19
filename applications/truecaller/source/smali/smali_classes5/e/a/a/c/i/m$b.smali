.class public final Le/a/a/c/i/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/i/m;->v0(Ls1/z/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/i/m;

.field public final synthetic b:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Le/a/a/c/i/m;Ls1/z/b/l;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/i/m$b;->a:Le/a/a/c/i/m;

    iput-object p2, p0, Le/a/a/c/i/m$b;->b:Ls1/z/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/c/i/m$b;->b:Ls1/z/b/l;

    iget-object v0, p0, Le/a/a/c/i/m$b;->a:Le/a/a/c/i/m;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
