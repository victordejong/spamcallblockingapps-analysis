.class public Le/i/b/l2/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/l2/c/g;


# instance fields
.field public final a:Le/i/b/s2/n;


# direct methods
.method public constructor <init>(Le/i/b/s2/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/l2/c/f;->a:Le/i/b/s2/n;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Le/i/b/l2/c/f;->a:Le/i/b/s2/n;

    const-string v1, "IABTCF_gdprApplies"

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x1

    .line 3
    :try_start_0
    iget-object v0, v0, Le/i/b/s2/n;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Expect an int type when reading "

    invoke-static {v4, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    move v0, v2

    :goto_0
    if-eq v0, v2, :cond_0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/l2/c/f;->a:Le/i/b/s2/n;

    const-string v1, "IABTCF_TCString"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Le/i/b/s2/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
