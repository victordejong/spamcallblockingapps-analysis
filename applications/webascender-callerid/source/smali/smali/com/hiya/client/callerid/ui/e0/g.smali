.class public final Lcom/hiya/client/callerid/ui/e0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "g"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/hiya/client/callerid/ui/e0/c;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/google/common/base/d;->g()Lcom/google/common/base/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/d;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/hiya/common/phone/parser/PhoneParser$c;->a()Lcom/hiya/common/phone/parser/PhoneParser;

    move-result-object v1

    .line 4
    new-instance v2, Lg/g/c/a/a/a/j;

    new-array v3, v0, [Lg/g/c/a/a/a/i;

    invoke-direct {v2, p0, v3}, Lg/g/c/a/a/a/j;-><init>(Ljava/lang/String;[Lg/g/c/a/a/a/i;)V

    invoke-interface {v1, v2}, Lcom/hiya/common/phone/parser/PhoneParser;->f(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$a;

    move-result-object v1

    .line 5
    iget-object v2, v1, Lcom/hiya/common/phone/parser/PhoneParser$a;->f:Lcom/hiya/common/phone/parser/PhoneParser$b;

    iget-object v2, v2, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;

    .line 6
    invoke-virtual {v2}, Lcom/google/common/base/j;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/g/c/a/a/a/c;

    iget-object v2, v2, Lg/g/c/a/a/a/c;->f:Ljava/lang/String;

    invoke-static {}, Lcom/hiya/client/callerid/ui/e0/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Lcom/hiya/common/phone/parser/PhoneParser$a;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/hiya/common/phone/parser/PhoneParser$a;->h:Ljava/lang/String;
    :try_end_0
    .catch Lcom/hiya/common/phone/parser/PhoneParser$Failure; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v1

    .line 7
    sget-object v2, Lcom/hiya/client/callerid/ui/e0/g;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const-string v0, "Failed to parse rawPhoneNumber%s"

    invoke-static {v2, v1, v0, v3}, Lcom/hiya/client/support/logging/d;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/String;)Lcom/hiya/client/callerid/ui/b0/j;
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-static {p0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    const/4 v7, 0x1

    .line 3
    :try_start_0
    invoke-static {p0, v6}, Lcom/hiya/client/callerid/ui/e0/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object v0

    .line 4
    iget-boolean v8, v0, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z

    if-eqz v8, :cond_1

    .line 5
    new-instance v8, Lcom/hiya/client/callerid/ui/b0/j;

    iget-object v9, v0, Lcom/hiya/common/phone/parser/PhoneParser$b;->f:Lg/g/c/a/a/a/h;

    invoke-virtual {v9}, Lg/g/c/a/a/a/h;->b()Ljava/lang/String;

    move-result-object v10

    iget-object v9, v0, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;

    .line 6
    invoke-virtual {v9}, Lcom/google/common/base/j;->d()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v0, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;

    invoke-virtual {v9}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/g/c/a/a/a/c;

    iget-object v9, v9, Lg/g/c/a/a/a/c;->f:Ljava/lang/String;

    move-object v11, v9

    goto :goto_1

    :cond_0
    move-object v11, v6

    :goto_1
    iget-object v0, v0, Lcom/hiya/common/phone/parser/PhoneParser$b;->f:Lg/g/c/a/a/a/h;

    iget-object v12, v0, Lg/g/c/a/a/a/h;->g:Ljava/lang/String;

    const/4 v13, 0x1

    iget-short v0, v0, Lg/g/c/a/a/a/h;->f:S

    .line 7
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Lcom/hiya/client/callerid/ui/b0/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Short;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/hiya/common/phone/parser/PhoneParser$Failure; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    .line 8
    sget-object v6, Lcom/hiya/client/callerid/ui/e0/g;->a:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    const-string v8, "Failed to parse rawPhoneNumber %s"

    invoke-static {v6, v0, v8, v7}, Lcom/hiya/client/support/logging/d;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 9
    :goto_2
    sget-object v8, Lcom/hiya/client/callerid/ui/e0/g;->a:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const-string v6, "countryCode is either null or invalid: %s"

    invoke-static {v8, v0, v6, v7}, Lcom/hiya/client/support/logging/d;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 11
    new-instance v0, Lcom/hiya/client/callerid/ui/b0/j;

    array-length v1, v2

    if-nez v1, :cond_3

    const-string v1, ""

    goto :goto_4

    :cond_3
    aget-object v1, v2, v4

    :goto_4
    move-object v8, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v9

    invoke-direct/range {v6 .. v11}, Lcom/hiya/client/callerid/ui/b0/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Short;)V

    return-object v0

    .line 12
    :cond_4
    new-instance v0, Lcom/hiya/client/callerid/ui/b0/j;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hiya/client/callerid/ui/b0/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Short;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/hiya/client/callerid/ui/e0/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object p0

    iget-object p0, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->f:Lg/g/c/a/a/a/h;

    invoke-virtual {p0}, Lg/g/c/a/a/a/h;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    sget-object v0, Lcom/hiya/client/callerid/ui/e0/g;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Failed to parse phone number.  Country code %s"

    invoke-static {v0, p0, p1, v1}, Lcom/hiya/client/support/logging/d;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Lcom/hiya/common/phone/parser/PhoneParser$b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hiya/common/phone/parser/PhoneParser$Failure;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/hiya/common/phone/parser/PhoneParser$c;->a()Lcom/hiya/common/phone/parser/PhoneParser;

    move-result-object v0

    .line 2
    new-instance v1, Lg/g/c/a/a/a/j;

    const/4 v2, 0x1

    new-array v3, v2, [Lg/g/c/a/a/a/i;

    new-instance v4, Lg/g/c/a/a/a/i$e;

    invoke-direct {v4, p1}, Lg/g/c/a/a/a/i$e;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, p0, v3}, Lg/g/c/a/a/a/j;-><init>(Ljava/lang/String;[Lg/g/c/a/a/a/i;)V

    invoke-interface {v0, v1}, Lcom/hiya/common/phone/parser/PhoneParser;->h(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object v1

    .line 3
    iget-boolean v3, v1, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z

    if-nez v3, :cond_0

    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Lg/g/c/a/a/a/j;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Lg/g/c/a/a/a/i;

    new-instance v3, Lg/g/c/a/a/a/i$e;

    invoke-direct {v3, p1}, Lg/g/c/a/a/a/i$e;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    invoke-direct {v4, p0, v2}, Lg/g/c/a/a/a/j;-><init>(Ljava/lang/String;[Lg/g/c/a/a/a/i;)V

    invoke-interface {v0, v4}, Lcom/hiya/common/phone/parser/PhoneParser;->h(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object p0

    .line 5
    iget-boolean p1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z

    if-eqz p1, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1
.end method
