.class public final synthetic Lcom/hiya/stingray/manager/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# static fields
.field public static final synthetic f:Lcom/hiya/stingray/manager/z0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/z0;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/z0;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/z0;->f:Lcom/hiya/stingray/manager/z0;

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

    check-cast p1, Lcom/hiya/stingray/t/d0;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
