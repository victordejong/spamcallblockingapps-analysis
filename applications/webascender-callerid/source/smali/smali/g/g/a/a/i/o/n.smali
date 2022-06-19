.class public final Lg/g/a/a/i/o/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/o/n$a;
    }
.end annotation


# static fields
.field public static final Companion:Lg/g/a/a/i/o/n$a;

.field public static final PARTNER_DISPLAY_NAME:Ljava/lang/String; = "partnerDisplayName"

.field public static final PARTNER_ID:Ljava/lang/String; = "partnerId"


# instance fields
.field private partnerDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "partnerDisplayName"
    .end annotation
.end field

.field private partnerId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "partnerId"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/g/a/a/i/o/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/o/n$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lg/g/a/a/i/o/n;->Companion:Lg/g/a/a/i/o/n$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lg/g/a/a/i/o/n;->partnerDisplayName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lg/g/a/a/i/o/n;->partnerId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPartnerDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/n;->partnerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPartnerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/n;->partnerId:Ljava/lang/String;

    return-object v0
.end method

.method public final setPartnerDisplayName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/n;->partnerDisplayName:Ljava/lang/String;

    return-void
.end method

.method public final setPartnerId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/n;->partnerId:Ljava/lang/String;

    return-void
.end method
