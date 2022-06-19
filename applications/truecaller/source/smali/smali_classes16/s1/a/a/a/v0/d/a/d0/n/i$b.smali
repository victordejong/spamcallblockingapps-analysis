.class public final Ls1/a/a/a/v0/d/a/d0/n/i$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/i;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/HashMap<",
        "Ls1/a/a/a/v0/j/w/b;",
        "Ls1/a/a/a/v0/j/w/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/i;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/i$b;->b:Ls1/a/a/a/v0/d/a/d0/n/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/i$b;->b:Ls1/a/a/a/v0/d/a/d0/n/i;

    invoke-virtual {v1}, Ls1/a/a/a/v0/d/a/d0/n/i;->w0()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/d/b/l;

    .line 3
    invoke-static {v3}, Ls1/a/a/a/v0/j/w/b;->d(Ljava/lang/String;)Ls1/a/a/a/v0/j/w/b;

    move-result-object v3

    const-string v4, "JvmClassName.byInternalName(partInternalName)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v2}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object v2

    .line 5
    iget-object v4, v2, Ls1/a/a/a/v0/d/b/w/a;->a:Ls1/a/a/a/v0/d/b/w/a$a;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Ls1/a/a/a/v0/d/b/w/a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ls1/a/a/a/v0/j/w/b;->d(Ljava/lang/String;)Ls1/a/a/a/v0/j/w/b;

    move-result-object v2

    const-string v4, "JvmClassName.byInternalN\u2026: continue@kotlinClasses)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method
