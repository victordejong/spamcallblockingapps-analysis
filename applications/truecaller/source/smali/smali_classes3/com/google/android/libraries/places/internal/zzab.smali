.class public final Lcom/google/android/libraries/places/internal/zzab;
.super Le/d/e/x/h;
.source "SourceFile"


# instance fields
.field private final synthetic zza:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzx;ILjava/lang/String;Lorg/json/JSONObject;Le/d/e/q$b;Le/d/e/q$a;Ljava/util/Map;)V
    .locals 6

    .line 1
    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzab;->zza:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Le/d/e/x/h;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Le/d/e/q$b;Le/d/e/q$a;)V

    return-void
.end method


# virtual methods
.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzab;->zza:Ljava/util/Map;

    return-object v0
.end method
