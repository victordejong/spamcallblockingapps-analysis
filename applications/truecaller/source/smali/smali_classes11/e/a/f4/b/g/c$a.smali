.class public final Le/a/f4/b/g/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f4/b/g/c;-><init>(Le/a/b0/e/l;Le/a/f4/b/i/a;Le/a/b0/e/r/a;Landroid/telephony/TelephonyManager;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/f4/b/g/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/f4/b/g/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/f4/b/g/c$a;

    invoke-direct {v0}, Le/a/f4/b/g/c$a;-><init>()V

    sput-object v0, Le/a/f4/b/g/c$a;->b:Le/a/f4/b/g/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    new-instance v0, Le/a/f4/b/g/a;

    invoke-direct {v0}, Le/a/f4/b/g/a;-><init>()V

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0, v1}, Le/a/f4/b/g/a;->c(Ljava/util/Map;)V

    .line 3
    invoke-static {}, Lcom/truecaller/common/network/KnownDomain;->values()[Lcom/truecaller/common/network/KnownDomain;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 4
    aget-object v4, v1, v3

    .line 5
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    invoke-static {}, Lcom/truecaller/common/network/util/KnownEndpoints;->values()[Lcom/truecaller/common/network/util/KnownEndpoints;

    move-result-object v6

    const/16 v7, 0x33

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_0

    .line 7
    aget-object v9, v6, v8

    .line 8
    invoke-virtual {v9}, Lcom/truecaller/common/network/util/KnownEndpoints;->getKey()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Le/a/f4/b/g/a$a;

    invoke-virtual {v9, v4}, Lcom/truecaller/common/network/util/KnownEndpoints;->getHost(Lcom/truecaller/common/network/KnownDomain;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Le/a/f4/b/g/a$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0}, Le/a/f4/b/g/a;->a()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/truecaller/common/network/KnownDomain;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
