.class public final Lcom/hiya/stingray/t/i1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/t/i1/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/hiya/stingray/t/i1/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/l;

    invoke-direct {v0}, Lcom/hiya/stingray/t/i1/l;-><init>()V

    sput-object v0, Lcom/hiya/stingray/t/i1/l;->a:Lcom/hiya/stingray/t/i1/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hiya/stingray/t/i1/l;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/i1/l;->a:Lcom/hiya/stingray/t/i1/l;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/t/i1/k;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/k;

    invoke-direct {v0}, Lcom/hiya/stingray/t/i1/k;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/i1/l;->b()Lcom/hiya/stingray/t/i1/k;

    move-result-object v0

    return-object v0
.end method
