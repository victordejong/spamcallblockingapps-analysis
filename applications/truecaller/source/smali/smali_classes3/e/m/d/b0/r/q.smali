.class public Le/m/d/b0/r/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/d/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/b<",
            "Le/m/d/k/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/d/v/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/v/b<",
            "Le/m/d/k/a/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Le/m/d/b0/r/q;->b:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Le/m/d/b0/r/q;->a:Le/m/d/v/b;

    return-void
.end method
