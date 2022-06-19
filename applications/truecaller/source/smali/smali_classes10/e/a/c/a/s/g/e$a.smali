.class public final Le/a/c/a/s/g/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/s/g/e;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/s/g/e;


# direct methods
.method public constructor <init>(Le/a/c/a/s/g/e;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/s/g/e$a;->a:Le/a/c/a/s/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/a/s/g/e$a;->a:Le/a/c/a/s/g/e;

    iget-object v0, v0, Le/a/c/a/s/g/e;->a:Le/a/c/a/s/g/f;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/c/a/s/g/e$a;->a:Le/a/c/a/s/g/e;

    iget-object v0, v0, Le/a/c/a/s/g/e;->a:Le/a/c/a/s/g/f;

    invoke-static {v0}, Le/a/c/a/s/g/f;->c(Le/a/c/a/s/g/f;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/c/a/s/g/e$a;->a:Le/a/c/a/s/g/e;

    iget-object v0, v0, Le/a/c/a/s/g/e;->a:Le/a/c/a/s/g/f;

    .line 4
    invoke-virtual {v0}, Le/a/c/a/s/g/f;->d()V

    :goto_0
    return-void
.end method
