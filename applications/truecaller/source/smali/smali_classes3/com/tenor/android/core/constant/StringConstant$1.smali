.class public final Lcom/tenor/android/core/constant/StringConstant$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/constant/StringConstant$IJoinable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenor/android/core/constant/StringConstant;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tenor/android/core/constant/StringConstant$IJoinable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getJoinableString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tenor/android/core/constant/StringConstant$1;->getJoinableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getJoinableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
