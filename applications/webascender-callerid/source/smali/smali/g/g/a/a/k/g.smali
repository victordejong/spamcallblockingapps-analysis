.class public final Lg/g/a/a/k/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/k/g;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method private final a()J
    .locals 6

    .line 1
    iget-object v0, p0, Lg/g/a/a/k/g;->a:Landroid/content/SharedPreferences;

    const-string v1, "Received_request_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lg/g/a/a/k/g;->a:Landroid/content/SharedPreferences;

    const-string v3, "307_Max_age"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final b(Lm/e0;)Lm/e0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lm/e0;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lg/g/a/a/k/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lm/e0;->i()Lm/e0$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Lm/e0$a;->k(Ljava/lang/String;)Lm/e0$a;

    const-string v0, "Host"

    .line 5
    invoke-virtual {p1, v0}, Lm/e0$a;->i(Ljava/lang/String;)Lm/e0$a;

    .line 6
    invoke-virtual {p1}, Lm/e0$a;->b()Lm/e0;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/g/a/a/k/g;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lg/g/a/a/k/g;->a()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 2
    iget-object v0, p0, Lg/g/a/a/k/g;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v1, p1

    :cond_1
    return-object v1

    .line 3
    :cond_2
    iget-object v0, p0, Lg/g/a/a/k/g;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "307_Max_age"

    .line 5
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "Received_request_time"

    .line 6
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v1
.end method

.method private final d(Lm/g0;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lm/g0;->f()I

    move-result p1

    const/16 v0, 0x133

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {p1, p2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    if-lez p3, :cond_2

    .line 2
    iget-object v0, p0, Lg/g/a/a/k/g;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "307_Max_age"

    .line 4
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "Received_request_time"

    .line 5
    invoke-interface {p1, p2, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v0, "chain"

    invoke-static {v7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    invoke-direct {v6, v0}, Lg/g/a/a/k/g;->b(Lm/e0;)Lm/e0;

    move-result-object v0

    .line 2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v1

    invoke-virtual {v1}, Lm/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {v7, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object v1

    const/4 v9, 0x0

    move-object v10, v0

    move-object v11, v1

    const/4 v12, 0x0

    .line 5
    :goto_0
    invoke-direct {v6, v11}, Lg/g/a/a/k/g;->d(Lm/g0;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Location"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 6
    invoke-static {v11, v0, v1, v2, v1}, Lm/g0;->o(Lm/g0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_4

    .line 7
    invoke-virtual {v10}, Lm/e0;->l()Lm/y;

    move-result-object v3

    invoke-virtual {v3}, Lm/y;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v11, v0, v1, v2, v1}, Lm/g0;->o(Lm/g0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v11}, Lm/g0;->b()Lm/e;

    move-result-object v0

    invoke-virtual {v0}, Lm/e;->c()I

    move-result v4

    .line 10
    invoke-virtual {v11}, Lm/g0;->L()J

    move-result-wide v14

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v4

    move-wide v4, v14

    .line 11
    invoke-direct/range {v0 .. v5}, Lg/g/a/a/k/g;->e(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 12
    invoke-virtual {v10}, Lm/e0;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v12, v13

    const/4 v0, 0x5

    if-ge v12, v0, :cond_2

    .line 13
    invoke-direct {v6, v10}, Lg/g/a/a/k/g;->b(Lm/e0;)Lm/e0;

    move-result-object v10

    .line 14
    invoke-virtual {v11}, Lm/g0;->close()V

    .line 15
    invoke-interface {v7, v10}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object v11

    goto :goto_0

    .line 16
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many redirects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 18
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lm/g0;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " received but no location header found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-object v11
.end method
