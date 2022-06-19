.class public final Le/a/i5/c;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/i5/b;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    const-string v1, "theme_settings"

    const/4 v2, 0x0

    const-string v3, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->B0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Le/a/i5/c;->b:I

    .line 3
    iput-object v1, p0, Le/a/i5/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i5/c;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i5/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTheme"

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "tc.settings"

    .line 1
    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string p2, "oldSharedPreferences"

    .line 2
    invoke-static {v4, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    .line 4
    invoke-static/range {v3 .. v8}, Le/a/p5/t0/a;->m3(Le/a/p5/t0/a;Landroid/content/SharedPreferences;Ljava/util/Set;ZILjava/lang/Object;)I

    :cond_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_5

    const-string p2, "DEFAULT"

    .line 5
    invoke-virtual {p0, v0, p2}, Le/a/p5/t0/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x72911200

    const-string v4, "DARK"

    if-eq v2, v3, :cond_3

    const v3, 0x1fe776

    if-eq v2, v3, :cond_2

    const v3, 0x6505a08e

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "RAMADAN"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_3
    const-string v2, "PITCH_BLACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    move-object p2, v4

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {p0, v0, p2}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 p2, 0x3

    if-ge p1, p2, :cond_a

    const-string p1, "INHERIT_BRIGHT"

    .line 8
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x136766de

    const-string v3, "BRIGHT"

    const-string v4, "INHERIT_DARK"

    if-eq v1, v2, :cond_8

    const v2, 0x2ae9545a

    if-eq v1, v2, :cond_7

    const v2, 0x7545a2fa

    if-eq v1, v2, :cond_6

    goto :goto_2

    .line 9
    :cond_6
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    move-object p1, v3

    goto :goto_2

    .line 10
    :cond_7
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    move-object p1, v4

    goto :goto_2

    .line 11
    :cond_8
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 12
    :cond_9
    :goto_2
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method
