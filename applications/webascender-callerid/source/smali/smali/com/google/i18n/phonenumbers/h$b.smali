.class public final enum Lcom/google/i18n/phonenumbers/h$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/i18n/phonenumbers/h$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/i18n/phonenumbers/h$b;

.field public static final enum E164:Lcom/google/i18n/phonenumbers/h$b;

.field public static final enum INTERNATIONAL:Lcom/google/i18n/phonenumbers/h$b;

.field public static final enum NATIONAL:Lcom/google/i18n/phonenumbers/h$b;

.field public static final enum RFC3966:Lcom/google/i18n/phonenumbers/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/i18n/phonenumbers/h$b;

    const-string v1, "E164"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/h$b;->E164:Lcom/google/i18n/phonenumbers/h$b;

    .line 2
    new-instance v1, Lcom/google/i18n/phonenumbers/h$b;

    const-string v3, "INTERNATIONAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/i18n/phonenumbers/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/i18n/phonenumbers/h$b;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/h$b;

    .line 3
    new-instance v3, Lcom/google/i18n/phonenumbers/h$b;

    const-string v5, "NATIONAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/i18n/phonenumbers/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/i18n/phonenumbers/h$b;->NATIONAL:Lcom/google/i18n/phonenumbers/h$b;

    .line 4
    new-instance v5, Lcom/google/i18n/phonenumbers/h$b;

    const-string v7, "RFC3966"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/i18n/phonenumbers/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/i18n/phonenumbers/h$b;->RFC3966:Lcom/google/i18n/phonenumbers/h$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/i18n/phonenumbers/h$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/google/i18n/phonenumbers/h$b;->$VALUES:[Lcom/google/i18n/phonenumbers/h$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$b;
    .locals 1

    .line 1
    const-class v0, Lcom/google/i18n/phonenumbers/h$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/i18n/phonenumbers/h$b;

    return-object p0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/h$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/i18n/phonenumbers/h$b;->$VALUES:[Lcom/google/i18n/phonenumbers/h$b;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/h$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/h$b;

    return-object v0
.end method
