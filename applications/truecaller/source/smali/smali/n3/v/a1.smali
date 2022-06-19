.class public Ln3/v/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/v/a1$a;,
        Ln3/v/a1$d;,
        Ln3/v/a1$c;,
        Ln3/v/a1$e;,
        Ln3/v/a1$b;
    }
.end annotation


# instance fields
.field public final a:Ln3/v/a1$b;

.field public final b:Ln3/v/b1;


# direct methods
.method public constructor <init>(Ln3/v/b1;Ln3/v/a1$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ln3/v/a1;->a:Ln3/v/a1$b;

    .line 3
    iput-object p1, p0, Ln3/v/a1;->b:Ln3/v/b1;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ln3/v/y0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ln3/v/y0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 2
    invoke-static {v1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ln3/v/a1;->b:Ln3/v/b1;

    .line 4
    iget-object v1, v1, Ln3/v/b1;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/v/y0;

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object p1, p0, Ln3/v/a1;->a:Ln3/v/a1$b;

    instance-of v0, p1, Ln3/v/a1$e;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Ln3/v/a1$e;

    invoke-virtual {p1, v1}, Ln3/v/a1$e;->a(Ln3/v/y0;)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, p0, Ln3/v/a1;->a:Ln3/v/a1$b;

    instance-of v2, v1, Ln3/v/a1$c;

    if-eqz v2, :cond_1

    .line 9
    check-cast v1, Ln3/v/a1$c;

    invoke-virtual {v1, v0, p1}, Ln3/v/a1$c;->b(Ljava/lang/String;Ljava/lang/Class;)Ln3/v/y0;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v1, p1}, Ln3/v/a1$b;->create(Ljava/lang/Class;)Ln3/v/y0;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 11
    iget-object p1, p0, Ln3/v/a1;->b:Ln3/v/b1;

    .line 12
    iget-object p1, p1, Ln3/v/b1;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/v/y0;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Ln3/v/y0;->onCleared()V

    :cond_2
    :goto_1
    return-object v1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
