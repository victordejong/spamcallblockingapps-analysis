.class public abstract Le/m/a/h/a/g/g/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/m/a/h/a/g/g/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Null splitInstallErrorCodeByModule"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v1, Le/m/a/h/a/g/g/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Le/m/a/h/a/g/g/c;-><init>(Ljava/lang/Integer;Ljava/util/Map;)V

    .line 6
    sput-object v1, Le/m/a/h/a/g/g/p;->a:Le/m/a/h/a/g/g/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Integer;
.end method

.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
