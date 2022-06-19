.class public Ln3/e/b/c1$a;
.super Ln3/e/b/j1/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/b/c1;->o(Ljava/lang/String;Ln3/e/b/j1/e1;Landroid/util/Size;)Ln3/e/b/j1/j1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/e/b/j1/m0;

.field public final synthetic b:Ln3/e/b/c1;


# direct methods
.method public constructor <init>(Ln3/e/b/c1;Ln3/e/b/j1/m0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/c1$a;->b:Ln3/e/b/c1;

    iput-object p2, p0, Ln3/e/b/c1$a;->a:Ln3/e/b/j1/m0;

    invoke-direct {p0}, Ln3/e/b/j1/q;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ln3/e/b/j1/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/b/c1$a;->a:Ln3/e/b/j1/m0;

    new-instance v1, Ln3/e/b/k1/b;

    invoke-direct {v1, p1}, Ln3/e/b/k1/b;-><init>(Ln3/e/b/j1/t;)V

    invoke-interface {v0, v1}, Ln3/e/b/j1/m0;->a(Ln3/e/b/u0;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/e/b/c1$a;->b:Ln3/e/b/c1;

    .line 3
    iget-object v0, p1, Ln3/e/b/g1;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/g1$c;

    .line 4
    invoke-interface {v1, p1}, Ln3/e/b/g1$c;->c(Ln3/e/b/g1;)V

    goto :goto_0

    :cond_0
    return-void
.end method
