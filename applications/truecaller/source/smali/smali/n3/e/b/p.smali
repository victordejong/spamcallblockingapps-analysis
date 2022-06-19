.class public final synthetic Ln3/e/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/j1$c;


# instance fields
.field public final synthetic a:Ln3/e/b/c1;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ln3/e/b/j1/e1;

.field public final synthetic d:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/c1;Ljava/lang/String;Ln3/e/b/j1/e1;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/p;->a:Ln3/e/b/c1;

    iput-object p2, p0, Ln3/e/b/p;->b:Ljava/lang/String;

    iput-object p3, p0, Ln3/e/b/p;->c:Ln3/e/b/j1/e1;

    iput-object p4, p0, Ln3/e/b/p;->d:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final a(Ln3/e/b/j1/j1;Ln3/e/b/j1/j1$e;)V
    .locals 3

    iget-object p1, p0, Ln3/e/b/p;->a:Ln3/e/b/c1;

    iget-object p2, p0, Ln3/e/b/p;->b:Ljava/lang/String;

    iget-object v0, p0, Ln3/e/b/p;->c:Ln3/e/b/j1/e1;

    iget-object v1, p0, Ln3/e/b/p;->d:Landroid/util/Size;

    .line 1
    invoke-virtual {p1}, Ln3/e/b/g1;->a()Ln3/e/b/j1/b0;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ln3/e/b/g1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p1, p2, v0, v1}, Ln3/e/b/c1;->o(Ljava/lang/String;Ln3/e/b/j1/e1;Landroid/util/Size;)Ln3/e/b/j1/j1$b;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ln3/e/b/j1/j1$b;->d()Ln3/e/b/j1/j1;

    move-result-object p2

    .line 5
    iput-object p2, p1, Ln3/e/b/g1;->k:Ln3/e/b/j1/j1;

    .line 6
    invoke-virtual {p1}, Ln3/e/b/g1;->g()V

    :cond_1
    return-void
.end method
