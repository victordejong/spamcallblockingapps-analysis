.class public Lg/g/a/a/i/l/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field event:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "event"
    .end annotation
.end field

.field eventCreatedNanos:J
    .annotation runtime Lcom/google/gson/v/c;
        value = "eventCreatedNanoId"
    .end annotation
.end field

.field eventCreatedTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "eventCreatedTime"
    .end annotation
.end field

.field eventId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "eventId"
    .end annotation
.end field

.field eventSentNanos:J
    .annotation runtime Lcom/google/gson/v/c;
        value = "eventSentNanoId"
    .end annotation
.end field

.field metaData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "metadata"
    .end annotation
.end field

.field screen:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "screen"
    .end annotation
.end field

.field searchCoordinates:Lg/g/a/a/i/l/c;
    .annotation runtime Lcom/google/gson/v/c;
        value = "searchCoordinates"
    .end annotation
.end field

.field trigger:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "trigger"
    .end annotation
.end field

.field urlClicked:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "urlClicked"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/a/a/i/l/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/l/t;->eventId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lg/g/a/a/i/l/t;->eventCreatedTime:Ljava/lang/String;

    .line 4
    iput-wide p5, p0, Lg/g/a/a/i/l/t;->eventSentNanos:J

    .line 5
    iput-wide p3, p0, Lg/g/a/a/i/l/t;->eventCreatedNanos:J

    .line 6
    iput-object p7, p0, Lg/g/a/a/i/l/t;->event:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lg/g/a/a/i/l/t;->screen:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lg/g/a/a/i/l/t;->trigger:Ljava/lang/String;

    .line 9
    iput-object p10, p0, Lg/g/a/a/i/l/t;->metaData:Ljava/lang/String;

    .line 10
    iput-object p11, p0, Lg/g/a/a/i/l/t;->searchCoordinates:Lg/g/a/a/i/l/c;

    .line 11
    iput-object p12, p0, Lg/g/a/a/i/l/t;->urlClicked:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/t;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getEventCreatedNanos()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/g/a/a/i/l/t;->eventCreatedNanos:J

    return-wide v0
.end method

.method public getEventCreatedTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/t;->eventCreatedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/t;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSentNanos()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/g/a/a/i/l/t;->eventSentNanos:J

    return-wide v0
.end method

.method public getMetaData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/t;->metaData:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/t;->screen:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchCoordinates()Lg/g/a/a/i/l/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/t;->searchCoordinates:Lg/g/a/a/i/l/c;

    return-object v0
.end method

.method public getTrigger()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/t;->trigger:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlClicked()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/t;->urlClicked:Ljava/lang/String;

    return-object v0
.end method

.method public setEventSentTimeInNanoseconds(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lg/g/a/a/i/l/t;->eventSentNanos:J

    return-void
.end method
