.class public final enum Lcom/hiya/stingray/t/h1/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/h1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/h1/d$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/t/h1/d$a;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/t/h1/d$a;

.field public static final enum AD:Lcom/hiya/stingray/t/h1/d$a;

.field public static final enum AFFILIATE:Lcom/hiya/stingray/t/h1/d$a;

.field public static final CREATOR:Lcom/hiya/stingray/t/h1/d$a$a;

.field public static final enum ORGANIC:Lcom/hiya/stingray/t/h1/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hiya/stingray/t/h1/d$a;

    new-instance v1, Lcom/hiya/stingray/t/h1/d$a;

    const-string v2, "AD"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/h1/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/h1/d$a;->AD:Lcom/hiya/stingray/t/h1/d$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/h1/d$a;

    const-string v2, "AFFILIATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/h1/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/h1/d$a;->AFFILIATE:Lcom/hiya/stingray/t/h1/d$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/h1/d$a;

    const-string v2, "ORGANIC"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/h1/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/h1/d$a;->ORGANIC:Lcom/hiya/stingray/t/h1/d$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/t/h1/d$a;->$VALUES:[Lcom/hiya/stingray/t/h1/d$a;

    new-instance v0, Lcom/hiya/stingray/t/h1/d$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/t/h1/d$a$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/t/h1/d$a;->CREATOR:Lcom/hiya/stingray/t/h1/d$a$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/t/h1/d$a;
    .locals 1

    const-class v0, Lcom/hiya/stingray/t/h1/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/t/h1/d$a;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/t/h1/d$a;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/t/h1/d$a;->$VALUES:[Lcom/hiya/stingray/t/h1/d$a;

    invoke-virtual {v0}, [Lcom/hiya/stingray/t/h1/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/t/h1/d$a;

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
