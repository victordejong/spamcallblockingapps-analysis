.class public Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;
.super Ljava/lang/AssertionError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/log/AssertionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TcDryAssertionError"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "Failed test assertion (non-fatal)"

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "."

    goto :goto_0

    :cond_0
    const-string v1, ": "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->access$700(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;-><init>(Ljava/lang/Object;)V

    return-void
.end method
