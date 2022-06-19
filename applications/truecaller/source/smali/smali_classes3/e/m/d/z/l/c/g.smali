.class public final synthetic Le/m/d/z/l/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/v/b;


# static fields
.field public static final synthetic a:Le/m/d/z/l/c/g;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/z/l/c/g;

    invoke-direct {v0}, Le/m/d/z/l/c/g;-><init>()V

    sput-object v0, Le/m/d/z/l/c/g;->a:Le/m/d/z/l/c/g;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    sget v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->a:I

    new-instance v0, Le/m/d/z/l/c/j;

    invoke-direct {v0}, Le/m/d/z/l/c/j;-><init>()V

    return-object v0
.end method
