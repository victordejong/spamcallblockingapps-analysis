.class public abstract Le/a/z4/h;
.super Le/a/p5/t0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "prefs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method public getInt(Ljava/lang/String;I)I
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public j3()I
    .locals 3

    .line 1
    new-instance v0, Ls1/j;

    const-string v1, "An operation is not implemented: "

    const-string v2, "To support settings migration implement [migrateFrom], [currentVersion] and [name]. Migrations should start with moving values to separate file"

    invoke-static {v1, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k3()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ls1/j;

    const-string v1, "An operation is not implemented: "

    const-string v2, "To support settings migration implement [migrateFrom], [currentVersion] and [name]. Migrations should start with moving values to separate file"

    invoke-static {v1, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 1

    const-string p1, "context"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ls1/j;

    const-string p2, "An operation is not implemented: "

    const-string v0, "To support settings migration implement [migrateFrom], [currentVersion] and [name]. Migrations should start with moving values to separate file"

    invoke-static {p2, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ls1/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method
