.class public Lcom/hiya/stingray/t/i1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/g0;->e()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/t/i1/c;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/hiya/stingray/q/c/a;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_id"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v1, "number"

    .line 3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "type"

    .line 4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "date"

    .line 5
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "duration"

    .line 6
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 12
    iget-object v4, p0, Lcom/hiya/stingray/t/i1/c;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    iget-object p2, p0, Lcom/hiya/stingray/t/i1/c;->a:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 14
    invoke-static {v1, v4}, Lcom/hiya/stingray/util/y;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    iget-object v4, p0, Lcom/hiya/stingray/t/i1/c;->a:Ljava/util/Map;

    invoke-interface {v4, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 17
    invoke-static {}, Lcom/hiya/stingray/q/c/a;->f()Lcom/hiya/stingray/q/c/a$b;

    move-result-object v2

    .line 18
    invoke-virtual {v2, v0}, Lcom/hiya/stingray/q/c/a$b;->k(I)Lcom/hiya/stingray/q/c/a$b;

    .line 19
    invoke-virtual {v2, p2}, Lcom/hiya/stingray/q/c/a$b;->i(Ljava/lang/String;)Lcom/hiya/stingray/q/c/a$b;

    .line 20
    invoke-virtual {v2, v1}, Lcom/hiya/stingray/q/c/a$b;->j(I)Lcom/hiya/stingray/q/c/a$b;

    .line 21
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/hiya/stingray/q/c/a$b;->g(J)Lcom/hiya/stingray/q/c/a$b;

    .line 22
    invoke-virtual {v2, p1}, Lcom/hiya/stingray/q/c/a$b;->h(I)Lcom/hiya/stingray/q/c/a$b;

    .line 23
    invoke-virtual {v2}, Lcom/hiya/stingray/q/c/a$b;->f()Lcom/hiya/stingray/q/c/a;

    move-result-object p1

    return-object p1
.end method
