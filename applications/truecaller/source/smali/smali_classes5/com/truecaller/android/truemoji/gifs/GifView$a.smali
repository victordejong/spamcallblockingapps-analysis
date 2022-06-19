.class public final Lcom/truecaller/android/truemoji/gifs/GifView$a;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/android/truemoji/gifs/GifView;->setAdapter(Le/a/t/a/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/android/truemoji/gifs/GifView;

.field public final synthetic b:Le/a/t/a/a/d;


# direct methods
.method public constructor <init>(Lcom/truecaller/android/truemoji/gifs/GifView;Le/a/t/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/t/a/a/d;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/android/truemoji/gifs/GifView$a;->a:Lcom/truecaller/android/truemoji/gifs/GifView;

    iput-object p2, p0, Lcom/truecaller/android/truemoji/gifs/GifView$a;->b:Le/a/t/a/a/d;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/truemoji/gifs/GifView$a;->a:Lcom/truecaller/android/truemoji/gifs/GifView;

    invoke-static {v0}, Lcom/truecaller/android/truemoji/gifs/GifView;->a(Lcom/truecaller/android/truemoji/gifs/GifView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "viewStatus"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/truecaller/android/truemoji/gifs/GifView$a;->b:Le/a/t/a/a/d;

    invoke-virtual {v2}, Le/a/t/a/a/d;->getItemCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/truemoji/gifs/GifView$a;->a:Lcom/truecaller/android/truemoji/gifs/GifView;

    invoke-static {v0}, Lcom/truecaller/android/truemoji/gifs/GifView;->a(Lcom/truecaller/android/truemoji/gifs/GifView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le/a/t/a/a/r;->b:Le/a/t/a/a/r;

    invoke-static {v0, v1}, Le/m/d/y/n;->d(Landroid/widget/TextView;Le/a/t/a/a/r;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/android/truemoji/gifs/GifView$a;->a:Lcom/truecaller/android/truemoji/gifs/GifView;

    .line 4
    iput-object v1, v0, Lcom/truecaller/android/truemoji/gifs/GifView;->b:Le/a/t/a/a/r;

    return-void
.end method

.method public onChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/android/truemoji/gifs/GifView$a;->a()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onItemRangeInserted(II)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/android/truemoji/gifs/GifView$a;->a()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onItemRangeRemoved(II)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/android/truemoji/gifs/GifView$a;->a()V

    return-void
.end method
