.class public Le/h/a/c/x0/i;
.super Le/h/a/c/x0/d;
.source "SourceFile"


# instance fields
.field public final a:Le/h/a/c/k;

.field public final b:Le/h/a/c/x0/c;

.field public final c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final d:Le/h/a/c/g0;


# direct methods
.method public constructor <init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/x0/d;-><init>()V

    .line 2
    iput-object p1, p0, Le/h/a/c/x0/i;->b:Le/h/a/c/x0/c;

    .line 3
    iput-object p2, p0, Le/h/a/c/x0/i;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    invoke-virtual {p2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/x0/i;->d:Le/h/a/c/g0;

    .line 5
    iput-object p3, p0, Le/h/a/c/x0/i;->a:Le/h/a/c/k;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/x0/i;->d:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/i;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Processing GeoFences response..."

    .line 3
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/h/a/c/x0/i;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-boolean v1, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Le/h/a/c/x0/i;->d:Le/h/a/c/g0;

    .line 7
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "CleverTap instance is configured to analytics only, not processing geofence response"

    .line 8
    invoke-virtual {v1, v0, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Le/h/a/c/x0/i;->b:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Le/h/a/c/x0/i;->d:Le/h/a/c/g0;

    .line 11
    iget-object p2, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string p3, "Geofences : Can\'t parse Geofences Response, JSON response object is null"

    .line 12
    invoke-virtual {p1, p2, p3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "geofences"

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Le/h/a/c/x0/i;->d:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/i;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 15
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Geofences : JSON object doesn\'t contain the Geofences key"

    .line 16
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Le/h/a/c/x0/i;->b:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 18
    :cond_2
    :try_start_0
    iget-object v0, p0, Le/h/a/c/x0/i;->a:Le/h/a/c/k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Le/h/a/c/x0/i;->d:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/i;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 20
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Geofences : Geofence SDK has not been initialized to handle the response"

    .line 21
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    iget-object v0, p0, Le/h/a/c/x0/i;->d:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/x0/i;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 23
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :goto_0
    iget-object v0, p0, Le/h/a/c/x0/i;->b:Le/h/a/c/x0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
