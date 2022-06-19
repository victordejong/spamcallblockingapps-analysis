.class public Lcom/freshchat/consumer/sdk/c/f;
.super Lcom/freshchat/consumer/sdk/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/c/f$a;
    }
.end annotation


# static fields
.field private static final eh:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/c/a/i;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/c/a/i;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/a/c;->cR()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/c/f;->eh:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/c/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private c(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Ljava/lang/String;II)Landroid/content/ContentValues;
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "position"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "uploaded"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->aH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContentType()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/as;->aH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "content"

    invoke-virtual {v0, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "content_type"

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "frag_type"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    new-instance p2, Lcom/freshchat/consumer/sdk/c/m;

    invoke-direct {p2, p0}, Lcom/freshchat/consumer/sdk/c/m;-><init>(Lcom/freshchat/consumer/sdk/c/f;)V

    invoke-virtual {p2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    new-instance p3, Lorg/json/JSONObject;

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->io()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "contentType"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "fragmentType"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "extras_json"

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private e(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/c/f$a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/c/f$a;"
        }
    .end annotation

    const-string v0, "content"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/b;->d(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "position"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "frag_type"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "content_type"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "extras_json"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->fromInt(I)Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v7, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEMPLATE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne p2, v7, :cond_0

    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "templateType"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->get(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v7

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->getClz()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_2
    const-string v7, "FRESHCHAT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse TemplateFragment. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v7

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->getClz()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_3

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "contentType"

    invoke-virtual {p2, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;

    invoke-direct {p1, v4}, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;-><init>(I)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;->setRawJsonOfUnsupportedType(Ljava/lang/String;)V

    move-object p2, p1

    :cond_3
    invoke-virtual {p2, v5}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->setContent(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->setContentType(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    new-instance p1, Lcom/freshchat/consumer/sdk/c/f$a;

    invoke-direct {p1, p2, v2, v3}, Lcom/freshchat/consumer/sdk/c/f$a;-><init>(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_4
    return-object v1
.end method


# virtual methods
.method public W(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "_id = ?"

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "fragments"

    sget-object v4, Lcom/freshchat/consumer/sdk/c/f;->eh:[Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "position"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/c/f;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p1

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/freshchat/consumer/sdk/c/f;->e(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/c/f$a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/f$a;->c(Lcom/freshchat/consumer/sdk/c/f$a;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-object v0

    :goto_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p1
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    :try_start_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move v7, v2

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/freshchat/consumer/sdk/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Ljava/lang/String;II)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/b;->d(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "position"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "frag_type"

    invoke-static {v0, v1, v2, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "content_type"

    invoke-static {v0, v3, v1, p1, v2}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "content"

    invoke-static {v0, v2, v1, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "extras_json"

    invoke-static {v0, v3, v1, p1, v2}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "uploaded"

    invoke-static {v0, v2, v1, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    const-string v0, "rawJsonOfUnsupportedType"

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "extras_json LIKE ?"

    const-string v3, "fragments"

    sget-object v4, Lcom/freshchat/consumer/sdk/c/f;->eh:[Ljava/lang/String;

    const-string v2, "%rawJsonOfUnsupportedType%"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/c/f;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "extras_json"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-void

    :cond_0
    :try_start_1
    const-string v4, "uploaded"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-direct {p0, v1, v2}, Lcom/freshchat/consumer/sdk/c/f;->e(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/c/f$a;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5}, Lcom/freshchat/consumer/sdk/c/f$a;->c(Lcom/freshchat/consumer/sdk/c/f$a;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object v6

    instance-of v6, v6, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;

    if-eqz v6, :cond_3

    invoke-static {v5}, Lcom/freshchat/consumer/sdk/c/f$a;->c(Lcom/freshchat/consumer/sdk/c/f$a;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object v6

    check-cast v6, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;

    invoke-virtual {v6}, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;->getRawJsonOfUnsupportedType()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/freshchat/consumer/sdk/c/f$a;->c(Lcom/freshchat/consumer/sdk/c/f$a;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object v6

    check-cast v6, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;->setRawJsonOfUnsupportedType(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v5}, Lcom/freshchat/consumer/sdk/c/f$a;->c(Lcom/freshchat/consumer/sdk/c/f$a;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object v9

    invoke-static {v5}, Lcom/freshchat/consumer/sdk/c/f$a;->a(Lcom/freshchat/consumer/sdk/c/f$a;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5}, Lcom/freshchat/consumer/sdk/c/f$a;->b(Lcom/freshchat/consumer/sdk/c/f$a;)I

    move-result v11

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/freshchat/consumer/sdk/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Ljava/lang/String;II)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_4
    invoke-static {v5}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_5
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :goto_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-void

    :goto_2
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p1
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/freshchat/consumer/sdk/c/f;->c(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Ljava/lang/String;II)Landroid/content/ContentValues;

    move-result-object p2

    const-string p3, "fragments"

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 p3, -0x1

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public b(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Ljava/lang/String;II)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/freshchat/consumer/sdk/c/f;->c(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Ljava/lang/String;II)Landroid/content/ContentValues;

    move-result-object p1

    const-string p4, "_id=? AND position=?"

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "fragments"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v3, p3

    invoke-virtual {v1, v2, p1, p4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public h(J)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SELECT fragments.* FROM fragments JOIN message ON message._id = fragments._id WHERE display!=-1 AND channel_id=? ORDER BY _id,position"

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/c/f;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p1

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/freshchat/consumer/sdk/c/f;->e(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/c/f$a;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/c/f$a;->a(Lcom/freshchat/consumer/sdk/c/f$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/c/f$a;->a(Lcom/freshchat/consumer/sdk/c/f$a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p2}, Lcom/freshchat/consumer/sdk/c/f$a;->a(Lcom/freshchat/consumer/sdk/c/f$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/c/f$a;->b(Lcom/freshchat/consumer/sdk/c/f$a;)I

    move-result v3

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/c/f$a;->c(Lcom/freshchat/consumer/sdk/c/f$a;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/c/f$a;->a(Lcom/freshchat/consumer/sdk/c/f$a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-object v0

    :goto_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p1
.end method

.method public z(J)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT fragments.* FROM fragments JOIN message ON message._id = fragments._id WHERE display!=-1 AND frag_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->CALENDAR_EVENT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "channel_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=? ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/c/f;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p2

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/n;->fP()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/c/f;->e(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/c/f$a;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {v7}, Lcom/freshchat/consumer/sdk/c/f$a;->c(Lcom/freshchat/consumer/sdk/c/f$a;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object v8

    instance-of v8, v8, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v7}, Lcom/freshchat/consumer/sdk/c/f$a;->c(Lcom/freshchat/consumer/sdk/c/f$a;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object v8

    check-cast v8, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;

    invoke-static {v8}, Lcom/freshchat/consumer/sdk/j/cm;->a(Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;->getStartMillis()J

    move-result-wide v8

    cmp-long v10, v8, v3

    if-lez v10, :cond_5

    cmp-long v10, v8, v1

    if-gez v10, :cond_3

    goto :goto_0

    :cond_3
    cmp-long v10, v5, v3

    if-eqz v10, :cond_4

    cmp-long v10, v8, v5

    if-gez v10, :cond_5

    :cond_4
    invoke-static {v7}, Lcom/freshchat/consumer/sdk/c/f$a;->a(Lcom/freshchat/consumer/sdk/c/f$a;)Ljava/lang/String;

    move-result-object v0

    move-wide v5, v8

    :cond_5
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_0

    :cond_6
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    move-object p1, v0

    :goto_1
    :try_start_2
    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    move-object v0, p1

    :goto_2
    return-object v0

    :goto_3
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p2
.end method
