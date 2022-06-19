.class public Lg/g/a/a/i/l/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isoCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "isoCode"
    .end annotation
.end field

.field private value:D
    .annotation runtime Lcom/google/gson/v/c;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lg/g/a/a/i/l/l;->value:D

    .line 4
    iput-object p3, p0, Lg/g/a/a/i/l/l;->isoCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIsoCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/l;->isoCode:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/g/a/a/i/l/l;->value:D

    return-wide v0
.end method
