.class public final Le/a/y/a/k/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y/a/k/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/y/a/k/e;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Le/a/y/a/k/e;I)V
    .locals 0

    iput-object p1, p0, Le/a/y/a/k/e$c;->a:Le/a/y/a/k/e;

    iput p2, p0, Le/a/y/a/k/e$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/a/k/e$c;->a:Le/a/y/a/k/e;

    .line 2
    iget-object v1, v0, Le/a/y/a/k/e;->m:Le/a/y/a/l/c;

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, v0, Le/a/y/a/k/e;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4
    iget v2, p0, Le/a/y/a/k/e$c;->b:I

    invoke-virtual {v1, v0, v2}, Le/a/y/a/l/c;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const-string v0, "centralIcon"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
