.class public final Ln3/m0/s$b$c;
.super Ln3/m0/s$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/m0/s$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/m0/s$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Ln3/m0/s$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ln3/m0/s$b;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SUCCESS"

    return-object v0
.end method
