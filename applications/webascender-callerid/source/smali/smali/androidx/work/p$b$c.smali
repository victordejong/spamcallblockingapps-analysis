.class public final Landroidx/work/p$b$c;
.super Landroidx/work/p$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/p$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/work/p$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/work/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/p$b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SUCCESS"

    return-object v0
.end method
