.class public final enum Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/calllog/SearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

.field public static final enum INITIAL:Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

.field public static final enum QUERY:Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;->INITIAL:Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

    new-instance v1, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

    const-string v3, "QUERY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;->QUERY:Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;->$VALUES:[Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;->$VALUES:[Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

    invoke-virtual {v0}, [Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

    return-object v0
.end method
