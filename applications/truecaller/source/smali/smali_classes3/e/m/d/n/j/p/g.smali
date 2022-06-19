.class public Le/m/d/n/j/p/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/d/n/j/j/r0;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/n/j/p/g;->a:Le/m/d/n/j/j/r0;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Le/m/d/n/j/p/j/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "settings_version"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Le/m/d/n/j/p/b;

    invoke-direct {v0}, Le/m/d/n/j/p/b;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Le/m/d/n/j/p/i;

    invoke-direct {v0}, Le/m/d/n/j/p/i;-><init>()V

    .line 4
    :goto_0
    iget-object v1, p0, Le/m/d/n/j/p/g;->a:Le/m/d/n/j/j/r0;

    invoke-interface {v0, v1, p1}, Le/m/d/n/j/p/h;->a(Le/m/d/n/j/j/r0;Lorg/json/JSONObject;)Le/m/d/n/j/p/j/e;

    move-result-object p1

    return-object p1
.end method
