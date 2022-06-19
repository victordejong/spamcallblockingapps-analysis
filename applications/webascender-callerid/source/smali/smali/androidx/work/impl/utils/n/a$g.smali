.class final Landroidx/work/impl/utils/n/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final f:Landroidx/work/impl/utils/n/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/n/a<",
            "TV;>;"
        }
    .end annotation
.end field

.field final g:Lcom/google/common/util/concurrent/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/n/a;Lcom/google/common/util/concurrent/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/n/a<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/c<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/utils/n/a$g;->f:Landroidx/work/impl/utils/n/a;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/utils/n/a$g;->g:Lcom/google/common/util/concurrent/c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/n/a$g;->f:Landroidx/work/impl/utils/n/a;

    iget-object v0, v0, Landroidx/work/impl/utils/n/a;->f:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/n/a$g;->g:Lcom/google/common/util/concurrent/c;

    invoke-static {v0}, Landroidx/work/impl/utils/n/a;->j(Lcom/google/common/util/concurrent/c;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Landroidx/work/impl/utils/n/a;->k:Landroidx/work/impl/utils/n/a$b;

    iget-object v2, p0, Landroidx/work/impl/utils/n/a$g;->f:Landroidx/work/impl/utils/n/a;

    invoke-virtual {v1, v2, p0, v0}, Landroidx/work/impl/utils/n/a$b;->b(Landroidx/work/impl/utils/n/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/work/impl/utils/n/a$g;->f:Landroidx/work/impl/utils/n/a;

    invoke-static {v0}, Landroidx/work/impl/utils/n/a;->g(Landroidx/work/impl/utils/n/a;)V

    :cond_1
    return-void
.end method
