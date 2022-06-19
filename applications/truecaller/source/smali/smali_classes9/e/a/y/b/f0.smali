.class public final Le/a/y/b/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    sget v1, Lcom/truecaller/flashsdk/R$string;->hey:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/truecaller/flashsdk/R$string;->whats_up:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/truecaller/flashsdk/R$string;->where_are_you:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Le/a/y/b/f0;->a:[I

    return-void
.end method
