.class public final synthetic Ln3/e/a/e/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/LinkedHashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedHashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/a0;->a:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ln3/e/a/e/a0;->a:Ljava/util/LinkedHashSet;

    .line 1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/a/e/b2;

    .line 2
    invoke-interface {v1}, Ln3/e/a/e/b2;->b()Ln3/e/a/e/b2$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Ln3/e/a/e/b2$a;->n(Ln3/e/a/e/b2;)V

    goto :goto_0

    :cond_0
    return-void
.end method
