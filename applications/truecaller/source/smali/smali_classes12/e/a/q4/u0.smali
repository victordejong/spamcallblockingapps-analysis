.class public Le/a/q4/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/g/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Le/a/n/g0;->y0(Ljava/lang/String;J)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Le/a/n/g0;->B0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Le/a/n/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Le/a/n/g0;->x0(Ljava/lang/String;I)V

    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 2
    invoke-static {p1, p2}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    int-to-long v0, p2

    .line 1
    invoke-static {p1, v0, v1}, Le/a/n/g0;->J(Ljava/lang/String;J)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Le/a/n/g0;->J(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Le/a/n/g0;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Le/a/n/g0;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Le/a/n/g0;->n0(Ljava/lang/String;)V

    return-void
.end method
