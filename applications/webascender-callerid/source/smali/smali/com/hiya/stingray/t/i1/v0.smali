.class public Lcom/hiya/stingray/t/i1/v0;
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

.field private b:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/g0;->e()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/t/i1/v0;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/hiya/stingray/t/i1/v0;->b:Lh/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/hiya/stingray/q/c/f;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_id"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v1, "date"

    .line 3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "address"

    .line 4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "type"

    .line 5
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 10
    iget-object v3, p0, Lcom/hiya/stingray/t/i1/v0;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    iget-object v3, p0, Lcom/hiya/stingray/t/i1/v0;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 12
    iget-object v5, p0, Lcom/hiya/stingray/t/i1/v0;->b:Lh/a;

    invoke-interface {v5}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/hiya/stingray/util/y;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/hiya/stingray/t/i1/v0;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 14
    :goto_0
    invoke-static {}, Lcom/hiya/stingray/q/c/f;->e()Lcom/hiya/stingray/q/c/f$b;

    move-result-object v3

    .line 15
    invoke-virtual {v3, v0}, Lcom/hiya/stingray/q/c/f$b;->i(I)Lcom/hiya/stingray/q/c/f$b;

    .line 16
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/hiya/stingray/q/c/f$b;->f(J)Lcom/hiya/stingray/q/c/f$b;

    .line 17
    invoke-virtual {v3, v2}, Lcom/hiya/stingray/q/c/f$b;->g(Ljava/lang/String;)Lcom/hiya/stingray/q/c/f$b;

    .line 18
    invoke-virtual {v3, p1}, Lcom/hiya/stingray/q/c/f$b;->h(I)Lcom/hiya/stingray/q/c/f$b;

    .line 19
    invoke-virtual {v3}, Lcom/hiya/stingray/q/c/f$b;->e()Lcom/hiya/stingray/q/c/f;

    move-result-object p1

    return-object p1
.end method
