.class public final Le/a/a/n/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/n/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroidx/fragment/app/Fragment;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Le/a/a/n/a$a;->b:I

    iput-object p2, p0, Le/a/a/n/a$a;->c:Ljava/lang/Object;

    iput-object p3, p0, Le/a/a/n/a$a;->d:Ljava/lang/Object;

    iput-object p4, p0, Le/a/a/n/a$a;->e:Ljava/lang/Object;

    iput-object p5, p0, Le/a/a/n/a$a;->f:Ljava/lang/Object;

    iput-object p6, p0, Le/a/a/n/a$a;->g:Ljava/lang/Object;

    iput-boolean p7, p0, Le/a/a/n/a$a;->h:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le/a/a/n/a$a;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/a/n/a$a;->f:Ljava/lang/Object;

    check-cast v0, Le/a/a/n/j/k;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/a/n/a$a;->e:Ljava/lang/Object;

    check-cast v0, Le/a/a/n/j/k;

    return-object v0

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/a/n/a$a;->d:Ljava/lang/Object;

    check-cast v0, Le/a/a/n/j/k;

    return-object v0
.end method
