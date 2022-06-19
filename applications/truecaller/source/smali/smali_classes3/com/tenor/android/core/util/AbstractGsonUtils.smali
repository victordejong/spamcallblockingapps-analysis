.class public abstract Lcom/tenor/android/core/util/AbstractGsonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sGson:Le/m/e/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Le/m/e/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/tenor/android/core/util/AbstractGsonUtils;->sGson:Le/m/e/k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/m/e/l;

    invoke-direct {v0}, Le/m/e/l;-><init>()V

    invoke-virtual {v0}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object v0

    sput-object v0, Lcom/tenor/android/core/util/AbstractGsonUtils;->sGson:Le/m/e/k;

    .line 3
    :cond_0
    sget-object v0, Lcom/tenor/android/core/util/AbstractGsonUtils;->sGson:Le/m/e/k;

    return-object v0
.end method
