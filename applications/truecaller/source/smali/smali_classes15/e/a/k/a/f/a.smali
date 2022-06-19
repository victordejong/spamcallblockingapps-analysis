.class public Le/a/k/a/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/k/a/f/b;


# direct methods
.method public constructor <init>(Le/a/k/a/f/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/k/a/f/a;->a:Le/a/k/a/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/k/a/f/a;->a:Le/a/k/a/f/b;

    .line 2
    iget-boolean v0, p1, Le/a/k/a/f/b;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/k/a/f/b;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/k/a/f/b;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k/a/f/f;

    check-cast p1, Lcom/truecaller/videocallerid/ui/preview/PreviewActivity;

    invoke-interface {v0, p1}, Le/a/k/a/f/f;->G(Lcom/truecaller/videocallerid/ui/preview/PreviewActivity;)V

    :cond_0
    return-void
.end method
