.class public final synthetic Le/a/r/b/c;
.super Ls1/z/c/w;
.source "SourceFile"


# static fields
.field public static final h:Ls1/a/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/r/b/c;

    invoke-direct {v0}, Le/a/r/b/c;-><init>()V

    sput-object v0, Le/a/r/b/c;->h:Ls1/a/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-class v0, Le/a/r/b/d;

    const-string v1, "directMarketing"

    const-string v2, "getDirectMarketing(Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;)Lcom/truecaller/wizard/adschoices/AdsChoiceOptOutStatus;"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Ls1/z/c/w;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;

    const-string v0, "dm"

    .line 1
    invoke-static {p1, v0}, Le/a/r/b/d;->a(Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;Ljava/lang/String;)Lcom/truecaller/wizard/adschoices/AdsChoiceOptOutStatus;

    move-result-object p1

    return-object p1
.end method
