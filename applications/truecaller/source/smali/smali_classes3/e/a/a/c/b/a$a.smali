.class public final Le/a/a/c/b/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/b/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/c/b/a$a;->a:I

    iput-object p2, p0, Le/a/a/c/b/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Le/a/a/c/b/a$a;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/a/c/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/b/a;

    .line 2
    iget-object v0, p1, Le/a/a/c/b/a;->d:Lw3/b/a/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Le/a/a/c/b/a;->e:Ls1/z/b/l;

    .line 4
    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/a/c/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/b/a;

    invoke-virtual {p1}, Ln3/b/a/p;->dismiss()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/a/c/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/b/a;

    invoke-virtual {p1}, Ln3/b/a/p;->dismiss()V

    return-void
.end method
