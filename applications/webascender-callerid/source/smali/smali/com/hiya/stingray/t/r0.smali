.class public abstract Lcom/hiya/stingray/t/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/r0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hiya/stingray/t/r0$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i$a;

    invoke-direct {v0}, Lcom/hiya/stingray/t/i$a;-><init>()V

    return-object v0
.end method

.method public static b()Lcom/hiya/stingray/t/r0$a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/r0;->a()Lcom/hiya/stingray/t/r0$a;

    move-result-object v0

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/r0$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/r0$a;

    .line 3
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/r0$a;->d(Ljava/lang/String;)Lcom/hiya/stingray/t/r0$a;

    sget-object v1, Lcom/hiya/stingray/t/q0;->OTHER:Lcom/hiya/stingray/t/q0;

    .line 4
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/r0$a;->b(Lcom/hiya/stingray/t/q0;)Lcom/hiya/stingray/t/r0$a;

    return-object v0
.end method


# virtual methods
.method public abstract c()Lcom/hiya/stingray/t/q0;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method
