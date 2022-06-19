.class public Lcom/freshchat/consumer/sdk/c/p;
.super Lcom/freshchat/consumer/sdk/c/b;
.source "SourceFile"


# static fields
.field private static final jJ:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/c/a/o;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/c/a/o;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/a/c;->cR()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/c/p;->jJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/c/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/BusinessHours;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->getOperatingHoursId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->getTimezone()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timezone"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->getWeekDaysBH()Lcom/freshchat/consumer/sdk/beans/BHWeekDays;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->getWeekDaysBH()Lcom/freshchat/consumer/sdk/beans/BHWeekDays;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "days_bh"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->getWorkingDays()Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->getWorkingDays()Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "days_working"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->isEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "enabled"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->isDefaultBhr()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "default_bh"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->getOperatingHoursType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bh_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private m(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/BusinessHours;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/beans/BusinessHours;"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/b;->d(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;-><init>()V

    const-string v1, "_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->setOperatingHoursId(J)V

    const-string v1, "name"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->setName(Ljava/lang/String;)V

    const-string v1, "timezone"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->setTimezone(Ljava/lang/String;)V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v1

    const-string v2, "days_bh"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/freshchat/consumer/sdk/beans/BHWeekDays;

    invoke-virtual {v1, v2, v3}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/BHWeekDays;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->setWeekDaysBH(Lcom/freshchat/consumer/sdk/beans/BHWeekDays;)V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v1

    const-string v2, "days_working"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;

    invoke-virtual {v1, v2, v3}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->setWorkingDays(Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;)V

    const-string v1, "enabled"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->setEnabled(Z)V

    const-string v1, "default_bh"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->setDefaultBhr(Z)V

    const-string v1, "bh_type"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->setOperatingHoursType(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public D(J)Lcom/freshchat/consumer/sdk/beans/BusinessHours;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "business_hours"

    sget-object v3, Lcom/freshchat/consumer/sdk/c/p;->jJ:[Ljava/lang/String;

    const-string v4, "_id=? AND enabled=1"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/c/p;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/c/p;->m(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/BusinessHours;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v0

    :goto_0
    :try_start_2
    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-object v0

    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_2
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p2
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

    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "timezone"

    invoke-static {v0, v1, v2, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "days_bh"

    invoke-static {v0, v3, v1, p1, v2}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "days_working"

    invoke-static {v0, v2, v1, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "enabled"

    invoke-static {v0, v3, v1, p1, v2}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "default_bh"

    invoke-static {v0, v2, v1, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bh_type"

    invoke-static {v0, v3, v1, p1, v2}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a(Lcom/freshchat/consumer/sdk/beans/OperatingHoursResponse;)V
    .locals 4

    const-string v0, "business_hours"

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/OperatingHoursResponse;->getOperatingHours()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/OperatingHoursResponse;->getOperatingHours()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/beans/BusinessHours;

    invoke-direct {p0, v3}, Lcom/freshchat/consumer/sdk/c/p;->a(Lcom/freshchat/consumer/sdk/beans/BusinessHours;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p1, "FRESHCHAT_WARNING"

    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->jG:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public fm()Lcom/freshchat/consumer/sdk/beans/BusinessHours;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "business_hours"

    sget-object v3, Lcom/freshchat/consumer/sdk/c/p;->jJ:[Ljava/lang/String;

    const-string v4, "default_bh=1 AND enabled=1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/c/p;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/freshchat/consumer/sdk/c/p;->m(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/BusinessHours;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v1, v0

    :goto_0
    :try_start_2
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw v0
.end method
