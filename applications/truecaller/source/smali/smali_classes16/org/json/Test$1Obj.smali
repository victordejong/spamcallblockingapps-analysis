.class public Lorg/json/Test$1Obj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/json/JSONString;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/json/Test;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Obj"
.end annotation


# instance fields
.field public aBoolean:Z

.field public aNumber:D

.field public aString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/json/Test$1Obj;->aString:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lorg/json/Test$1Obj;->aNumber:D

    .line 4
    iput-boolean p4, p0, Lorg/json/Test$1Obj;->aBoolean:Z

    return-void
.end method


# virtual methods
.method public getBENT()Ljava/lang/String;
    .locals 1

    const-string v0, "All uppercase key"

    return-object v0
.end method

.method public getNumber()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/json/Test$1Obj;->aNumber:D

    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/json/Test$1Obj;->aString:Ljava/lang/String;

    return-object v0
.end method

.method public getX()Ljava/lang/String;
    .locals 1

    const-string v0, "x"

    return-object v0
.end method

.method public isBoolean()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/json/Test$1Obj;->aBoolean:Z

    return v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 3

    const-string v0, "{"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/json/Test$1Obj;->aString:Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/json/Test$1Obj;->aNumber:D

    invoke-static {v1, v2}, Lorg/json/JSONObject;->doubleToString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/json/Test$1Obj;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/Test$1Obj;->getNumber()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/Test$1Obj;->isBoolean()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/Test$1Obj;->getBENT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/Test$1Obj;->getX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
