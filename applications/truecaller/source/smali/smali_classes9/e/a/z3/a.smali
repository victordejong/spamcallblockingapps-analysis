.class public final Le/a/z3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Le/a/z3/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Le/a/z3/a;->a:Ljava/util/Map;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Le/a/z3/a;->a:Ljava/util/Map;

    sget-object v1, Ls1/c0/c;->b:Ls1/c0/c$a;

    invoke-virtual {v1}, Ls1/c0/c$a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
