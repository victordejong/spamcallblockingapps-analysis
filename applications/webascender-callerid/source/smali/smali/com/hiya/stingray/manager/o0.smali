.class public final synthetic Lcom/hiya/stingray/manager/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/p;


# static fields
.field public static final synthetic f:Lcom/hiya/stingray/manager/o0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/o0;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/o0;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/o0;->f:Lcom/hiya/stingray/manager/o0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/hiya/stingray/manager/g2;->d(Ljava/util/List;)Z

    move-result p1

    return p1
.end method
