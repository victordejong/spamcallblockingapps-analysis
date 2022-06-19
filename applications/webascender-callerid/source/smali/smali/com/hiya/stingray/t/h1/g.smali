.class public final enum Lcom/hiya/stingray/t/h1/g;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/h1/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/t/h1/g;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/t/h1/g;

.field public static final CREATOR:Lcom/hiya/stingray/t/h1/g$a;

.field public static final enum DELIVERY:Lcom/hiya/stingray/t/h1/g;

.field public static final enum RESERVATION:Lcom/hiya/stingray/t/h1/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hiya/stingray/t/h1/g;

    new-instance v1, Lcom/hiya/stingray/t/h1/g;

    const-string v2, "RESERVATION"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/h1/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/h1/g;->RESERVATION:Lcom/hiya/stingray/t/h1/g;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/h1/g;

    const-string v2, "DELIVERY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/h1/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/h1/g;->DELIVERY:Lcom/hiya/stingray/t/h1/g;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/t/h1/g;->$VALUES:[Lcom/hiya/stingray/t/h1/g;

    new-instance v0, Lcom/hiya/stingray/t/h1/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/t/h1/g$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/t/h1/g;->CREATOR:Lcom/hiya/stingray/t/h1/g$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/t/h1/g;
    .locals 1

    const-class v0, Lcom/hiya/stingray/t/h1/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/t/h1/g;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/t/h1/g;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/t/h1/g;->$VALUES:[Lcom/hiya/stingray/t/h1/g;

    invoke-virtual {v0}, [Lcom/hiya/stingray/t/h1/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/t/h1/g;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
