.class public final Lcom/hiya/stingray/t/i1/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/t/i1/m0;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/hiya/stingray/t/i1/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/n0;

    invoke-direct {v0}, Lcom/hiya/stingray/t/i1/n0;-><init>()V

    sput-object v0, Lcom/hiya/stingray/t/i1/n0;->a:Lcom/hiya/stingray/t/i1/n0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hiya/stingray/t/i1/n0;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/i1/n0;->a:Lcom/hiya/stingray/t/i1/n0;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/t/i1/m0;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/m0;

    invoke-direct {v0}, Lcom/hiya/stingray/t/i1/m0;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/i1/n0;->b()Lcom/hiya/stingray/t/i1/m0;

    move-result-object v0

    return-object v0
.end method
