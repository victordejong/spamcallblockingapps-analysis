.class public final Lcom/hiya/stingray/t/i1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/t/i1/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/hiya/stingray/t/i1/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/h;

    invoke-direct {v0}, Lcom/hiya/stingray/t/i1/h;-><init>()V

    sput-object v0, Lcom/hiya/stingray/t/i1/h;->a:Lcom/hiya/stingray/t/i1/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hiya/stingray/t/i1/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/i1/h;->a:Lcom/hiya/stingray/t/i1/h;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/t/i1/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/g;

    invoke-direct {v0}, Lcom/hiya/stingray/t/i1/g;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/i1/h;->b()Lcom/hiya/stingray/t/i1/g;

    move-result-object v0

    return-object v0
.end method
