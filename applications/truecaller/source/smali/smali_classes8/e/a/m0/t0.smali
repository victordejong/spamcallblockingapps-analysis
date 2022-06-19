.class public Le/a/m0/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p4}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    const/4 p6, 0x0

    const/4 v0, 0x1

    if-eqz p5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 2
    sget-object v1, Le/a/m0/a1$n;->a:[Ljava/lang/String;

    array-length v2, v1

    move v3, p6

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v1, p6

    :goto_2
    new-array v2, v0, [Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p5, v0, p6

    const-string p5, "Conversation field \'%s\' is not approved for direct modification"

    .line 4
    invoke-static {p5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    aput-object p5, v2, p6

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p5, "conversation_id"

    .line 6
    invoke-virtual {p3, p5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    new-array v1, p6, [Ljava/lang/String;

    invoke-static {p5, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isFalse(Z[Ljava/lang/String;)V

    new-array p5, v0, [Ljava/lang/String;

    aput-object p3, p5, p6

    const-string p3, "msg_thread_stats"

    const-string p6, "conversation_id=?"

    .line 8
    invoke-virtual {p2, p3, p4, p6, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_3

    .line 9
    invoke-static {}, Le/a/b0/q/g0;->n()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    :cond_3
    return p2
.end method
