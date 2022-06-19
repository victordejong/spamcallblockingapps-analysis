.class public final Le/a/m0/c1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2

    const-string p4, "provider"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "helper"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uri"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sorting_mode"

    .line 1
    invoke-virtual {p3, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const p5, 0x77fdce94

    if-eq p4, p5, :cond_1

    goto :goto_0

    :cond_1
    const-string p4, "last_name"

    .line 3
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    new-instance p2, Ls1/k;

    const-string p4, "sorting_group_2"

    const-string p5, "sorting_key_2"

    invoke-direct {p2, p4, p5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    new-instance p2, Ls1/k;

    const-string p4, "sorting_group_1"

    const-string p5, "sorting_key_1"

    invoke-direct {p2, p4, p5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    :goto_1
    iget-object p4, p2, Ls1/k;->a:Ljava/lang/Object;

    .line 7
    check-cast p4, Ljava/lang/String;

    .line 8
    iget-object p2, p2, Ls1/k;->b:Ljava/lang/Object;

    .line 9
    check-cast p2, Ljava/lang/String;

    const-string p5, "phonebook_filter"

    .line 10
    invoke-virtual {p3, p5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string p6, ""

    if-nez p5, :cond_3

    goto/16 :goto_4

    .line 11
    :cond_3
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result p7

    const v0, -0x3d4eeea9

    if-eq p7, v0, :cond_b

    const v0, 0x368a5a65

    if-eq p7, v0, :cond_4

    goto :goto_4

    :cond_4
    const-string p7, "non_phonebook"

    .line 12
    invoke-virtual {p5, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_c

    const-string p5, "WHERE contact_phonebook_id IS NULL AND (contact_source & 32)!=32 "

    invoke-static {p5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p7, "hidden_from_identified_filter"

    .line 13
    invoke-virtual {p3, p7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    const-string v0, "identified_spam_score_filter"

    .line 14
    invoke-virtual {p3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p7, :cond_5

    if-nez p3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p7, :cond_6

    .line 15
    invoke-static {p7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p7

    if-ne p7, v1, :cond_6

    move p7, v1

    goto :goto_2

    :cond_6
    move p7, v0

    :goto_2
    if-eqz p3, :cond_7

    .line 16
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    if-ne p3, v1, :cond_7

    move v0, v1

    :cond_7
    if-eqz p7, :cond_8

    if-eqz v0, :cond_8

    const-string p6, "AND (hidden_from_identified IS NULL OR hidden_from_identified==0) AND contact_spam_type IS NULL"

    goto :goto_3

    :cond_8
    if-eqz p7, :cond_9

    const-string p6, "AND (hidden_from_identified IS NULL OR hidden_from_identified==0)"

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    const-string p6, "AND contact_spam_type IS NULL"

    .line 17
    :cond_a
    :goto_3
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_4

    :cond_b
    const-string p3, "phonebook"

    .line 18
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    const-string p6, "WHERE contact_phonebook_id IS NOT NULL OR (contact_source & 32)=32"

    :cond_c
    :goto_4
    const-string p3, "\n            SELECT "

    const-string p5, " AS group_label, COUNT(*) AS label_count FROM sorted_contacts_shallow\n            "

    const-string p7, "\n            GROUP BY "

    .line 19
    invoke-static {p3, p4, p5, p6, p7}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, " ORDER BY "

    const-string p6, " IS NULL, "

    .line 20
    invoke-static {p3, p4, p5, p2, p6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "\n            "

    invoke-static {p3, p2, p4}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 22
    new-instance p2, Lcom/truecaller/log/UnmutedException$f;

    const-string p4, "Exception while fetching fast scroll indexes: "

    invoke-static {p4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_5
    return-object p3
.end method
