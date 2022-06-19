.class public abstract Lcom/hiya/stingray/util/g0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/util/g0/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/os/Bundle;)Lcom/hiya/stingray/util/g0/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hiya/stingray/util/g0/c;->b(Landroid/os/Bundle;)Lcom/hiya/stingray/util/g0/c;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/os/Bundle;)Lcom/hiya/stingray/util/g0/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/g0/b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/util/g0/b;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public abstract c()Landroid/os/Bundle;
.end method
