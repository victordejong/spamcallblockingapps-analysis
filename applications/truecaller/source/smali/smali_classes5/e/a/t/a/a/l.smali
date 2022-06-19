.class public final Le/a/t/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/android/truemoji/gifs/GifView;


# direct methods
.method public constructor <init>(Lcom/truecaller/android/truemoji/gifs/GifView;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/a/l;->a:Lcom/truecaller/android/truemoji/gifs/GifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/t/a/a/l;->a:Lcom/truecaller/android/truemoji/gifs/GifView;

    .line 2
    iget-object v0, p1, Lcom/truecaller/android/truemoji/gifs/GifView;->b:Le/a/t/a/a/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    sget-object v2, Le/a/t/a/a/r;->a:Le/a/t/a/a/r;

    if-ne v0, v2, :cond_1

    .line 4
    iget-object p1, p1, Lcom/truecaller/android/truemoji/gifs/GifView;->a:Ls1/z/b/a;

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "onNoInternetClicked"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p1, "state"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
