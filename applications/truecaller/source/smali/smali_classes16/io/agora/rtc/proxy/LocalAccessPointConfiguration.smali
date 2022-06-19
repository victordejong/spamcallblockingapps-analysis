.class public Lio/agora/rtc/proxy/LocalAccessPointConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public domainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mode:I

.field public verifyDomainName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/proxy/LocalAccessPointConfiguration;->ipList:Ljava/util/ArrayList;

    .line 3
    iput-object v0, p0, Lio/agora/rtc/proxy/LocalAccessPointConfiguration;->domainList:Ljava/util/ArrayList;

    .line 4
    iput-object v0, p0, Lio/agora/rtc/proxy/LocalAccessPointConfiguration;->verifyDomainName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/agora/rtc/proxy/LocalAccessPointConfiguration;->mode:I

    return-void
.end method
