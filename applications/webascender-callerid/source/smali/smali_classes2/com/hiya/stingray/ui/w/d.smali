.class public final synthetic Lcom/hiya/stingray/ui/w/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/hiya/stingray/ui/w/c$b;->values()[Lcom/hiya/stingray/ui/w/c$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/ui/w/d;->a:[I

    sget-object v1, Lcom/hiya/stingray/ui/w/c$b;->IDENTITY:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/w/c$b;->BUSINESS:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
