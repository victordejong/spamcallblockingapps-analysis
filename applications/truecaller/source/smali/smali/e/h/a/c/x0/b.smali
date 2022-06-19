.class public Le/h/a/c/x0/b;
.super Le/h/a/c/x0/d;
.source "SourceFile"


# instance fields
.field public final a:Le/h/a/c/x0/c;

.field public final b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final c:Le/h/a/c/f0;

.field public final d:Le/h/a/c/g0;

.field public final e:Le/h/a/c/u0/b;


# direct methods
.method public constructor <init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/u0/b;Le/h/a/c/f0;Le/h/a/c/x0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/x0/d;-><init>()V

    .line 2
    iput-object p4, p0, Le/h/a/c/x0/b;->a:Le/h/a/c/x0/c;

    .line 3
    iput-object p1, p0, Le/h/a/c/x0/b;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/x0/b;->d:Le/h/a/c/g0;

    .line 5
    iput-object p2, p0, Le/h/a/c/x0/b;->e:Le/h/a/c/u0/b;

    .line 6
    iput-object p3, p0, Le/h/a/c/x0/b;->c:Le/h/a/c/f0;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Le/h/a/c/x0/b;->d:Le/h/a/c/g0;

    iget-object p2, p0, Le/h/a/c/x0/b;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string p3, "Problem processing queue response, response is null"

    .line 3
    invoke-virtual {p1, p2, p3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object p1, p0, Le/h/a/c/x0/b;->d:Le/h/a/c/g0;

    iget-object v0, p0, Le/h/a/c/x0/b;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to process response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Le/h/a/c/x0/b;->a:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object p2, p0, Le/h/a/c/x0/b;->c:Le/h/a/c/f0;

    invoke-virtual {p2, p3, p1}, Le/h/a/c/f0;->r(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :catchall_0
    :try_start_2
    iget-object p1, p0, Le/h/a/c/x0/b;->d:Le/h/a/c/g0;

    iget-object p2, p0, Le/h/a/c/x0/b;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 11
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 13
    :catchall_1
    iget-object p1, p0, Le/h/a/c/x0/b;->e:Le/h/a/c/u0/b;

    .line 14
    iget p2, p1, Le/h/a/c/u0/b;->m:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Le/h/a/c/u0/b;->m:I

    .line 15
    iget-object p1, p0, Le/h/a/c/x0/b;->d:Le/h/a/c/g0;

    iget-object p2, p0, Le/h/a/c/x0/b;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 16
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
