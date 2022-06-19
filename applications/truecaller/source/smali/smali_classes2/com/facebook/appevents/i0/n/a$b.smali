.class public final enum Lcom/facebook/appevents/i0/n/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/i0/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/i0/n/a$b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;",
        "",
        "(Ljava/lang/String;I)V",
        "MANUAL",
        "INFERENCE",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/appevents/i0/n/a$b;

.field public static final enum b:Lcom/facebook/appevents/i0/n/a$b;

.field public static final synthetic c:[Lcom/facebook/appevents/i0/n/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/facebook/appevents/i0/n/a$b;

    const-string v1, "MANUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/i0/n/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/i0/n/a$b;->a:Lcom/facebook/appevents/i0/n/a$b;

    .line 2
    new-instance v1, Lcom/facebook/appevents/i0/n/a$b;

    const-string v3, "INFERENCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/appevents/i0/n/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/appevents/i0/n/a$b;->b:Lcom/facebook/appevents/i0/n/a$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/appevents/i0/n/a$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/facebook/appevents/i0/n/a$b;->c:[Lcom/facebook/appevents/i0/n/a$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/i0/n/a$b;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/appevents/i0/n/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/facebook/appevents/i0/n/a$b;

    return-object p0
.end method

.method public static values()[Lcom/facebook/appevents/i0/n/a$b;
    .locals 2

    sget-object v0, Lcom/facebook/appevents/i0/n/a$b;->c:[Lcom/facebook/appevents/i0/n/a$b;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/facebook/appevents/i0/n/a$b;

    return-object v0
.end method
