.class public final synthetic Lcom/hiya/stingray/q/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# static fields
.field public static final synthetic f:Lcom/hiya/stingray/q/b/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/q/b/i;

    invoke-direct {v0}, Lcom/hiya/stingray/q/b/i;-><init>()V

    sput-object v0, Lcom/hiya/stingray/q/b/i;->f:Lcom/hiya/stingray/q/b/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/hiya/stingray/q/c/e;

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/e;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
