.class public Ln3/b0/a/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/b0/a/g;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Ln3/b0/a/g;


# direct methods
.method public constructor <init>(Ln3/b0/a/g;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b0/a/g$b;->b:Ln3/b0/a/g;

    iput-object p2, p0, Ln3/b0/a/g$b;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/b0/a/g$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/b0/a/g$i;

    .line 2
    iget-object v2, p0, Ln3/b0/a/g$b;->b:Ln3/b0/a/g;

    invoke-virtual {v2, v1}, Ln3/b0/a/g;->animateChangeImpl(Ln3/b0/a/g$i;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/b0/a/g$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Ln3/b0/a/g$b;->b:Ln3/b0/a/g;

    iget-object v0, v0, Ln3/b0/a/g;->mChangesList:Ljava/util/ArrayList;

    iget-object v1, p0, Ln3/b0/a/g$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
