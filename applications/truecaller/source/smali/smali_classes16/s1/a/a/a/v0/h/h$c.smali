.class public abstract Ls1/a/a/a/v0/h/h$c;
.super Ls1/a/a/a/v0/h/h$b;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/h/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Ls1/a/a/a/v0/h/h$d<",
        "TMessageType;>;BuilderType:",
        "Ls1/a/a/a/v0/h/h$c<",
        "TMessageType;TBuilderType;>;>",
        "Ls1/a/a/a/v0/h/h$b<",
        "TMessageType;TBuilderType;>;",
        "Ljava/lang/Object<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field public b:Ls1/a/a/a/v0/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/g<",
            "Ls1/a/a/a/v0/h/h$e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$b;-><init>()V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/h/g;->d:Ls1/a/a/a/v0/h/g;

    .line 3
    iput-object v0, p0, Ls1/a/a/a/v0/h/h$c;->b:Ls1/a/a/a/v0/h/g;

    return-void
.end method


# virtual methods
.method public final f(Ls1/a/a/a/v0/h/h$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/h/h$c;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$c;->b:Ls1/a/a/a/v0/h/g;

    invoke-virtual {v0}, Ls1/a/a/a/v0/h/g;->b()Ls1/a/a/a/v0/h/g;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/h/h$c;->b:Ls1/a/a/a/v0/h/g;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ls1/a/a/a/v0/h/h$c;->c:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$c;->b:Ls1/a/a/a/v0/h/g;

    .line 5
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p1, Ls1/a/a/a/v0/h/g;->a:Ls1/a/a/a/v0/h/u;

    invoke-virtual {v2}, Ls1/a/a/a/v0/h/u;->h()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8
    iget-object v2, p1, Ls1/a/a/a/v0/h/g;->a:Ls1/a/a/a/v0/h/u;

    invoke-virtual {v2, v1}, Ls1/a/a/a/v0/h/u;->g(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/h/g;->j(Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p1, Ls1/a/a/a/v0/h/g;->a:Ls1/a/a/a/v0/h/u;

    invoke-virtual {p1}, Ls1/a/a/a/v0/h/u;->i()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/h/g;->j(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_2
    return-void
.end method
