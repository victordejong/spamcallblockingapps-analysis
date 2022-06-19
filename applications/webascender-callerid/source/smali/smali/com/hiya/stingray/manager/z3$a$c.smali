.class Lcom/hiya/stingray/manager/z3$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/z3$a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/n<",
        "Lcom/hiya/stingray/q/c/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/hiya/stingray/manager/z3$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/z3$a;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/manager/z3$a$c;->c:Lcom/hiya/stingray/manager/z3$a;

    iput-object p2, p0, Lcom/hiya/stingray/manager/z3$a$c;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/hiya/stingray/manager/z3$a$c;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/q/c/e;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/manager/z3$a$c;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hiya/stingray/manager/z3$a$c;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/hiya/stingray/manager/z3$a$c;->c:Lcom/hiya/stingray/manager/z3$a;

    iget-object v1, v1, Lcom/hiya/stingray/manager/z3$a;->a:Lcom/hiya/stingray/manager/z3;

    iget-object v3, p0, Lcom/hiya/stingray/manager/z3$a$c;->b:Ljava/util/List;

    invoke-static {v1, v0, v3}, Lcom/hiya/stingray/manager/z3;->b(Lcom/hiya/stingray/manager/z3;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/manager/z3$a$c;->a:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/manager/z3$a$c;->a:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/q/c/e;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/z3$a$c;->a(Lcom/hiya/stingray/q/c/e;)Z

    move-result p1

    return p1
.end method
