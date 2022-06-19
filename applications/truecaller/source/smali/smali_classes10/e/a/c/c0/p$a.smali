.class public final Le/a/c/c0/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/c/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c0/p;->Y()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/c/a/c/a<",
        "Ljava/lang/String;",
        "Lcom/truecaller/insights/utils/HideTrxTempState;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/a/c/c0/p$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/c/c0/p$a;

    invoke-direct {v0}, Le/a/c/c0/p$a;-><init>()V

    sput-object v0, Le/a/c/c0/p$a;->a:Le/a/c/c0/p$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/truecaller/insights/utils/HideTrxTempState;->DEFAULT:Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/truecaller/insights/utils/HideTrxTempState;->valueOf(Ljava/lang/String;)Lcom/truecaller/insights/utils/HideTrxTempState;

    move-result-object p1

    return-object p1
.end method
