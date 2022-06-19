.class public final Lg/g/a/a/i/l/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private unit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "unit"
    .end annotation
.end field

.field private value:D
    .annotation runtime Lcom/google/gson/v/c;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lg/g/a/a/i/l/n;->unit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getUnit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/n;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/g/a/a/i/l/n;->value:D

    return-wide v0
.end method

.method public final setUnit(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/n;->unit:Ljava/lang/String;

    return-void
.end method

.method public final setValue(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lg/g/a/a/i/l/n;->value:D

    return-void
.end method
