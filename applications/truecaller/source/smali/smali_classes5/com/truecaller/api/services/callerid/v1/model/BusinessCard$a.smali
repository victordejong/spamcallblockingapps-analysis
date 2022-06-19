.class public final Lcom/truecaller/api/services/callerid/v1/model/BusinessCard$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
        "Ljava/lang/Integer;",
        "Lcom/truecaller/api/services/callerid/v1/model/Badge;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/truecaller/api/services/callerid/v1/model/Badge;->forNumber(I)Lcom/truecaller/api/services/callerid/v1/model/Badge;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/truecaller/api/services/callerid/v1/model/Badge;->UNRECOGNIZED:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    :cond_0
    return-object p1
.end method
