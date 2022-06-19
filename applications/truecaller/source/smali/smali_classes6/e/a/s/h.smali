.class public final Le/a/s/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Le/a/s/e;
    .locals 2

    .line 1
    sget-object v0, Le/a/r3/j/b;->b:Le/a/r3/j/b;

    .line 2
    const-class v0, Le/a/s/e$a;

    .line 3
    sget-object v1, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->CALLHERO_ASSISTANT:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    .line 4
    invoke-static {p1, v0, v1}, Le/a/r3/j/b;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)Le/a/r3/j/a;

    move-result-object p1

    check-cast p1, Le/a/s/e;

    return-object p1
.end method
