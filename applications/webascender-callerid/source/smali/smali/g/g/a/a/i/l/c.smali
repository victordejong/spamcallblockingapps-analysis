.class public Lg/g/a/a/i/l/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private latitude:D
    .annotation runtime Lcom/google/gson/v/c;
        value = "lat"
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lcom/google/gson/v/c;
        value = "long"
    .end annotation
.end field


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lg/g/a/a/i/l/c;->latitude:D

    .line 3
    iput-wide p3, p0, Lg/g/a/a/i/l/c;->longitude:D

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/g/a/a/i/l/c;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/g/a/a/i/l/c;->longitude:D

    return-wide v0
.end method
