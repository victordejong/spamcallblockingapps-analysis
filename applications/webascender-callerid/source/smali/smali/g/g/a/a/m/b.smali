.class public final Lg/g/a/a/m/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/m/b$a;
    }
.end annotation


# instance fields
.field private final a:Lg/g/a/a/m/a;
    .annotation runtime Lcom/google/gson/v/c;
        value = "callerIdSource"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lg/g/a/a/m/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/m/b;->a:Lg/g/a/a/m/a;

    return-void
.end method

.method public synthetic constructor <init>(Lg/g/a/a/m/a;Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lg/g/a/a/m/b;-><init>(Lg/g/a/a/m/a;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientSignal(callerIdSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/m/b;->a:Lg/g/a/a/m/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
