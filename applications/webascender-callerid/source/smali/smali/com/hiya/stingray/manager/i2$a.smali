.class public final enum Lcom/hiya/stingray/manager/i2$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/manager/i2$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/manager/i2$a;

.field public static final enum KEYPAD:Lcom/hiya/stingray/manager/i2$a;

.field public static final enum LOOKUP:Lcom/hiya/stingray/manager/i2$a;

.field public static final enum NEWSLETTER:Lcom/hiya/stingray/manager/i2$a;

.field public static final enum PREMIUM_INFO:Lcom/hiya/stingray/manager/i2$a;

.field public static final enum UPSELL:Lcom/hiya/stingray/manager/i2$a;

.field public static final enum UPSELL_PROMO:Lcom/hiya/stingray/manager/i2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/hiya/stingray/manager/i2$a;

    new-instance v1, Lcom/hiya/stingray/manager/i2$a;

    const-string v2, "LOOKUP"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/i2$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/i2$a;->LOOKUP:Lcom/hiya/stingray/manager/i2$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/i2$a;

    const-string v2, "PREMIUM_INFO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/i2$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/i2$a;->PREMIUM_INFO:Lcom/hiya/stingray/manager/i2$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/i2$a;

    const-string v2, "KEYPAD"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/i2$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/i2$a;->KEYPAD:Lcom/hiya/stingray/manager/i2$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/i2$a;

    const-string v2, "UPSELL"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/i2$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/i2$a;->UPSELL:Lcom/hiya/stingray/manager/i2$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/i2$a;

    const-string v2, "UPSELL_PROMO"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/i2$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/i2$a;->UPSELL_PROMO:Lcom/hiya/stingray/manager/i2$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/i2$a;

    const-string v2, "NEWSLETTER"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/i2$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/i2$a;->NEWSLETTER:Lcom/hiya/stingray/manager/i2$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/manager/i2$a;->$VALUES:[Lcom/hiya/stingray/manager/i2$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/manager/i2$a;
    .locals 1

    const-class v0, Lcom/hiya/stingray/manager/i2$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/manager/i2$a;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/manager/i2$a;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/manager/i2$a;->$VALUES:[Lcom/hiya/stingray/manager/i2$a;

    invoke-virtual {v0}, [Lcom/hiya/stingray/manager/i2$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/manager/i2$a;

    return-object v0
.end method


# virtual methods
.method public final getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1100d1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f1100d0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Locale.ROOT"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "Uri.parse(\"${context.get\u2026LowerCase(Locale.ROOT)}\")"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
