.class final Lcom/hiya/stingray/ui/u/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/u/e;->A(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/u/e;

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/u/e;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/u/e$d;->f:Lcom/hiya/stingray/ui/u/e;

    iput-boolean p2, p0, Lcom/hiya/stingray/ui/u/e$d;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 2
    iget-boolean p1, p0, Lcom/hiya/stingray/ui/u/e$d;->g:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/appcompat/app/b$a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e$d;->f:Lcom/hiya/stingray/ui/u/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/u/f;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/hiya/stingray/util/e0;->c(Landroidx/appcompat/app/b$a;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Landroidx/appcompat/app/b$a;

    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->s()Landroidx/appcompat/app/b;

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/u/e$d;->a(Ljava/lang/Throwable;)V

    return-void
.end method
