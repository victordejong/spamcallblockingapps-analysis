.class public final synthetic Le/m/d/k/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final synthetic a:Le/m/d/k/a/c/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/k/a/c/a;

    invoke-direct {v0}, Le/m/d/k/a/c/a;-><init>()V

    sput-object v0, Le/m/d/k/a/c/a;->a:Le/m/d/k/a/c/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;->lambda$getComponents$0(Le/m/d/m/p;)Le/m/d/k/a/a;

    move-result-object p1

    return-object p1
.end method
