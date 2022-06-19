.class public final Lcom/facebook/ads/redexgen/X/8o;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/lang/Object;

.field public static final A04:Ljava/lang/String;

.field public static final A05:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TEIgz1GSUxi0w6HxI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WqDufwBE7AlvD41n6qdN4YbCXU2LtDad"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "95AkSvnB6didgYS0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "q9Pm9O4XheyxpjJIaV85netzFUNpUTJ1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "laKi0sQOm1cRNFPmXQKezZzTFfBBOlTJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "R9By8R7rHrFXxi8d0eZrOpOQKJFwFXXr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DNKj97yZe49oXEmfRz7aINNiwqbkjDQZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HsAQREGxpVIGFVt11mTJ2r8ajNtMZb1h"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    .line 18977
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8o;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/8o;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8o;->A04:Ljava/lang/String;

    .line 18978
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8o;->A03:Ljava/lang/Object;

    .line 18979
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18980
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    .line 18981
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18982
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    .line 18983
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8o;->A00:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Context;)I
    .locals 5

    .line 18985
    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 18986
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 18987
    .local p0, "sharedPreferences":Landroid/content/SharedPreferences;
    const/16 v2, 0x4b

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public static A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8J;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/8q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/8J;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/8q;"
        }
    .end annotation

    .line 18988
    .local v0, "staticEnvironmentData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 18989
    :try_start_0
    const/4 v0, 0x1

    new-instance v1, Lcom/facebook/ads/redexgen/X/8a;

    invoke-direct {v1, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/8a;-><init>(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 18990
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v3

    .line 18991
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v2

    .line 18992
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8a;->A02()Ljava/util/Map;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8q;

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/8q;-><init>(DLjava/lang/String;Ljava/util/Map;)V

    move-object v5, v0

    .line 18993
    invoke-static {v5, p1}, Lcom/facebook/ads/redexgen/X/8o;->A0B(Lcom/facebook/ads/redexgen/X/8q;Lcom/facebook/ads/redexgen/X/8J;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18994
    :catch_0
    return-object v5
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8o;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/8J;)Lorg/json/JSONArray;
    .locals 1

    .line 18995
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/8o;->A04(Lcom/facebook/ads/redexgen/X/8J;I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/8J;I)Lorg/json/JSONArray;
    .locals 10

    .line 18996
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 18997
    .local p0, "debugLogEvents":Lorg/json/JSONArray;
    sget-object v9, Lcom/facebook/ads/redexgen/X/8o;->A03:Ljava/lang/Object;

    monitor-enter v9

    .line 18998
    const/4 v3, 0x0

    .line 18999
    .local v4, "inputStream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 19000
    .local v9, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v8, 0x0

    .line 19001
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 19002
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19003
    .local v5, "debugLogFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19004
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 19005
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/8J;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 19006
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v5, v0

    .line 19007
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v0

    .line 19008
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v6, "line":Ljava/lang/String;
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 19009
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19010
    .local v8, "debugLogEvent":Lorg/json/JSONObject;
    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19011
    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19012
    :cond_1
    const/16 v2, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 19013
    .local v2, "eventId":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19014
    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 19015
    .local v1, "attempt":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19016
    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    .line 19017
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19018
    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19019
    :goto_1
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 19020
    :cond_2
    invoke-static {v7, v1}, Lcom/facebook/ads/redexgen/X/8o;->A0E(Ljava/lang/String;I)V

    goto :goto_1

    .line 19021
    :goto_2
    if-lez p1, :cond_0

    .line 19022
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 19023
    .end local v5    # "debugLogFile":Ljava/io/File;
    .end local v6    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19024
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 19025
    :cond_4
    if-eqz v5, :cond_5

    .line 19026
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 19027
    :cond_5
    if-eqz v3, :cond_8

    .line 19028
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19029
    :catch_0
    move-exception v1

    goto :goto_4

    .line 19030
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    .line 19031
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8l;->A3P(Ljava/lang/Throwable;)V

    .line 19032
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19033
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 19034
    :cond_6
    if-eqz v5, :cond_7

    .line 19035
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 19036
    :cond_7
    if-eqz v3, :cond_8

    .line 19037
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19038
    :catch_3
    move-exception v1

    .line 19039
    .local v5, "ex":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    goto :goto_5

    .local v5, "ex":Ljava/io/IOException;
    :goto_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    :goto_5
    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8l;->A3P(Ljava/lang/Throwable;)V

    .line 19040
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v3
    .end local v5    # "ex":Ljava/io/IOException;
    :cond_8
    :goto_6
    monitor-exit v9

    .line 19041
    return-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 19042
    :catchall_0
    move-exception v2

    .line 19043
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3
    if-eqz v8, :cond_9

    .line 19044
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 19045
    :cond_9
    if-eqz v5, :cond_a

    .line 19046
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 19047
    :cond_a
    if-eqz v3, :cond_b

    .line 19048
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 19049
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3
    :catch_4
    move-exception v1

    .line 19050
    .local v8, "ex":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8l;->A3P(Ljava/lang/Throwable;)V

    .line 19051
    .end local p0    # "debugLogEvents":Lorg/json/JSONArray;
    .end local v1    # "attempt":I
    .end local v0
    :cond_b
    :goto_7
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 19052
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v3
    :catchall_1
    move-exception v0

    .end local v4
    .end local v9
    .end local v3
    .restart local p0    # "debugLogEvents":Lorg/json/JSONArray;
    .restart local v1    # "attempt":I
    .restart local v0
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/8q;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19053
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 19054
    .local p0, "reportObject":Lorg/json/JSONObject;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19055
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8q;->A03()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x196

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19056
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8q;->A01()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A02(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x192

    const/4 v1, 0x4

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19057
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8q;->A00()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A02(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x163

    const/16 v1, 0xc

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19058
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8q;->A02()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x159

    const/16 v1, 0xa

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19059
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8q;->A04()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8q;->A04()Ljava/util/Map;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 19060
    :goto_0
    const/16 v2, 0x10b

    const/4 v1, 0x4

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19061
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19062
    return-object v4

    .line 19063
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x19a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8o;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        0x5ft
        0x53t
        0x37t
        0x1t
        0x1ct
        0x3t
        0x30t
        0x1ct
        0x6t
        0x1dt
        0x7t
        0x16t
        0x1t
        0x49t
        0x53t
        0x3ft
        0x1dt
        0x12t
        0x5bt
        0x8t
        0x5ct
        0x18t
        0x19t
        0x10t
        0x19t
        0x8t
        0x19t
        0x5ct
        0x18t
        0x19t
        0x1et
        0x9t
        0x1bt
        0x5ct
        0x19t
        0xat
        0x19t
        0x12t
        0x8t
        0xft
        0x5ct
        0x1at
        0x15t
        0x10t
        0x19t
        0x52t
        0xet
        0x2ct
        0x23t
        0x6at
        0x39t
        0x6dt
        0x29t
        0x28t
        0x21t
        0x28t
        0x39t
        0x28t
        0x6dt
        0x2bt
        0x24t
        0x21t
        0x28t
        0x6ct
        0x77t
        0x76t
        0x71t
        0x66t
        0x74t
        0x6ct
        0x63t
        0x61t
        0x76t
        0x75t
        0x2at
        0x19t
        0xat
        0x1t
        0x1bt
        0x2ct
        0x0t
        0x1at
        0x1t
        0x1bt
        0x29t
        0x2dt
        0x2et
        0x1at
        0xbt
        0x6t
        0xat
        0x1t
        0xct
        0xat
        0x21t
        0xat
        0x1bt
        0x18t
        0x0t
        0x1dt
        0x4t
        0x1ft
        0x3at
        0x3dt
        0x28t
        0x2at
        0x6ft
        0x2bt
        0x2at
        0x2dt
        0x3at
        0x28t
        0x6ft
        0x2at
        0x39t
        0x2at
        0x21t
        0x3bt
        0x3ct
        0x6ft
        0x29t
        0x26t
        0x23t
        0x2at
        0x61t
        0x45t
        0x9t
        0x26t
        0x23t
        0x2at
        0x6ft
        0x3ct
        0x26t
        0x35t
        0x2at
        0x75t
        0x6ft
        0x6ft
        0x57t
        0x55t
        0x4ct
        0x4ct
        0x59t
        0x58t
        0x1ct
        0x59t
        0x4at
        0x59t
        0x52t
        0x48t
        0x4ft
        0x12t
        0x28t
        0x10t
        0x12t
        0xbt
        0xbt
        0x12t
        0x15t
        0x1ct
        0x5bt
        0x18t
        0x14t
        0x9t
        0x9t
        0xet
        0xbt
        0xft
        0x1et
        0x1ft
        0x5bt
        0x1ft
        0x1et
        0x19t
        0xet
        0x1ct
        0x5bt
        0x1et
        0xdt
        0x1et
        0x15t
        0xft
        0x5bt
        0x17t
        0x12t
        0x15t
        0x1et
        0x55t
        0x62t
        0x44t
        0x4ft
        0x5ft
        0x58t
        0x51t
        0x16t
        0x42t
        0x59t
        0x16t
        0x43t
        0x46t
        0x52t
        0x57t
        0x42t
        0x53t
        0x16t
        0x43t
        0x58t
        0x44t
        0x53t
        0x55t
        0x59t
        0x44t
        0x52t
        0x53t
        0x52t
        0x16t
        0x52t
        0x53t
        0x54t
        0x43t
        0x51t
        0x7at
        0x59t
        0x51t
        0x73t
        0x40t
        0x53t
        0x58t
        0x42t
        0x18t
        0x16t
        0x57t
        0x52t
        0x52t
        0x5ft
        0x58t
        0x51t
        0x16t
        0x42t
        0x59t
        0x16t
        0x79t
        0x58t
        0x51t
        0x59t
        0x5ft
        0x58t
        0x51t
        0x73t
        0x40t
        0x53t
        0x58t
        0x42t
        0x18t
        0x3at
        0x11t
        0x0t
        0x8t
        0x15t
        0x6t
        0x13t
        0x13t
        0x2t
        0xat
        0x17t
        0x13t
        0x58t
        0x5dt
        0x48t
        0x5dt
        0x7ft
        0x7et
        0x44t
        0x77t
        0x74t
        0x7ct
        0x7ct
        0x72t
        0x75t
        0x7ct
        0x2bt
        0x2at
        0x2dt
        0x3at
        0x28t
        0x23t
        0x20t
        0x28t
        0x3ct
        0x5bt
        0x54t
        0x53t
        0x54t
        0x4et
        0x55t
        0x58t
        0x59t
        0x1dt
        0x58t
        0x4bt
        0x58t
        0x53t
        0x49t
        0x1dt
        0x4et
        0x55t
        0x52t
        0x48t
        0x51t
        0x59t
        0x1dt
        0x53t
        0x52t
        0x49t
        0x1dt
        0x5ft
        0x58t
        0x1dt
        0x48t
        0x4dt
        0x59t
        0x5ct
        0x49t
        0x58t
        0x59t
        0x1dt
        0x49t
        0x52t
        0x1dt
        0x72t
        0x53t
        0x5at
        0x52t
        0x54t
        0x53t
        0x5at
        0x78t
        0x4bt
        0x58t
        0x53t
        0x49t
        0x13t
        0x6bt
        0x66t
        0x7et
        0x68t
        0x7et
        0x7et
        0x64t
        0x62t
        0x63t
        0x52t
        0x64t
        0x69t
        0x48t
        0x5et
        0x48t
        0x48t
        0x52t
        0x54t
        0x55t
        0x64t
        0x4ft
        0x52t
        0x56t
        0x5et
        0x69t
        0x71t
        0x73t
        0x6at
        0x6at
        0x7ft
        0x7et
        0x5ft
        0x6ct
        0x7ft
        0x74t
        0x6et
        0x69t
        0x3at
        0x27t
        0x3at
        0x31t
        0x37t
        0x20t
        0x36t
        0x3bt
        0x32t
        0x27t
        0x4bt
        0x4dt
        0x5at
        0x4ct
        0x41t
        0x48t
        0x5dt
        0x67t
        0x5bt
        0x57t
        0x5ct
        0x5dt
        0x77t
        0x6at
        0x6et
        0x66t
        0x55t
        0x58t
        0x51t
        0x44t
    .end array-data
.end method

.method public static A07(Landroid/content/Context;)V
    .locals 5

    .line 19064
    sget-object v4, Lcom/facebook/ads/redexgen/X/8o;->A03:Ljava/lang/Object;

    monitor-enter v4

    .line 19065
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19066
    .local v4, "debugFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19067
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 19068
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/8o;->A09(Landroid/content/Context;I)V

    .line 19069
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 19070
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 19071
    .end local v4    # "debugFile":Ljava/io/File;
    monitor-exit v4

    .line 19072
    return-void

    .line 19073
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A08(Landroid/content/Context;)V
    .locals 5

    .line 19074
    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 19075
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 19076
    .local p0, "sharedPreferences":Landroid/content/SharedPreferences;
    const/16 v2, 0x4b

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 19077
    .local v2, "eventCount":I
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/8o;->A09(Landroid/content/Context;I)V

    .line 19078
    return-void
.end method

.method public static A09(Landroid/content/Context;I)V
    .locals 5

    .line 19079
    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 19080
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19081
    .local p0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 19082
    if-gez p1, :cond_0

    .line 19083
    :goto_0
    const/16 v2, 0x4b

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 19084
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19085
    return-void

    .line 19086
    :cond_0
    move v4, p1

    goto :goto_0
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;)V
    .locals 2

    .line 19087
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19088
    .local p0, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19089
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object p1

    const/16 p0, 0x2f

    const/16 v1, 0x12

    const/16 v0, 0x31

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19090
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A3P(Ljava/lang/Throwable;)V

    .line 19091
    :cond_0
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/8q;Lcom/facebook/ads/redexgen/X/8J;)V
    .locals 8

    .line 19092
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 19093
    sget-object v7, Lcom/facebook/ads/redexgen/X/8o;->A03:Ljava/lang/Object;

    monitor-enter v7

    .line 19094
    :try_start_0
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 19095
    .local p1, "processSpecificName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19096
    .local v7, "debugFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19097
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/JF;->A07(Landroid/content/Context;)I

    move-result v0

    .line 19098
    .local v2, "debugLogFileSizeLimit":I
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 19099
    .local v1, "fileSize":J
    if-lez v0, :cond_1

    int-to-long v5, v0

    cmp-long v0, v1, v5

    if-lez v0, :cond_1

    .line 19100
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 19101
    .local v0, "deleted":Z
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A09(Landroid/content/Context;I)V

    .line 19102
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 19103
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 19104
    if-nez v3, :cond_0

    goto :goto_0

    .line 19105
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A02()Lcom/facebook/ads/redexgen/X/8M;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8M;->A4R()Ljava/util/Map;

    move-result-object v6

    .line 19106
    .local v4, "shortDebugEventEnvData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v4, 0x17f

    const/4 v3, 0x7

    const/16 v0, 0x3e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x10f

    const/16 v3, 0xa

    const/16 v0, 0x67

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19107
    const/16 v4, 0x186

    const/16 v3, 0xc

    const/16 v0, 0x44

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x961

    .line 19108
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 19109
    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x66

    const/16 v3, 0x24

    const/16 v0, 0x33

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/16 v1, 0xf

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A00:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19111
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19112
    invoke-static {v0, p1, v6}, Lcom/facebook/ads/redexgen/X/8o;->A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8J;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/8q;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19113
    :try_start_1
    monitor-exit v7

    return-void
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19114
    :goto_0
    :try_start_2
    const/16 v2, 0x55

    const/16 v1, 0x11

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/16 v1, 0x1f

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19115
    .end local v2    # "debugLogFileSizeLimit":I
    .end local v1    # "fileSize":J
    .end local v0    # "deleted":Z
    .end local v4    # "shortDebugEventEnvData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8o;->A05(Lcom/facebook/ads/redexgen/X/8q;)Lorg/json/JSONObject;

    move-result-object v1

    .line 19116
    .local v2, "debugLogJson":Lorg/json/JSONObject;
    const v0, 0x8000

    .line 19117
    invoke-virtual {p1, v4, v0}, Lcom/facebook/ads/redexgen/X/8J;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 19118
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19119
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 19120
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 19121
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8o;->A08(Landroid/content/Context;)V

    goto :goto_1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19122
    :catch_0
    move-exception v1

    .line 19123
    .local p1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8l;->A3P(Ljava/lang/Throwable;)V

    .line 19124
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v7

    goto :goto_2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 19125
    :cond_2
    :goto_2
    return-void
.end method

.method public static A0C(Ljava/lang/String;)V
    .locals 1

    .line 19126
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19127
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19128
    return-void
.end method

.method public static A0D(Ljava/lang/String;)V
    .locals 4

    .line 19129
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 19130
    .local p0, "attempt":Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 19131
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19132
    sget-object v3, Lcom/facebook/ads/redexgen/X/8o;->A04:Ljava/lang/String;

    const/16 v2, 0xbd

    const/16 v1, 0x42

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19133
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19134
    :goto_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19135
    return-void

    .line 19136
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static A0E(Ljava/lang/String;I)V
    .locals 4

    .line 19137
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 19138
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const-string v1, "rEqe91lv7lznGuMpeMm8YlOivWfc8wjs"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 19139
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19140
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19141
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 19142
    :cond_2
    const/16 v2, 0x122

    const/16 v1, 0x35

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/8J;)Z
    .locals 3

    .line 19143
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JF;->A0O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19144
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8o;->A0H(Lcom/facebook/ads/redexgen/X/8J;)Z

    move-result v0

    return v0

    .line 19145
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8o;->A0G(Lcom/facebook/ads/redexgen/X/8J;)Z

    move-result p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const-string v1, "3ABJ1YchwKShiC4YrWnTlA0erUDCQvCN"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "wuaZskSkctYpKQ1vHIoiu3NDqUJM9HRQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return p0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/8J;)Z
    .locals 14

    .line 19146
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 19147
    .local v4, "debugLogEvents":Lorg/json/JSONArray;
    sget-object v13, Lcom/facebook/ads/redexgen/X/8o;->A03:Ljava/lang/Object;

    monitor-enter v13

    .line 19148
    const/4 v11, 0x0

    .line 19149
    .local v13, "skippedEvents":I
    const/4 v6, 0x0

    .line 19150
    .local v11, "inputStream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 19151
    .local v6, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v12, 0x0

    .line 19152
    .local v7, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 19153
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 19154
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19155
    .local v3, "debugFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19156
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 19157
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/8J;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 19158
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v7, v0

    .line 19159
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v12, v0

    .line 19160
    :cond_0
    :goto_0
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_1

    goto :goto_3

    .local v2, "line":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const-string v1, "N2MSSJLvxCxpns9Z"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 19161
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19162
    .local p0, "debugLog":Lorg/json/JSONObject;
    const/16 v2, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 19163
    .local v1, "eventId":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19164
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19165
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 19166
    .local v0, "attempt":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 19167
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JF;->A02(Landroid/content/Context;)I

    move-result v2

    .line 19168
    .local v0, "retryLimit":I
    const/4 v0, -0x1

    if-le v2, v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v2, -0x1

    if-le v1, v0, :cond_3

    .line 19169
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/8o;->A0C(Ljava/lang/String;)V

    goto :goto_2

    .line 19170
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 19171
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 19172
    :cond_3
    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19173
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 19174
    :cond_4
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19175
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 19176
    :cond_5
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19177
    .local p0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 19178
    .local v5, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v2, :cond_6

    .line 19179
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 19180
    .local v0, "debugLog":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19181
    .end local v0    # "debugLog":Lorg/json/JSONObject;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 19182
    .end local v1    # "i":I
    :cond_6
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 19183
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 19184
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/8J;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 19185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 19186
    .end local p0    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "length":I
    .end local v2    # "line":Ljava/lang/String;
    :cond_7
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8o;->A00(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/8o;->A09(Landroid/content/Context;I)V

    .line 19187
    if-lez v11, :cond_8

    .line 19188
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v10

    const/16 v2, 0x10f

    const/16 v1, 0xa

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v9

    sget v8, Lcom/facebook/ads/redexgen/X/8m;->A2I:I

    const/16 v2, 0x8a

    const/16 v1, 0xf

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16f

    const/16 v1, 0x10

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19189
    invoke-interface {v10, v9, v8, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 19190
    :cond_8
    if-eqz v12, :cond_9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19191
    :try_start_3
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 19192
    :cond_9
    if-eqz v7, :cond_a

    .line 19193
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 19194
    :cond_a
    if-eqz v6, :cond_b

    .line 19195
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 19196
    :cond_b
    if-eqz v5, :cond_c

    .line 19197
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19198
    :catch_0
    move-exception v1

    .line 19199
    .local p0, "ex":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8l;->A3P(Ljava/lang/Throwable;)V

    .line 19200
    :cond_c
    :goto_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 19201
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v13

    .line 19202
    const/4 v0, 0x1

    return v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 19203
    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    .line 19204
    .local v5, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8l;->A3P(Ljava/lang/Throwable;)V

    .line 19205
    if-eqz v12, :cond_d
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 19206
    :try_start_6
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 19207
    :cond_d
    if-eqz v7, :cond_e

    .line 19208
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 19209
    :cond_e
    if-eqz v6, :cond_f

    .line 19210
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 19211
    :cond_f
    if-eqz v5, :cond_10

    .line 19212
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 19213
    :catch_3
    move-exception v1

    .line 19214
    .restart local p0    # "ex":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8l;->A3P(Ljava/lang/Throwable;)V

    .line 19215
    :cond_10
    :goto_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 19216
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v13

    .line 19217
    const/4 v0, 0x0

    return v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 19218
    .end local v3    # "debugFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    .line 19219
    .end local v13    # "skippedEvents":I
    .local v5, "skippedEvents":I
    if-eqz v12, :cond_11

    .line 19220
    :try_start_8
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 19221
    :cond_11
    if-eqz v7, :cond_12

    .line 19222
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 19223
    :cond_12
    if-eqz v6, :cond_13

    .line 19224
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 19225
    :cond_13
    if-eqz v5, :cond_14

    .line 19226
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 19227
    .restart local v11    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v12
    .restart local v5    # "skippedEvents":I
    :catch_4
    move-exception v1

    .line 19228
    .restart local p0    # "ex":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8l;->A3P(Ljava/lang/Throwable;)V

    .line 19229
    :cond_14
    :goto_8
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 19230
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 19231
    .end local v4    # "debugLogEvents":Lorg/json/JSONArray;
    .end local v0
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 19232
    .end local v11    # "inputStream":Ljava/io/FileInputStream;
    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v7    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v12
    .end local v5    # "skippedEvents":I
    :catchall_1
    move-exception v0

    .end local v11
    .end local v6
    .end local v7
    .end local v12
    .end local v5
    .restart local v4    # "debugLogEvents":Lorg/json/JSONArray;
    .restart local v0    # "debugLog":Lorg/json/JSONObject;
    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/8J;)Z
    .locals 17

    .line 19233
    sget-object v16, Lcom/facebook/ads/redexgen/X/8o;->A03:Ljava/lang/Object;

    monitor-enter v16

    .line 19234
    const/4 v14, 0x0

    .line 19235
    .local v14, "skippedEvents":I
    const/4 v8, 0x0

    .line 19236
    .local v8, "inputStream":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 19237
    .local v10, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v15, 0x0

    .line 19238
    .local v15, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 19239
    .local v5, "debugFileOutputStream":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 19240
    .local v6, "tempFileInputStream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 19241
    .local v9, "tempFileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    move-object/from16 v7, p0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 19242
    invoke-static {v0, v7}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 19243
    .local v1, "processSpecificDebugFileName":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8J;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19244
    .local v0, "debugFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xff

    const/4 v1, 0x5

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19245
    .local v0, "tempFileName":Ljava/lang/String;
    invoke-static {v7, v3}, Lcom/facebook/ads/redexgen/X/8o;->A0A(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;)V

    .line 19246
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19247
    const v0, 0x8000

    invoke-virtual {v7, v3, v0}, Lcom/facebook/ads/redexgen/X/8J;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 19248
    invoke-virtual {v7, v11}, Lcom/facebook/ads/redexgen/X/8J;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 19249
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v10, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 19250
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v15, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 19251
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v11, "line":Ljava/lang/String;
    if-eqz v0, :cond_6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 19252
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19253
    .local v7, "debugLog":Lorg/json/JSONObject;
    const/16 v4, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 19254
    .local v11, "eventId":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19255
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .local v0, "inputStream":Ljava/io/FileInputStream;
    if-eqz v0, :cond_3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 19256
    :try_start_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 19257
    .local v2, "attempt":Ljava/lang/Integer;
    if-eqz v0, :cond_1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 19258
    .restart local v1    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "eventId":Ljava/lang/String;
    :catch_0
    move-exception v12

    goto/16 :goto_2

    .line 19259
    .restart local v7    # "debugLog":Lorg/json/JSONObject;
    .restart local v2    # "attempt":Ljava/lang/Integer;
    .restart local v11    # "eventId":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 19260
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/JF;->A02(Landroid/content/Context;)I

    move-result v4

    .line 19261
    .local v4, "retryLimit":I
    const/4 v0, -0x1

    .end local v4    # "retryLimit":I
    .local v10, "retryLimit":I
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    if-le v4, v0, :cond_2
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    add-int/lit8 v0, v4, -0x1

    if-le v1, v0, :cond_2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 19262
    :try_start_9
    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/8o;->A0C(Ljava/lang/String;)V

    .line 19263
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 19264
    .end local v15
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_2
    const/16 v4, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 19266
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "eventId":Ljava/lang/String;
    :catch_1
    move-exception v12

    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const-string v1, "PaJ69Xgk2FO5ZkKDoxQsNWOe25Zt4Hgu"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "retryLimit":I
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "eventId":Ljava/lang/String;
    :catch_2
    move-exception v12

    .end local v10    # "retryLimit":I
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 19267
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "debugLog":Lorg/json/JSONObject;
    .restart local v10    # "retryLimit":I
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v11    # "eventId":Ljava/lang/String;
    .end local v10    # "retryLimit":I
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_3
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_0
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 19268
    .end local v7    # "debugLog":Lorg/json/JSONObject;
    .end local v11    # "eventId":Ljava/lang/String;
    :catch_3
    move-exception v12

    goto :goto_2

    .end local v7
    .end local v11
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "retryLimit":I
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v12

    sget-object v1, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const-string v1, "CXUo6jkI5Gt7UUmN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 19269
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "retryLimit":I
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .local v7, "e":Lorg/json/JSONException;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :goto_2
    :try_start_b
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19270
    sget-object v4, Lcom/facebook/ads/redexgen/X/8o;->A04:Ljava/lang/String;

    const/16 v2, 0x99

    const/16 v1, 0x24

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 19271
    :catch_5
    move-exception v1

    goto/16 :goto_6

    .line 19272
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v10
    .end local v2    # "attempt":Ljava/lang/Integer;
    .end local v1    # "processSpecificDebugFileName":Ljava/lang/String;
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v0
    .end local v11
    .end local v11
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_8

    .line 19273
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_6

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 19274
    .end local v7
    .end local v1
    .end local v0
    .end local v0
    .end local v11
    .end local v11
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v10, "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v2

    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_8

    .line 19275
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_6

    .line 19276
    .end local v0
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_6
    :try_start_c
    invoke-virtual {v7, v3}, Lcom/facebook/ads/redexgen/X/8J;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 19277
    const/4 v0, 0x0

    invoke-virtual {v7, v11, v0}, Lcom/facebook/ads/redexgen/X/8J;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 19278
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 19279
    .local v7, "buffer":[B
    :goto_3
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v10, "length":I
    if-lez v1, :cond_7

    .line 19280
    const/4 v0, 0x0

    invoke-virtual {v5, v2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 19281
    :cond_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 19282
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 19283
    invoke-static {v7, v3}, Lcom/facebook/ads/redexgen/X/8o;->A0A(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;)V

    goto :goto_4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 19284
    .end local v7    # "buffer":[B
    .end local v10    # "length":I
    .end local v1
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v0
    .end local v11
    :catchall_2
    move-exception v2

    goto/16 :goto_8

    .line 19285
    :catch_8
    move-exception v1

    goto/16 :goto_6

    .line 19286
    .end local v0
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .local v10, "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v2

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_8

    .line 19287
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v1

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_6

    .line 19288
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v2

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_8

    .line 19289
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_a
    move-exception v1

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 19290
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_5
    move-exception v2

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 19291
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v1

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 19292
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v1    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    :cond_8
    :goto_4
    :try_start_d
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/8o;->A00(Landroid/content/Context;)I

    move-result v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/8o;->A09(Landroid/content/Context;I)V

    .line 19293
    if-lez v14, :cond_9

    .line 19294
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v12

    const/16 v2, 0x10f

    const/16 v1, 0xa

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v11

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A2I:I

    const/16 v2, 0x8a

    const/16 v1, 0xf

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v3

    .end local v1    # "processSpecificDebugFileName":Ljava/lang/String;
    .local v0, "processSpecificDebugFileName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .end local v0    # "processSpecificDebugFileName":Ljava/lang/String;
    .local v4, "debugFile":Ljava/io/File;
    const/16 v2, 0x16f

    const/16 v1, 0x10

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19295
    invoke-interface {v12, v11, v4, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 19296
    .end local v1
    .end local v0
    .restart local v0    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v4    # "debugFile":Ljava/io/File;
    :cond_9
    if-eqz v15, :cond_a
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 19297
    :try_start_e
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 19298
    :cond_a
    if-eqz v10, :cond_b

    .line 19299
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 19300
    :cond_b
    if-eqz v8, :cond_c

    .line 19301
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 19302
    :cond_c
    if-eqz v5, :cond_d

    .line 19303
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 19304
    :cond_d
    if-eqz v6, :cond_e

    .line 19305
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 19306
    :cond_e
    if-eqz v9, :cond_f

    .line 19307
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 19308
    :catch_c
    move-exception v1

    .line 19309
    .local v7, "ex":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8l;->A3P(Ljava/lang/Throwable;)V

    .line 19310
    :cond_f
    :goto_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 19311
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v16

    .line 19312
    const/4 v0, 0x1

    return v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 19313
    :catch_d
    move-exception v1

    .line 19314
    .local v7, "e":Ljava/io/IOException;
    :goto_6
    :try_start_10
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8l;->A3P(Ljava/lang/Throwable;)V

    .line 19315
    if-eqz v15, :cond_10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 19316
    :try_start_11
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 19317
    :cond_10
    if-eqz v10, :cond_11

    .line 19318
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 19319
    :cond_11
    if-eqz v8, :cond_12

    .line 19320
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 19321
    :cond_12
    if-eqz v5, :cond_13

    .line 19322
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 19323
    :cond_13
    if-eqz v6, :cond_14

    .line 19324
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 19325
    :cond_14
    if-eqz v9, :cond_15

    .line 19326
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto :goto_7
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 19327
    :catch_e
    move-exception v1

    .line 19328
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_12
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8l;->A3P(Ljava/lang/Throwable;)V

    .line 19329
    :cond_15
    :goto_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 19330
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v16

    .line 19331
    const/4 v0, 0x0

    return v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 19332
    .end local v0    # "processSpecificDebugFileName":Ljava/lang/String;
    .end local v0
    .end local v4    # "debugFile":Ljava/io/File;
    :catchall_6
    move-exception v2

    goto :goto_8

    .end local v7    # "e":Ljava/io/IOException;
    .end local v2
    .end local v1
    .end local v0
    .end local v0
    .end local v11
    .end local v11
    :catchall_7
    move-exception v2

    .line 19333
    .end local v7
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .local v0, "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "debugFile":Ljava/io/File;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :goto_8
    if-eqz v15, :cond_16

    .line 19334
    :try_start_13
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 19335
    :cond_16
    if-eqz v10, :cond_17

    .line 19336
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 19337
    :cond_17
    if-eqz v8, :cond_18

    .line 19338
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 19339
    :cond_18
    if-eqz v5, :cond_19

    .line 19340
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 19341
    :cond_19
    if-eqz v6, :cond_1a

    .line 19342
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 19343
    :cond_1a
    if-eqz v9, :cond_1b

    .line 19344
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto :goto_9
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 19345
    .restart local v14    # "skippedEvents":I
    .restart local v5    # "debugFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "tempFileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "tempFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "debugFile":Ljava/io/File;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_f
    move-exception v1

    .line 19346
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8l;->A3P(Ljava/lang/Throwable;)V

    .line 19347
    :cond_1b
    :goto_9
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 19348
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 19349
    .end local v2
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 19350
    .end local v14    # "skippedEvents":I
    .end local v5    # "debugFileOutputStream":Ljava/io/FileOutputStream;
    .end local v6    # "tempFileInputStream":Ljava/io/FileInputStream;
    .end local v9    # "tempFileOutputStream":Ljava/io/FileOutputStream;
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "debugFile":Ljava/io/File;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_8
    move-exception v0

    .end local v14
    .end local v5
    .end local v6
    .end local v9
    .end local v0
    .end local v4
    .end local v3
    .restart local v2    # "attempt":Ljava/lang/Integer;
    :try_start_15
    monitor-exit v16
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    throw v0
.end method

.method public static A0I(Ljava/lang/String;)Z
    .locals 1

    .line 19351
    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A06:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A05:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
