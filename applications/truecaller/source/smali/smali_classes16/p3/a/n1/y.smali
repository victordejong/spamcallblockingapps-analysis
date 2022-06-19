.class public final Lp3/a/n1/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/y$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lp3/a/n1/y$a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Lp3/a/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp3/a/n1/y;->a:Ljava/util/ArrayList;

    .line 3
    sget-object v0, Lp3/a/o;->d:Lp3/a/o;

    iput-object v0, p0, Lp3/a/n1/y;->b:Lp3/a/o;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/o;)V
    .locals 2

    const-string v0, "newState"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lp3/a/n1/y;->b:Lp3/a/o;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lp3/a/n1/y;->b:Lp3/a/o;

    sget-object v1, Lp3/a/o;->e:Lp3/a/o;

    if-eq v0, v1, :cond_2

    .line 3
    iput-object p1, p0, Lp3/a/n1/y;->b:Lp3/a/o;

    .line 4
    iget-object p1, p0, Lp3/a/n1/y;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lp3/a/n1/y;->a:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp3/a/n1/y;->a:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp3/a/n1/y$a;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 9
    throw p1

    :cond_2
    :goto_0
    return-void
.end method
