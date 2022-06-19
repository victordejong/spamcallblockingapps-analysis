.class public final Lcom/truecaller/wizard/adschoices/AdsChoice$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/wizard/adschoices/AdsChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;",
        "Lcom/truecaller/wizard/adschoices/AdsChoiceOptOutStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/truecaller/wizard/adschoices/AdsChoice$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/wizard/adschoices/AdsChoice$d;

    invoke-direct {v0}, Lcom/truecaller/wizard/adschoices/AdsChoice$d;-><init>()V

    sput-object v0, Lcom/truecaller/wizard/adschoices/AdsChoice$d;->b:Lcom/truecaller/wizard/adschoices/AdsChoice$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
