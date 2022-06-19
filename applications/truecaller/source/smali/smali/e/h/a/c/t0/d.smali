.class public Le/h/a/c/t0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/h/a/c/t0/b;


# instance fields
.field public a:Le/h/a/c/t0/c;

.field public final b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;


# direct methods
.method public constructor <init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/h/a/c/t0/d;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    new-instance v0, Le/h/a/c/t0/c;

    sget-object v1, Le/h/a/c/u;->b:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Le/h/a/c/t0/c;-><init>(Ljava/util/HashSet;)V

    .line 4
    iput-object v0, p0, Le/h/a/c/t0/d;->a:Le/h/a/c/t0/c;

    const-string v0, "LegacyIdentityRepo Setting the default IdentitySet["

    .line 5
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/t0/d;->a:Le/h/a/c/t0/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    const-string v2, "ON_USER_LOGIN"

    invoke-virtual {p1, v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Le/h/a/c/t0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/t0/d;->a:Le/h/a/c/t0/c;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/t0/d;->a:Le/h/a/c/t0/c;

    .line 2
    iget-object v0, v0, Le/h/a/c/t0/c;->a:Ljava/util/HashSet;

    invoke-static {v0, p1}, Le/h/a/c/j0;->a(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Le/h/a/c/t0/d;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIdentity [Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , Value: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v2, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    const-string v3, "ON_USER_LOGIN"

    invoke-virtual {v1, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
