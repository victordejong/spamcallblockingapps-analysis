.class public Lcom/truecaller/messaging/transport/NullTransportInfo$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/transport/NullTransportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/messaging/transport/NullTransportInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/messaging/transport/NullTransportInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/messaging/transport/NullTransportInfo;-><init>(Lcom/truecaller/messaging/transport/NullTransportInfo$b;Lcom/truecaller/messaging/transport/NullTransportInfo$a;)V

    return-object v0
.end method
