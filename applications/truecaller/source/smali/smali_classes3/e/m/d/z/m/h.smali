.class public final Le/m/d/z/m/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Le/m/d/z/i/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/m/d/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/b<",
            "Le/m/a/b/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Le/m/a/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/b/f<",
            "Lcom/google/firebase/perf/v1/PerfMetric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object v0

    sput-object v0, Le/m/d/z/m/h;->d:Le/m/d/z/i/a;

    return-void
.end method

.method public constructor <init>(Le/m/d/v/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/v/b<",
            "Le/m/a/b/g;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/m/d/z/m/h;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Le/m/d/z/m/h;->b:Le/m/d/v/b;

    return-void
.end method
