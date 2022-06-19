.class public final Lx3/b0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lx3/x;

.field public b:Lu3/f$a;

.field public c:Lu3/a0;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx3/j$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx3/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lx3/x;->a:Lx3/x;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lx3/b0$b;->d:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lx3/b0$b;->e:Ljava/util/List;

    .line 5
    iput-object v0, p0, Lx3/b0$b;->a:Lx3/x;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lx3/b0$b;
    .locals 2

    const-string v0, "baseUrl == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "$this$toHttpUrl"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lu3/a0$a;

    invoke-direct {v0}, Lu3/a0$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lu3/a0$a;->f(Lu3/a0;Ljava/lang/String;)Lu3/a0$a;

    invoke-virtual {v0}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lx3/b0$b;->b(Lu3/a0;)Lx3/b0$b;

    return-object p0
.end method

.method public b(Lu3/a0;)Lx3/b0$b;
    .locals 3

    const-string v0, "baseUrl == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lu3/a0;->g:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lx3/b0$b;->c:Lu3/a0;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseUrl must end in /: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lx3/b0;
    .locals 10

    .line 1
    iget-object v0, p0, Lx3/b0$b;->c:Lu3/a0;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lx3/b0$b;->b:Lu3/f$a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lu3/e0;

    .line 4
    new-instance v1, Lu3/e0$a;

    invoke-direct {v1}, Lu3/e0$a;-><init>()V

    invoke-direct {v0, v1}, Lu3/e0;-><init>(Lu3/e0$a;)V

    :cond_0
    move-object v3, v0

    .line 5
    iget-object v0, p0, Lx3/b0$b;->a:Lx3/x;

    invoke-virtual {v0}, Lx3/x;->b()Ljava/util/concurrent/Executor;

    move-result-object v7

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lx3/b0$b;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    iget-object v1, p0, Lx3/b0$b;->a:Lx3/x;

    invoke-virtual {v1, v7}, Lx3/x;->a(Ljava/util/concurrent/Executor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lx3/b0$b;->d:Ljava/util/List;

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lx3/b0$b;->a:Lx3/x;

    invoke-virtual {v4}, Lx3/x;->d()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    new-instance v2, Lx3/a;

    invoke-direct {v2}, Lx3/a;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v2, p0, Lx3/b0$b;->d:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v2, p0, Lx3/b0$b;->a:Lx3/x;

    invoke-virtual {v2}, Lx3/x;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    new-instance v9, Lx3/b0;

    iget-object v4, p0, Lx3/b0$b;->c:Lu3/a0;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lx3/b0;-><init>(Lu3/f$a;Lu3/a0;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    return-object v9

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base URL required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lu3/e0;)Lx3/b0$b;
    .locals 1

    const-string v0, "client == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lx3/b0$b;->b:Lu3/f$a;

    return-object p0
.end method
