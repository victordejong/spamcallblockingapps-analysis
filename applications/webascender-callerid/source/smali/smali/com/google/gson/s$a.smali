.class final enum Lcom/google/gson/s$a;
.super Lcom/google/gson/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/gson/s;-><init>(Ljava/lang/String;ILcom/google/gson/s$a;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lcom/google/gson/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/p;

    invoke-direct {v0, p1}, Lcom/google/gson/p;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
